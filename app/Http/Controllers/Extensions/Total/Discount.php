<?php
#app\Http\Controller\Extension\Total\Discount.php
namespace App\Http\Controllers\Extensions\Total;

use App\Models\Config;
use App\Models\Extension\Total\Discount as DiscountModel;
use App\Models\ShopOrderTotal;

class Discount extends \App\Http\Controllers\Controller
{
    protected $configKey  = 'Discount';
    protected $configCode = 'Total';
    public $title;
    public $image;
    private $length;
    private $separator;
    private $suffix;
    private $prefix;
    private $mask;
    private $codes = [];
    const ALLOW    = 1;
    const DENIED   = 0;
    public function __construct()
    {
        $this->title     = trans('Extensions/' . $this->configCode . '/' . $this->configKey . '.title');
        $this->image     = 'images/Extensions/' . $this->configCode . '/' . $this->configKey . '.png';
        $this->separator = false;
        $this->suffix    = false;
        $this->prefix    = false;
        $this->length    = 8;
        $this->mask      = '****-****';

    }

    public function getData()
    {
        return $this->processData();
    }

    public function processData()
    {
        $arrDiscount = [
            'title'      => $this->title,
            'code'       => $this->configKey,
            'image'      => $this->image,
            'permission' => (auth()->user()) ? self::ALLOW : self::DENIED,
        ];

        $configs            = Config::pluck('value', 'code')->all();
        $DiscountAllowGuest = empty($configs['coupon_allow_guest']) ? false : true;
        $Discount           = session('Discount');
        $check              = json_decode($this->check($Discount, $uID = null, $DiscountAllowGuest), true);
        if (empty($Discount) || $check['error'] == 1) {
            $arrDiscount = array(
                'title'      => $this->title,
                'code'       => $this->configKey,
                'image'      => $this->image,
                'permission' => (auth()->user()) ? self::ALLOW : self::DENIED,
                'value'      => 0,
            );
        } else {
            $arrType = [
                '0' => 'Cash',
                '1' => 'Point',
                '2' => '%',
            ];
            $subtotal    = Cart::subtotal();
            $value       = ($check['content']['type'] == '2') ? floor($subtotal * $check['content']['reward'] / 100) : $check['content']['reward'];
            $arrDiscount = array(
                'title'      => '<b>' . $this->title . ':</b> ' . $Discount . '',
                'code'       => $this->configKey,
                'image'      => $this->image,
                'permission' => (auth()->user()) ? self::ALLOW : self::DENIED,
                'value'      => ($value > $subtotal) ? -$subtotal : -$value,
            );
        }
        return $arrDiscount;
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
                    'sort'   => 0,
                    'value'  => 1, //Enable extension
                    'detail' => $this->title,
                ]
            );
            if (!$process) {
                $return = ['error' => 1, 'msg' => 'Error when install'];
            } else {
                $return = (new DiscountModel)->installExtension();
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
        (new DiscountModel)->uninstallExtension();
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
        return redirect()->route('configDiscount.index');
    }
    public function process($data)
    {
//
    }

//==Process discount==
    public function output($amount = 1)
    {
        $collection = [];

        for ($i = 1; $i <= $amount; $i++) {
            $random = $this->generate();

            while (!$this->validateDiscount($collection, $random)) {
                $random = $this->generate();
            }

            array_push($collection, $random);
        }

        return $collection;
    }

    /**
     * Save promocodes into database
     * Successful insert returns generated promocodes
     * Fail will return empty collection.
     *
     * @param int $amount
     * @param null $reward
     * @param array $data
     * @param int|null $expires_in
     *
     * @return \Illuminate\Support\Collection
     */
    public function create($amount = 1, $reward = 0, $number_uses = 1, $type = null, array $data = [], $expires_in = null)
    {
        $records = [];

        foreach ($this->output($amount) as $code) {
            $records[] = [
                'code'        => $code,
                'reward'      => $reward,
                'data'        => json_encode($data),
                'expires_at'  => $expires_in ? Carbon::now()->addDays($expires_in) : null,
                'number_uses' => $number_uses,
                'type'        => $type,
                'status'      => 1,
            ];
        }

        if (DiscountModel::insert($records)) {
            return collect($records)->map(function ($record) {
                $record['data'] = json_decode($record['data'], true);
                return $record;
            });
        }

        return collect([]);
    }

/**
 * [check description]
 * @param  [type]  $code       [description]
 * @param  [type]  $uID        [description]
 * @param  boolean $couponAllowGuest [description]
 * @return [type]              [description]
 */
    public function check($code, $uID = null, $couponAllowGuest = false)
    {
        if ($uID != null) {
            //if have value customer id
            if (!(int) $uID) {
                return json_encode(['error' => 1, 'msg' => "error_uID_input"]);
            } else {
                $uID = (int) $uID;
            }
        } else {
            //Check user  login
            if (!auth()->check()) {
                if (!$couponAllowGuest) {
                    return json_encode(['error' => 1, 'msg' => "error_login"]);
                } else {
                    $uID = 0;
                }
            } else {
                //user id current
                $uID = auth()->user()->id;
            }
        }

        $promocode = DiscountModel::byCode($code)->first();

        if ($promocode === null) {
            return json_encode(['error' => 1, 'msg' => "error_code_not_exist"]);
        }

        if ($promocode->number_uses == 0 || $promocode->number_uses <= $promocode->used) {
            return json_encode(['error' => 1, 'msg' => "error_code_cant_use"]);
        }

        if ($promocode->status == 0 || $promocode->isExpired()) {
            return json_encode(['error' => 1, 'msg' => "error_code_expired_disabled"]);
        }
        if (!$couponAllowGuest) {
            $arrUsers = [];
            foreach ($promocode->users as $value) {
                $arrUsers[] = $value->pivot->user_id;
            }
            if (in_array($uID, $arrUsers)) {
                return json_encode(['error' => 1, 'msg' => "error_user_used"]);
            }
        }

        return json_encode(['error' => 0, 'content' => $promocode]);
    }

/**
 * [apply description]
 * @param  [type] $code [description]
 * @param  [type] $uID  [description]
 * @param  [type] $msg  [description]
 * @return [type]       [description]
 */
    public function apply($code, $uID = null, $msg = null, $couponAllowGuest = false)
    {

        if ($uID != null) {
            //if have value customer id
            if (!$uID) {
                return json_encode(['error' => 1, 'msg' => "error_uID_input"]);
            } else {
                $uID = (int) $uID;
            }
        } else {
            //Check user  login
            if (!auth()->check()) {
                if (!$couponAllowGuest) {
                    return json_encode(['error' => 1, 'msg' => "error_login"]);
                } else {
                    $uID = 0;
                }
            }{
                //user id current
                $uID = auth()->user()->id;
            }
        }

        //check code valid
        $check = json_decode($this->check($code, $uID), true);

        if ($check['error'] === 0) {
            $promocode = DiscountModel::byCode($code)->first();

            //users used code
            $arrUsers = $promocode->users()->pluck('id')->all();
            //if user not use
            if (!in_array($uID, $arrUsers)) {
                try {
                    $promocode->users()->attach($uID, [
                        'used_at' => Carbon::now(),
                        'log'     => $msg,
                    ]);
                    // increment used
                    $promocode->used += 1;
                    $promocode->save();
                    return json_encode(['error' => 0, 'content' => $promocode->load('users')]);
                } catch (\Exception $e) {
                    return json_encode(['error' => 1, 'msg' => $e->getMessage()]);
                }

            } else {
                return json_encode(['error' => 1, 'msg' => "error_user_used"]);
            }
        } else {
            return $this->check($code);
        }

    }

/**
 * [redeem description]
 * @param  [type] $code [description]
 * @param  [type] $uID  [description]
 * @param  [type] $msg  [description]
 * @return [type]       [description]
 */
    public function redeem($code, $uID = null, $msg = null)
    {
        return $this->apply($code, $uID, $msg);
    }

/**
 * [disable description]
 * @param  [type] $code [description]
 * @return [type]       [description]
 */
    public function disableDiscount($code)
    {
        $promocode = DiscountModel::byCode($code)->first();

        if ($promocode === null) {
            return json_encode(['error' => 1, 'msg' => "error_code_not_exist"]);
        }
        $promocode->status = 0;
        $promocode->save();
        return json_encode(['error' => 0, 'content' => $promocode->save()]);
    }

/**
 * [enable description]
 * @param  [type] $code [description]
 * @return [type]       [description]
 */
    public function enableDiscount($code)
    {
        $promocode = DiscountModel::byCode($code)->first();

        if ($promocode === null) {
            return json_encode(['error' => 1, 'msg' => "error_code_not_exist"]);
        }
        $promocode->status = 1;
        $promocode->save();
        return json_encode(['error' => 0, 'content' => $promocode->save()]);
    }

    /**
     * Here will be generated single code using your parameters from config.
     *
     * @return string
     */
    public function generate()
    {
        $characters = '23456789ABCDEFGHJKLMNPQRSTUVWXYZ';
        $promocode  = '';
        $random     = [];

        for ($i = 1; $i <= $this->length; $i++) {
            $character = $characters[rand(0, strlen($characters) - 1)];
            $random[]  = $character;
        }

        shuffle($random);
        $length = count($random);

        $promocode .= $this->getPrefix();

        for ($i = 0; $i < $length; $i++) {
            $this->mask = preg_replace('/\*/', $random[$i], $this->mask, 1);
        }

        $promocode .= $this->mask;
        $promocode .= $this->getSuffix();

        return $promocode;
    }

    /**
     * Generate prefix with separator for promocode.
     *
     * @return string
     */
    public function getPrefix()
    {

        return (bool) $this->prefix ? $this->prefix . $this->separator : '';
    }

    /**
     * Generate suffix with separator for promocode.
     *
     * @return string
     */
    public function getSuffix()
    {
        return (bool) $this->suffix ? $this->separator . $this->suffix : '';
    }

    /**
     * Your code will be validateDiscountd to be unique for one request.
     *
     * @param $collection
     * @param $new
     *
     * @return bool
     */
    public function validateDiscount($collection, $new)
    {
        $this->codes = DiscountModel::pluck('code')->toArray();
        return !in_array($new, array_merge($collection, $this->codes));
    }

/**
 * [useDiscount description]
 * @return [type]           [description]
 */
    public function useDiscount()
    {
        $html   = '';
        $code   = request('code');
        $action = request('action');
        if ($action === 'remove') {
            session()->forget('coupon'); //destroy coupon
            $objects   = array();
            $objects[] = (new ShopOrderTotal)->getShipping();
            $objects[] = (new ShopOrderTotal)->getDiscount();
            $objects[] = (new ShopOrderTotal)->getReceived();
            $dataTotal = ShopOrderTotal::processDataTotal($objects);
            foreach ($dataTotal as $key => $element) {
                if ($element['value'] != 0) {
                    $html .= "<tr class='showTotal'>
                         <th>" . $element['title'] . "</th>
                        <td style='text-align: right' id='" . $element['code'] . "'>" . number_format($element['value']) . "</td>
                    </tr>";
                }

            }
            return json_encode(['html' => $html]);
        }
        $couponAllowGuest = empty($this->configs['coupon_allow_guest']) ? false : true;
        $check            = json_decode($this->check($code, $uID = null, $couponAllowGuest), true);
        if ($check['error'] == 1) {
            $error = 1;
            if ($check['msg'] == 'error_code_not_exist') {
                $msg = trans('language.promotion.process.invalid');
            } elseif ($check['msg'] == 'error_code_cant_use') {
                $msg = trans('language.promotion.process.over');
            } elseif ($check['msg'] == 'error_code_expired_disabled') {
                $msg = trans('language.promotion.process.expire');
            } elseif ($check['msg'] == 'error_user_used') {
                $msg = trans('language.promotion.process.used');
            } elseif ($check['msg'] == 'error_uID_input') {
                $msg = trans('language.promotion.process.user_id_invalid');
            } elseif ($check['msg'] == 'error_login') {
                $msg = trans('language.promotion.process.must_login');
            } else {
                $msg = trans('language.promotion.process.undefined');
            }

        } else {
            $content = $check['content'];
            if ($content['type'] === 1) {
                //Point use in my page
                $error = 1;
                $msg   = trans('language.promotion.process.not_allow');
            } else {
                $arrType = [
                    '0' => trans('language.promotion.cash'),
                    '1' => trans('language.promotion.point'),
                    '2' => trans('language.promotion.%'),
                ];
                $error = 0;
                $msg   = trans('language.promotion.process.completed');
                session(['coupon' => $code]);

                $objects   = array();
                $objects[] = (new ShopOrderTotal)->getShipping();
                $objects[] = (new ShopOrderTotal)->getDiscount();
                $objects[] = (new ShopOrderTotal)->getReceived();
                $dataTotal = ShopOrderTotal::processDataTotal($objects);
                foreach ($dataTotal as $key => $element) {
                    if ($element['value'] != 0) {
                        if ($element['code'] == 'total') {
                            $html .= "<tr class='showTotal'  style='background:#f5f3f3;font-weight: bold;'>";
                        } else {
                            $html .= "<tr class='showTotal'>";
                        }

                        $html .= "<th>" . $element['title'] . "</th>
                        <td style='text-align: right' id='" . $element['code'] . "'>" . number_format($element['value']) . "</td>
                    </tr>";
                    }

                }
            }

        }
        return json_encode(['error' => $error, 'msg' => $msg, 'html' => $html]);

    }
}
