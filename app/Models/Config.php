<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Config extends Model
{
    public $timestamps = false;
    public $table      = 'config';

    public static function getExtensionsShipping($all = null)
    {
        $return = self::where('code', 'module_shipping');
        if (!$all) {
            $return = $return->where('value', 1);
        }
        $return = $return->orderBy('sort', 'asc')
            ->get()->keyBy('key');
        return $return;
    }
    public static function getExtensionsPayment($all = null)
    {
        $return = self::where('code', 'module_payment');
        if (!$all) {
            $return = $return->where('value', 1);
        }
        $return = $return->orderBy('sort', 'asc')
            ->get()->keyBy('key');
        return $return;
    }
}
