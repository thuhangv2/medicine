<?php
#app/Models/ShopPage.php
namespace App\Models;

use App\Models\Language;
use App\Models\ShopPageDescription;
use Illuminate\Database\Eloquent\Model;

class ShopPage extends Model
{
    public $timestamps = false;
    public $table      = 'shop_page';
    protected $appends = [
        'title',
        'keyword',
        'description',
        'content',
    ];
    public function local()
    {
        $lang = Language::getArrayLanguages();
        return ShopPageDescription::where('page_id', $this->id)
            ->where('lang_id', $lang[app()->getLocale()])
            ->first();
    }

    //Fields language
    public function getTitle()
    {
        return $this->local()->title;
    }
    public function getKeyword()
    {
        return $this->local()->keyword;
    }
    public function getDescription()
    {
        return $this->local()->description;
    }
    public function getContent()
    {
        return $this->local()->content;
    }

    public function getUrl()
    {
        return route('pages', ['name' => $this->uniquekey]);
    }

//Attributes
    public function getTitleAttribute()
    {
        return $this->getTitle();
    }
    public function getKeywordAttribute()
    {
        return $this->getKeyword();

    }
    public function getDescriptionAttribute()
    {
        return $this->getDescription();

    }

    public function getContentAttribute()
    {
        return $this->getContent();

    }

}
