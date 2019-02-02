<?php
#app/Http/Controller/Modules/Cms/Cms.php
namespace App\Http\Controllers\Modules\Cms;

use App\Models\CmsNews;

class Cms extends \App\Http\Controllers\GeneralController
{

    public function __construct()
    {
        parent::__construct();

    }

/**
 * [news description]
 * @return [type] [description]
 */
    public function news()
    {
        return view($this->theme . '.cms_news',
            array(
                'title'       => trans('language.blog'),
                'description' => $this->configsGlobal['description'],
                'keyword'     => $this->configsGlobal['keyword'],
                'news'        => $this->news,
                'og_image'    => $this->logo,
            )
        );
    }

    public function newsDetail($name, $id)
    {
        $news_currently = CmsNews::find($id);
        if ($news_currently) {
            $title = ($news_currently) ? $news_currently->title : trans('language.not_found');
            return view($this->theme . '.cms_news_detail',
                array(
                    'title'          => $title,
                    'news_currently' => $news_currently,
                    'description'    => $this->configsGlobal['description'],
                    'keyword'        => $this->configsGlobal['keyword'],
                    'blogs'          => (new CmsNews)->getItemsNews($limit = 4),
                    'og_image'       => url($this->path_file . '/' . $news_currently->image),
                )
            );
        } else {
            return view($this->theme . '.notfound',
                array(
                    'title'       => trans('language.not_found'),
                    'description' => '',
                    'keyword'     => $this->configsGlobal['keyword'],
                )
            );
        }

    }
}
