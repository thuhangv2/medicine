<?php
#app\Http\Controller\Extension\Shipping\ShippingStandard.php
namespace App\Http\Controllers\Extensions\Shipping;

use App\Models\Config;
use App\Models\Extension\Shipping\ShippingStandard as ShippingStandardModel;

class ShippingStandard extends \App\Http\Controllers\Controller
{
    protected $configKey  = 'ShippingStandard';
    protected $configCode = 'module_shipping';
    public $title;
    const POSITION_IN_MODULE = 10;

    public function __construct()
    {
        $this->title = trans('Extensions/Shipping/' . $this->configKey . '.title');

    }

    public function getModule()
    {
        return $this->processModule();
    }

    public function processModule()
    {
        $subtotal = \Cart::subtotal();
        $shipping = ShippingStandardModel::find(1);
        if ($subtotal >= $shipping->free) {
            $arrShipping = [
                'code'  => $this->configKey,
                'title' => $this->title,
                'value' => 0,
                'sort'  => self::POSITION_IN_MODULE,
            ];
        } else {
            $arrShipping = [
                'code'  => $this->configKey,
                'title' => $this->title,
                'value' => $shipping->value,
                'sort'  => self::POSITION_IN_MODULE,
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
                    'sort'   => 0,
                    'value'  => 1, //Enable extension
                    'detail' => 'Extensions/Shipping/' . $this->configKey . '.title',
                ]
            );
            if (!$process) {
                $return = ['error' => 1, 'msg' => 'Error when install'];
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
}
