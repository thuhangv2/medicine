<?php
#app/Modules/Cms/Controllers/News.php
namespace App\Modules\Cms\Controllers;

use App\Admin\Models\AdminMenu;
use App\Models\AdminConfig;
use App\Modules\Cms\Models\CmsNews;
use App\Modules\Cms\Models\CmsNewsDescription;
use App\Modules\ModuleDefault;

class News extends \App\Http\Controllers\GeneralController
{
    use ModuleDefault;

    protected $configType = 'Modules';
    protected $configCode = 'Cms';
    protected $configKey = 'News';

    public $title;
    public $version;
    public $auth;
    public $link;
    public $image;
    const ON = 1;
    const OFF = 0;
    public function __construct()
    {
        parent::__construct();
        $this->title = trans($this->configType . '/' . $this->configCode . '/' . $this->configKey . '.title');
        $this->image = 'images/' . $this->configType . '/' . $this->configCode . '/' . $this->configKey . '.png';
        $this->version = '1.0';
        $this->auth = 'Naruto';
        $this->link = 'https://s-cart.org';
        view()->addNamespace($this->configKey, app_path($this->configType . '/' . $this->configCode . '/Views'));
    }

    public function processData()
    {
        $arrData = [
            'title' => $this->title,
            'code' => $this->configKey,
            'version' => $this->version,
            'auth' => $this->auth,
            'link' => $this->link,
        ];
        return $arrData;
    }

    public function install()
    {
        $return = ['error' => 0, 'msg' => ''];
        $check = AdminConfig::where('key', $this->configKey)->first();
        if ($check) {
            $return = ['error' => 1, 'msg' => 'Module exist'];
        } else {
            $process = AdminConfig::insert(
                [
                    'code' => $this->configCode,
                    'key' => $this->configKey,
                    'type' => $this->configType,
                    'value' => self::ON, //1- Enable extension; 0 - Disable
                    'detail' => 'lang::' . $this->configType . '/' . $this->configCode . '/' . $this->configKey . '.title',
                ]
            );
            if (!$process) {
                $return = ['error' => 1, 'msg' => 'Error when install'];
            } else {
                $checkMenu = AdminMenu::find('100');
                if (!$checkMenu) {
                    AdminMenu::insert([
                        'id' => 100,
                        'sort' => 102,
                        'parent_id' => 0,
                        'title' => 'lang::Modules/language.cms_manager',
                        'icon' => 'fa-coffee',
                    ]);
                }
                (new CmsNews)->installExtension();
                (new CmsNewsDescription)->installExtension();
                AdminMenu::insert([
                    'parent_id' => 100,
                    'title' => 'lang::Modules/language.cms_news',
                    'icon' => 'fa-file-powerpoint-o',
                    'uri' => 'route::admin_cms_news.index',
                ]);
            }
        }
        return $return;
    }

    public function uninstall()
    {
        $return = ['error' => 0, 'msg' => ''];
        $process = (new AdminConfig)->where('key', $this->configKey)->delete();
        if (!$process) {
            $return = ['error' => 1, 'msg' => 'Error when uninstall'];
        }

        //Drop table
        (new CmsNews)->uninstallExtension();
        (new CmsNewsDescription)->uninstallExtension();

        //Remove menu
        (new AdminMenu)->where('uri', 'route::admin_cms_news.index')->delete();
        if (!(new AdminMenu)->where('parent_id', 100)->count()) {
            (new AdminMenu)->find(100)->delete();
        }

        return $return;
    }
    public function enable()
    {
        $return = ['error' => 0, 'msg' => ''];
        $process = (new AdminConfig)->where('key', $this->configKey)->update(['value' => self::ON]);
        if (!$process) {
            $return = ['error' => 1, 'msg' => 'Error enable'];
        }
        return $return;
    }
    public function disable()
    {
        $return = ['error' => 0, 'msg' => ''];
        $process = (new AdminConfig)->where('key', $this->configKey)->update(['value' => self::OFF]);
        if (!$process) {
            $return = ['error' => 1, 'msg' => 'Error disable'];
        }
        return $return;
    }

//=======================

/**
 * [news description]
 * @return [type] [description]
 */
    public function news()
    {
        $news = (new CmsNews)->getItemsNews($limit = sc_config('product_new'), $opt = 'paginate');
        return view($this->configKey . '::' . 'cms_news',
            array(
                'title' => trans('front.blog'),
                'description' => sc_store('description'),
                'keyword' => sc_store('keyword'),
                'news' => $news,
            )
        );
    }

    public function newsDetail($name, $id)
    {
        $news_currently = CmsNews::find($id);
        if ($news_currently) {
            $title = ($news_currently) ? $news_currently->title : trans('front.not_found');
            return view($this->configKey . '::' . 'cms_news_detail',
                array(
                    'title' => $title,
                    'news_currently' => $news_currently,
                    'description' => sc_store('description'),
                    'keyword' => sc_store('keyword'),
                    'blogs' => (new CmsNews)->getItemsNews($limit = 4),
                    'og_image' => $news_currently->getImage(),
                )
            );
        } else {
            return view('templates.' . sc_store('template') . '.notfound',
                array(
                    'title' => trans('front.not_found'),
                    'description' => '',
                    'keyword' => sc_store('keyword'),
                )
            );
        }

    }
}
