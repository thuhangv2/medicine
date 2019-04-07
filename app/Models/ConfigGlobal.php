<?php
#app/Models/ConfigGlobal.php
namespace App\Models;

use App\Models\ConfigGlobalDescription;
use App\Models\Language;
use Illuminate\Database\Eloquent\Model;

class ConfigGlobal extends Model
{
    public $timestamps  = false;
    public $table       = 'config_global';
    protected $fillable = ['locale', 'template'];
    protected $appends  = [
        'title',
        'keyword',
        'description',
    ];
    private static $local;
    public function local()
    {
        if (self::$local !== null) {
            return self::$local;
        }
        $lang        = Language::getArrayLanguages();
        self::$local = ConfigGlobalDescription::where('config_id', $this->id)
            ->where('lang_id', $lang[app()->getLocale()])
            ->first();
        return self::$local;

    }
    //Fields language
    public function getTitle()
    {
        return $this->local()->title;
    }
    public function getDescription()
    {
        return $this->local()->description;
    }
    public function getKeyword()
    {
        return $this->local()->keyword;
    }
    //Get Attributes
    public function getTitleAttribute()
    {
        return $this->getTitle();
    }
    public function getDescriptionAttribute()
    {
        return $this->getDescription();
    }
    public function getKeywordAttribute()
    {
        return $this->getKeyword();
    }
}
