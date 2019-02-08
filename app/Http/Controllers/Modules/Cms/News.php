<?php
#app/Http/Controller/Modules/Cms/News.php
namespace App\Http\Controllers\Modules\Cms;

use App\Models\Config;
use App\Models\Modules\Cms\CmsNews as CmsNewsModel;
use App\Models\Modules\Cms\CmsNewsDescription as CmsNewsDescriptionModel;

class News extends \App\Http\Controllers\GeneralController
{
    protected $configKey  = 'News';
    protected $configCode = 'Cms';
    public $title;
    const ON  = 1;
    const OFF = 0;
    public function __construct()
    {
        parent::__construct();
        $this->title = trans('Modules/' . $this->configCode . '/' . $this->configKey . '.title');

    }
    public function getData()
    {
        return $this->processData();
    }

    public function processData()
    {
        $arrPayment = [
            'title' => $this->title,
            'code'  => $this->configKey,
        ];
        return $arrPayment;
    }

    public function install()
    {
        $return = ['error' => 0, 'msg' => ''];
        $check  = Config::where('key', $this->configKey)->first();
        if ($check) {
            $return = ['error' => 1, 'msg' => 'Module exist'];
        } else {
            $process = Config::insert(
                [
                    'code'   => $this->configCode,
                    'key'    => $this->configKey,
                    'value'  => self::ON, //1- Enable extension; 0 - Disable
                    'detail' => 'Modules/' . $this->configCode . '/' . $this->configKey . '.title',
                ]
            );
            if (!$process) {
                $return = ['error' => 1, 'msg' => 'Error when install'];
            } else {
                $return = (new CmsNewsModel)->installExtension();
                $return = (new CmsNewsDescriptionModel)->installExtension();
            }
        }
        return $return;
    }

    public function uninstall()
    {
        $return  = ['error' => 0, 'msg' => ''];
        $process = (new Config)->where('key', $this->configKey)->delete();
        if (!$process) {
            $return = ['error' => 1, 'msg' => 'Error when uninstall'];
        }
        (new CmsNewsModel)->uninstallExtension();
        (new CmsNewsDescriptionModel)->uninstallExtension();
        return $return;
    }
    public function enable()
    {
        $return  = ['error' => 0, 'msg' => ''];
        $process = (new Config)->where('key', $this->configKey)->update(['value' => self::ON]);
        if (!$process) {
            $return = ['error' => 1, 'msg' => 'Error enable'];
        }
        return $return;
    }
    public function disable()
    {
        $return  = ['error' => 0, 'msg' => ''];
        $process = (new Config)->where('key', $this->configKey)->update(['value' => self::OFF]);
        if (!$process) {
            $return = ['error' => 1, 'msg' => 'Error disable'];
        }
        return $return;
    }

    public function config()
    {
        return redirect()->route('news.index');
    }
    public function processConfig($data)
    {
        //Process
    }

//=======================

/**
 * [news description]
 * @return [type] [description]
 */
    public function news()
    {
        $news = (new CmsNewsModel)->getItemsNews($limit = $this->configs['product_new'], $opt = 'paginate');
        return view($this->theme . '.cms_news',
            array(
                'title'       => trans('language.blog'),
                'description' => $this->configsGlobal['description'],
                'keyword'     => $this->configsGlobal['keyword'],
                'news'        => $news,
                'og_image'    => $this->logo,
            )
        );
    }

    public function newsDetail($name, $id)
    {
        $news_currently = CmsNewsModel::find($id);
        if ($news_currently) {
            $title = ($news_currently) ? $news_currently->title : trans('language.not_found');
            return view($this->theme . '.cms_news_detail',
                array(
                    'title'          => $title,
                    'news_currently' => $news_currently,
                    'description'    => $this->configsGlobal['description'],
                    'keyword'        => $this->configsGlobal['keyword'],
                    'blogs'          => (new CmsNewsModel)->getItemsNews($limit = 4),
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
