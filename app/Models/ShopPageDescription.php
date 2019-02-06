<?php
#app/Models/ShopPageDescription.php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ShopPageDescription extends Model
{
    protected $primaryKey = null;
    public $timestamps    = false;
    public $table         = 'shop_page_description';
    protected $fillable   = ['lang_id', 'title', 'description', 'keyword', 'shop_page_id', 'content'];
}
