<?php
#app\Http\Controller\Extension\Shipping\ShippingStandard.php
namespace App\Http\Controllers\Extensions\Shipping;

use App\Models\Config;
use App\Models\Extension\Shipping\ShippingStandard as ShippingStandardModel;

class ShippingStandard extends \App\Http\Controllers\Controller
{
    protected $configKey  = 'ShippingStandard';
    protected $configCode = 'Shipping';
    public $title;
    const ALLOW  = 1;
    const DENIED = 0;

    public function __construct()
    {
        $this->title = trans('Extensions/' . $this->configCode . '/' . $this->configKey . '.title');
    }

    public function getData()
    {
        return $this->processData();
    }

    public function processData()
    {
        $subtotal = \Cart::subtotal();
        $shipping = ShippingStandardModel::first();
        if ($subtotal >= $shipping->shipping_free) {
            $arrShipping = [
                'code'       => $this->configKey,
                'title'      => $this->title,
                'value'      => 0,
                'permission' => self::ALLOW,
            ];
        } else {
            $arrShipping = [
                'code'       => $this->configKey,
                'title'      => $this->title,
                'value'      => $shipping->fee,
                'permission' => self::ALLOW,
            ];

        }
        return $arrShipping;
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
                    'value'  => 1, //1- Enable extension; 0 - Disable
                    'detail' => $this->title,
                ]
            );
            if (!$process) {
                $return = ['error' => 1, 'msg' => 'Error when install'];
            } else {
                $return = (new ShippingStandardModel)->installExtension();
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
        (new ShippingStandardModel)->uninstallExtension();
        return $return;
    }
    public function enable()
    {
        $return  = ['error' => 0, 'msg' => ''];
        $process = (new Config)->where('key', $this->configKey)->update(['value' => 1]);
        if (!$process) {
            $return = ['error' => 1, 'msg' => 'Error enable'];
        }
        return $return;
    }
    public function disable()
    {
        $return  = ['error' => 0, 'msg' => ''];
        $process = (new Config)->where('key', $this->configKey)->update(['value' => 0]);
        if (!$process) {
            $return = ['error' => 1, 'msg' => 'Error disable'];
        }
        return $return;
    }

    public function config()
    {
        return view('admin.Extensions.' . $this->configCode . '.' . $this->configKey)->with(
            [
                'group' => $this->configCode,
                'key'   => $this->configKey,
                'title' => $this->title,
                'data'  => ShippingStandardModel::first(),
            ])->render();
    }

    public function process($data)
    {
        $return  = ['error' => 0, 'msg' => ''];
        $process = ShippingStandardModel::where('id', $data['pk'])->update([$data['name'] => $data['value']]);
        if (!$process) {
            $return = ['error' => 1, 'msg' => 'Error update'];
        }
        return $return;
    }

}
