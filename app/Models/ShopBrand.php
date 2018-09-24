<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Scart;

class ShopBrand extends Model
{
    public $timestamps = false;
    public $table      = 'shop_brand';

    public function products()
    {
        return $this->hasMany('App\Models\ShopProduct', 'brand_id', 'id');
    }
    public static function getBrands()
    {
        return self::where('status', 1)->orderBy('id', 'desc')->orderBy('sort', 'desc')->get();
    }

    /**
     * [getUrl description]
     * @return [type] [description]
     */
    public function getUrl()
    {
        return url('brand/' . Scart::str_to_url($this->name) . '_' . $this->id . '.html');
    }
}
