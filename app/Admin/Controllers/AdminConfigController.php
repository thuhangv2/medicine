<?php
#app/Http/Admin/Controllers/AdminConfigController.php
namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use App\Models\AdminConfig;
use Illuminate\Http\Request;
use Validator;

class AdminConfigController extends Controller
{

    public function index()
    {

        $data = [
            'title' => trans('config.admin.list'),
            'sub_title' => '',
            'icon' => 'fa fa-indent',
            'menu_left' => '',
            'menu_right' => '',
            'menu_sort' => '',
            'script_sort' => '',
            'menu_search' => '',
            'script_search' => '',
            'listTh' => '',
            'dataTr' => '',
            'pagination' => '',
            'result_items' => '',
            'url_delete_item' => '',
        ];

        $obj = (new AdminConfig)->whereIn('code', ['config', 'display'])->orderBy('sort', 'desc')->get()->groupBy('code');
        $data['configs'] = $obj;
//menu_right
        $data['menu_right'] = '<div class="btn-group pull-right" style="margin-right: 10px">
                           <a href="' . route('admin_config.create') . '" class="btn  btn-success  btn-flat" title="New" id="button_create_new">
                           <i class="fa fa-plus"></i><span class="hidden-xs">' . trans('config.admin.add_new') . '</span>
                           </a>
                        </div>';
//=menu_right

        return view('admin.screen.config')
            ->with($data);
    }

/**
 * Form create new order in admin
 * @return [type] [description]
 */
    public function create()
    {
        $data = [
            'title' => trans('config.admin.add_new_title'),
            'sub_title' => '',
            'title_description' => trans('config.admin.add_new_des'),
            'icon' => 'fa fa-plus',
        ];
        return view('admin.screen.config_add')
            ->with($data);
    }

/**
 * Post create new order in admin
 * @return [type] [description]
 */
    public function postCreate()
    {
        $data = request()->all();
        $dataOrigin = request()->all();
        $validator = Validator::make($dataOrigin, [
            'image' => 'image | max: ' . sc_config('upload_image_size', 2048),
            'sort' => 'numeric|min:0',
            'name' => 'required|string|max:100',
            'url' => 'url|nullable',
        ]);

        if ($validator->fails()) {
            return redirect()->back()
                ->withErrors($validator)
                ->withInput();
        }
        $dataInsert = [
            'image' => $data['image'],
            'name' => $data['name'],
            'url' => $data['url'],
            'sort' => (int) $data['sort'],
        ];
        $id = AdminConfig::insertGetId($dataInsert);

        return redirect()->route('admin_config.index')->with('success', trans('config.admin.create_success'));

    }

/*
Update value config
 */
    public function updateInfo()
    {
        $stt = 0;
        $data = request()->all();
        $name = $data['name'];
        $value = $data['value'];
        $update = AdminConfig::where('key', $name)->update(['value' => $value]);
        if ($update) {
            $stt = 1;
        }
        return response()->json(['stt' => $stt]);

    }

/*
Delete list item
Need mothod destroy to boot deleting in model
 */
    public function deleteList()
    {
        if (!request()->ajax()) {
            return response()->json(['error' => 1, 'msg' => 'Method not allow!']);
        } else {
            $ids = request('ids');
            $arrID = explode(',', $ids);
            AdminConfig::destroy($arrID);
            return response()->json(['stt' => 1, 'msg' => '']);
        }
    }

}
