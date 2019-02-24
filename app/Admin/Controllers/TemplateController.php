<?php
#app/Http/Admin/Controllers/TemplateController.php
namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;

class TemplateController extends Controller
{
    use HasResourceActions;
    public $namespaceGroup;
    /**
     * Index interface.
     *
     * @return Content
     */
    public function __construct()
    {

    }
    public function index(Content $content)
    {
        return $content
            ->header(trans('language.template.manager'))
            ->description(' ')
            ->body($this->render());
    }

/**
 * [render description]
 * @param  [type] $extensionsInstalled [description]
 * @param  [type] $extensions          [description]
 * @param  [type] $namespace           [description]
 * @param  [type] $title               [description]
 * @param  [type] $group                [description]
 * @return [type]                      [description]
 */
    public function render()
    {
        $arrTemplates = [];
        foreach (glob(resource_path() . "/views/templates/*") as $template) {
            if (is_dir($template)) {
                $infoTemlate['code'] = explode('templates/', $template)[1];
                $config              = ['name' => '', 'auth' => '', 'email' => '', 'website' => ''];
                if (file_exists($template . '/config.json')) {
                    $config = json_decode(file_get_contents($template . '/config.json'), true);
                }
                $infoTemlate['config']              = $config;
                $arrTemplates[$infoTemlate['code']] = $infoTemlate;
            }
        }
        return view('admin.TemplatesManager')->with(
            [
                "title"           => trans('language.template.title'),
                "templates"       => $arrTemplates,
                "templateCurrent" => \Helper::configsGlobal()['template'],
            ])->render();
    }

    public function changeTemplate()
    {
    }
}
