<?php
#app/Models/ShopVendor.php
namespace App\Models;

use Helper;
use Illuminate\Database\Eloquent\Model;

class ShopVendor extends Model
{
    public $timestamps = false;
    public $table      = 'shop_vendor';

    public function products()
    {
        return $this->hasMany(ShopProduct::class, 'vendor_id', 'id');
    }
    /**
     * [getVendor description]
     * @param  [type] $sortBy    [description]
     * @param  string $sortOrder [description]
     * @return [type]            [description]
     */
    public static function getVendor($sortBy = null, $sortOrder = 'asc')
    {
        return self::where('status', 1)->sort($sortBy, $sortOrder)->get();
    }

    /**
     * [getUrl description]
     * @return [type] [description]
     */
    public function getUrl()
    {
        return route('vendor', ['name' => Helper::strToUrl($this->name), 'id' => $this->id]);
    }

    /**
     * [getImage description]
     * @return [type] [description]
     */
    public function getImage()
    {
        $path_file = config('filesystems.disks.path_file', '');
        return $path_file . '/' . $this->image;

    }

//Scort
    public function scopeSort($query, $sortBy = null, $sortOrder = 'asc')
    {
        $sortBy = $sortBy ?? 'sort';
        return $query->orderBy($sortBy, $sortOrder)->orderBy('id', 'desc');
    }
}
