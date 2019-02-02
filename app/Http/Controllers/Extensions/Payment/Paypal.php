<?php
#app\Http\Controller\Extension\Payment\Paypal.php
namespace App\Http\Controllers\Extensions\Payment;

use App\Http\Controllers\Controller;
use App\Http\Controllers\ShopCart;
use App\Models\Config;
use App\Models\Extension\Payment\Paypal as PaypalModel;
use App\Models\ShopOrder;
use App\Models\ShopOrderHistory;
use App\Models\ShopOrderStatus;
use App\Providers\Extensions\Payment\PayPalService as PayPalSvc;
use Illuminate\Http\Request;

class Paypal extends \App\Http\Controllers\Controller
{
    protected $configKey  = 'Paypal';
    protected $configCode = 'Payment';
    public $title;
    public $image;
    const ALLOW  = 1;
    const DENIED = 0;
    const ON     = 1;
    const OFF    = 0;
    private $paypalSvc;

    public function __construct()
    {
        $this->title     = trans('Extensions/' . $this->configCode . '/' . $this->configKey . '.title');
        $this->image     = 'images/Extensions/' . $this->configCode . '/' . $this->configKey . '.png';
        $this->paypalSvc = new PayPalSvc;
    }

    public function getData()
    {
        return $this->processData();
    }

    public function processData()
    {
        $arrPayment = [
            'title'      => $this->title,
            'code'       => $this->configKey,
            'image'      => $this->image,
            'permission' => self::ALLOW,
        ];
        return $arrPayment;
    }

    public function install()
    {
        $return = ['error' => 0, 'msg' => ''];
        $check  = Config::where('key', $this->configKey)->first();
        if ($check) {
            $return = ['error' => 1, 'msg' => 'Module exist'];
        } else {
            $process = Config::insert(
                [
                    'code'   => $this->configCode,
                    'key'    => $this->configKey,
                    'sort'   => 0, // Sort extensions in group
                    'value'  => self::ON, //1- Enable extension; 0 - Disable
                    'detail' => 'Extensions/' . $this->configCode . '/' . $this->configKey . '.title',
                ]
            );
            if (!$process) {
                $return = ['error' => 1, 'msg' => 'Error when install'];
            } else {
                $return = (new PaypalModel)->installExtension();
            }
        }
        return $return;
    }

    public function uninstall()
    {
        $return  = ['error' => 0, 'msg' => ''];
        $process = (new Config)->where('key', $this->configKey)->delete();
        if (!$process) {
            $return = ['error' => 1, 'msg' => 'Error when uninstall'];
        }
        (new PaypalModel)->uninstallExtension();
        return $return;
    }
    public function enable()
    {
        $return  = ['error' => 0, 'msg' => ''];
        $process = (new Config)->where('key', $this->configKey)->update(['value' => self::ON]);
        if (!$process) {
            $return = ['error' => 1, 'msg' => 'Error enable'];
        }
        return $return;
    }
    public function disable()
    {
        $return  = ['error' => 0, 'msg' => ''];
        $process = (new Config)->where('key', $this->configKey)->update(['value' => self::OFF]);
        if (!$process) {
            $return = ['error' => 1, 'msg' => 'Error disable'];
        }
        return $return;
    }

    public function config()
    {
        return view('admin.Extensions.' . $this->configCode . '.' . $this->configKey)->with(
            [
                'group'           => $this->configCode,
                'key'             => $this->configKey,
                'title'           => $this->title,
                'jsonStatusOrder' => json_encode(ShopOrderStatus::mapValue()),
                'data'            => PaypalModel::first(),
            ])->render();
    }

    public function processConfig($data)
    {
        $return  = ['error' => 0, 'msg' => ''];
        $process = PaypalModel::where('id', $data['pk'])->update([$data['name'] => $data['value']]);
        if (!$process) {
            $return = ['error' => 1, 'msg' => 'Error update'];
        }
        return $return;
    }

//===========process===
    public function index(Request $request)
    {
        $data     = session('data_payment');
        $order_id = $data['order_id'];
        $currency = $data['currency'];
        unset($data['order_id']);
        unset($data['currency']);
        session()->forget('data_payment');
        $transactionDescription = "From website";
        $paypalCheckoutUrl      = $this->paypalSvc
            ->setCurrency($currency)
            ->setReturnUrl(route('returnPaypal', ['order_id' => $order_id]))
            ->setCancelUrl(route('cart'))
            ->setItem($data)
        // ->setItem($data[0])
        // ->setItem($data[1])
            ->createPayment($transactionDescription);
        if ($paypalCheckoutUrl) {
            return redirect($paypalCheckoutUrl);
        } else {
            $paypalConfigs = PaypalModel::first();
            ShopOrder::find($order_id)->update(['status' => $paypalConfigs['paypal_order_status_faild']]);
            return redirect()->route('cart');

        }
    }

    public function getReturn($order_id)
    {
        if (!empty(session('paypal_payment_id'))) {
            $paymentStatus = $this->paypalSvc->getPaymentStatus();
            // dd($paymentStatus);
            if ($paymentStatus) {
                $paypalConfigs = PaypalModel::first();
                ShopOrder::find($order_id)->update(['transaction' => $paymentStatus->id, 'status' => $paypalConfigs['paypal_order_status_success']]);
                //Add history
                $dataHistory = [
                    'order_id' => $order_id,
                    'content'  => 'Transaction ' . $paymentStatus->id,
                    'user_id'  => empty(\Auth::user()->id) ? 0 : \Auth::user()->id,
                    'add_date' => date('Y-m-d H:i:s'),
                ];
                ShopOrderHistory::insert($dataHistory);
                return (new ShopCart)->completeOrder($order_id);
            } else {
                return redirect()->route('cart')->with(['error' => 'Have an error paypal']);
            }

        } else {
            return redirect()->route('cart')->with(['error' => 'Can\'t get payment id']);
        }

    }

    public function paymentList()
    {
        $limit  = 10;
        $offset = 0;

        $paymentList = $this->paypalSvc->getPaymentList($limit, $offset);

        dd($paymentList);
    }

    public function paymentDetail($paymentId)
    {
        $paymentDetails = $this->paypalSvc->getPaymentDetails($paymentId);

        dd($paymentDetails);
    }
}
