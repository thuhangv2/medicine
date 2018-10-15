<?php
#app/Models/CmsCategoryDescription.php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CmsCategoryDescription extends Model
{
    protected $primaryKey = null;
    public $timestamps    = false;
    public $table         = 'cms_category_description';
    protected $fillable   = ['lang_id', 'name', 'description', 'keyword', 'shop_category_id'];
}
