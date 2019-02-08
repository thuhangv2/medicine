<?php
#app/Models/Modules/Cms/CmsCategoryDescription.php
namespace App\Models\Modules\Cms;

use Illuminate\Database\Eloquent\Model;

class CmsCategoryDescription extends Model
{
    protected $primaryKey = null;
    public $timestamps    = false;
    public $table         = 'cms_category_description';
    protected $fillable   = ['lang_id', 'title', 'description', 'keyword', 'cms_category_id'];
}
