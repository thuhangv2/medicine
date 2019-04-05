<?php
#app/Models/ShopProductImage.php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ShopProductImage extends Model
{
    public $timestamps  = false;
    public $table       = 'shop_product_image';
    protected $fillable = ['id', 'image', 'product_id', 'status'];
    public function product()
    {
        return $this->belongsTo(ShopProduct::class, 'product_id', 'id');
    }

    /**
     * [getThumb description]
     * @return [type] [description]
     */
    public function getThumb()
    {

        if (!file_exists(SITE_PATH_FILE . '/thumb/' . $this->image)) {
            return SITE_PATH_FILE . '/' . $this->image;
        } else {
            return SITE_PATH_FILE . '/thumb/' . $this->image;
        }
    }

/**
 * [getImage description]
 * @return [type] [description]
 */
    public function getImage()
    {

        return SITE_PATH_FILE . '/' . $this->image;

    }
}
