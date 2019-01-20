<?php
#app/Http/Admin/Controllers/ExtensionsController.php
namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Illuminate\Http\Request;

class ExtensionsController extends Controller
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
        $this->namespaceGroup = [
            'shipping' => '\App\Http\Controllers\Extensions\Shipping',
            'payment'  => '\App\Http\Controllers\Extensions\Payment',
            'total'    => '\App\Http\Controllers\Extensions\Total',
            'other'    => '\App\Http\Controllers\Extensions\Other',
        ];

    }
    public function index($extensionGroup, Content $content)
    {
        $action       = request('action');
        $extensionKey = request('extensionKey');
        if ($action == 'config' && $extensionKey != '') {
            $namespace = $this->namespaceGroup[$extensionGroup] . '\\' . $extensionKey;
            $body      = (new $namespace)->config();
        } else {
            $body = $this->{$extensionGroup}();
        }
        return $content
            ->header(trans('language.extensions.manager'))
            ->description(' ')
            ->body($body);
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function shipping()
    {
        $type                = 'shipping';
        $extensionsInstalled = \Helper::getExtensionsShipping($all = true);
        $extensions          = \FindClass::extensions($type);
        $namespace           = $this->namespaceGroup[$type];
        $title               = trans('language.extensions.' . $type);
        return $this->render($extensionsInstalled, $extensions, $namespace, $title, $type);
    }

/**
 * [render description]
 * @param  [type] $extensionsInstalled [description]
 * @param  [type] $extensions          [description]
 * @param  [type] $namespace           [description]
 * @param  [type] $title               [description]
 * @param  [type] $type                [description]
 * @return [type]                      [description]
 */
    public function render($extensionsInstalled, $extensions, $namespace, $title, $type)
    {
        return view('admin.ExtensionsManager')->with(
            [
                "title"               => $title,
                "namespace"           => $namespace,
                "extensionsInstalled" => $extensionsInstalled,
                "extensions"          => $extensions,
                "type"                => $type,
            ])->render();
    }

    public function installExtension(Request $request)
    {
        $key       = $request->get('key');
        $type      = $request->get('type');
        $namespace = $this->namespaceGroup[$type];
        $class     = $namespace . '\\' . $key;
        $response  = (new $class)->install();
        return json_encode($response);
    }
    public function uninstallExtension(Request $request)
    {
        $key       = $request->get('key');
        $type      = $request->get('type');
        $namespace = $this->namespaceGroup[$type];
        $class     = $namespace . '\\' . $key;
        $response  = (new $class)->uninstall();
        return json_encode($response);
    }
    public function enableExtension(Request $request)
    {
        $key       = $request->get('key');
        $type      = $request->get('type');
        $namespace = $this->namespaceGroup[$type];
        $class     = $namespace . '\\' . $key;
        $response  = (new $class)->enable();
        return json_encode($response);
    }
    public function disableExtension(Request $request)
    {
        $key       = $request->get('key');
        $type      = $request->get('type');
        $namespace = $this->namespaceGroup[$type];
        $class     = $namespace . '\\' . $key;
        $response  = (new $class)->disable();
        return json_encode($response);
    }
}
