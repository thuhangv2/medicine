<?php
#app/Modules/Cms/Models/CmsNews.php
namespace App\Modules\Cms\Models;

use App\Modules\Cms\Models\CmsNewsDescription;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CmsNews extends Model
{
    public $table = 'cms_news';
    protected $guarded = [];
    protected $appends = [
        'title',
        'keyword',
        'description',
        'content',
    ];
    public $lang = 'en';
    public function __construct()
    {
        parent::__construct();
        $this->lang = app()->getLocale();
    }
    public function descriptions()
    {
        return $this->hasMany(CmsNewsDescription::class, 'cms_news_id', 'id');
    }
    public function getItemsNews($limit = null, $opt = null)
    {
        $query = (new CmsNews)->where('status', 1)->sort();
        if (!(int) $limit) {
            return $query->get();
        } else
        if ($opt == 'paginate') {
            return $query->paginate((int) $limit);
        } else {
            return $query->limit($limit)->get();
        }

    }
/*
Get thumb
 */
    public function getThumb()
    {
        return sc_image_get_path_thumb($this->image);
    }

/*
Get image
 */
    public function getImage()
    {
        return sc_image_get_path($this->image);

    }
/**
 * [getUrl description]
 * @return [type] [description]
 */
    public function getUrl()
    {
        return route('newsDetail', ['name' => sc_word_format_url(empty($this->title) ? 'no-title' : $this->title), 'id' => $this->id]);
    }

    //Fields language
    public function getTitle()
    {
        return $this->processDescriptions()['title'] ?? '';
    }
    public function getKeyword()
    {
        return $this->processDescriptions()['keyword'] ?? '';
    }
    public function getDescription()
    {
        return $this->processDescriptions()['description'] ?? '';
    }
    public function getContent()
    {
        return $this->processDescriptions()['content'] ?? '';
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
//Scort
    public function scopeSort($query, $column = null)
    {
        $column = $column ?? 'sort';
        return $query->orderBy($column, 'asc')->orderBy('id', 'desc');
    }

    public function processDescriptions()
    {
        return $this->descriptions->keyBy('lang')[$this->lang] ?? [];
    }

//=========================

    public function uninstallExtension()
    {
        if (Schema::hasTable($this->table)) {
            Schema::drop($this->table);
        }
    }

    public function installExtension()
    {
        $return = ['error' => 0, 'msg' => 'Install modules success'];
        if (!Schema::hasTable($this->table)) {
            try {
                Schema::create($this->table, function (Blueprint $table) {
                    $table->increments('id');
                    $table->string('image', 200)->nullable();
                    $table->tinyInteger('sort')->default(0);
                    $table->tinyInteger('status')->default(0);
                    $table->timestamp('created_at')->nullable();
                    $table->timestamp('updated_at')->nullable();
                });
            } catch (\Exception $e) {
                $return = ['error' => 1, 'msg' => $e->getMessage()];
            }
        } else {
            $return = ['error' => 1, 'msg' => 'Table ' . $this->table . ' exist!'];
        }
        return $return;
    }

}
