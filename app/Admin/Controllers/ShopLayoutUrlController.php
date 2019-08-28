<?php
#app/Http/Admin/Controllers/ShopLayoutUrlController.php
namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use App\Models\ShopLayoutUrl;
use Illuminate\Http\Request;
use Validator;

class ShopLayoutUrlController extends Controller
{

    protected $arrTarget;
    protected $arrGroup;

    public function __construct()
    {
        $this->arrTarget = ['_blank' => '_blank', '_self' => '_self'];
        $this->arrGroup = ['menu' => 'Menu', 'footer' => 'Footer'];
    }
    public function index()
    {

        $data = [
            'title' => trans('layout_url.admin.list'),
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

        $listTh = [
            'check_row' => '',
            'name' => trans('layout_url.name'),
            'url' => trans('layout_url.url'),
            'target' => trans('layout_url.target'),
            'group' => trans('layout_url.group'),
            'sort' => trans('layout_url.sort'),
            'status' => trans('layout_url.status'),
            'action' => trans('layout_url.admin.action'),
        ];
        $objOrder = new ShopLayoutUrl;
        $objOrder = $objOrder->orderBy('id', 'desc');
        $dataTmp = $objOrder->paginate(20);

        $dataTr = [];
        foreach ($dataTmp as $key => $row) {
            $dataTr[] = [
                'check_row' => '<input type="checkbox" class="grid-row-checkbox" data-id="' . $row['id'] . '">',
                'name' => sc_language_render($row['name']),
                'url' => $row['url'],
                'target' => $this->arrTarget[$row['target']] ?? '',
                'group' => $this->arrGroup[$row['group']] ?? '',
                'sort' => $row['sort'],
                'status' => $row['status'] ? '<span class="label label-success">ON</span>' : '<span class="label label-danger">OFF</span>',
                'action' => '
                    <a href="' . route('admin_layout_url.edit', ['id' => $row['id']]) . '"><span title="' . trans('layout_url.admin.edit') . '" type="button" class="btn btn-flat btn-primary"><i class="fa fa-edit"></i></span></a>&nbsp;

                  <span onclick="deleteItem(' . $row['id'] . ');"  title="' . trans('layout_url.admin.delete') . '" class="btn btn-flat btn-danger"><i class="fa fa-trash"></i></span>
                  ',
            ];
        }

        $data['listTh'] = $listTh;
        $data['dataTr'] = $dataTr;
        $data['pagination'] = $dataTmp->appends(request()->except(['_token', '_pjax']))->links('admin.component.pagination');
        $data['result_items'] = trans('layout_url.admin.result_item', ['item_from' => $dataTmp->firstItem(), 'item_to' => $dataTmp->lastItem(), 'item_total' => $dataTmp->total()]);

//menu_left
        $data['menu_left'] = '<div class="pull-left">
                    <button type="button" class="btn btn-default grid-select-all"><i class="fa fa-square-o"></i></button> &nbsp;

                    <a class="btn   btn-flat btn-danger grid-trash" title="Delete"><i class="fa fa-trash-o"></i><span class="hidden-xs"> ' . trans('admin.delete') . '</span></a> &nbsp;

                    <a class="btn   btn-flat btn-primary grid-refresh" title="Refresh"><i class="fa fa-refresh"></i><span class="hidden-xs"> ' . trans('admin.refresh') . '</span></a> &nbsp;</div>
                    ';
//=menu_left

//menu_right
        $data['menu_right'] = '<div class="btn-group pull-right" style="margin-right: 10px">
                           <a href="' . route('admin_layout_url.create') . '" class="btn  btn-success  btn-flat" title="New" id="button_create_new">
                           <i class="fa fa-plus"></i><span class="hidden-xs">' . trans('layout_url.admin.add_new') . '</span>
                           </a>
                        </div>';
//=menu_right

        $data['url_delete_item'] = route('admin_layout_url.delete');

        return view('admin.screen.list')
            ->with($data);
    }

/**
 * Form create new order in admin
 * @return [type] [description]
 */
    public function create()
    {
        $data = [
            'title' => trans('layout_url.admin.add_new_title'),
            'sub_title' => '',
            'title_description' => trans('layout_url.admin.add_new_des'),
            'icon' => 'fa fa-plus',
            'layout_url' => [],
            'arrTarget' => $this->arrTarget,
            'arrGroup' => $this->arrGroup,
            'url_action' => route('admin_layout_url.create'),
        ];
        return view('admin.screen.layout_url')
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
            'name' => 'required',
            'url' => 'required',
            'group' => 'required',
            'target' => 'required',
        ]);

        if ($validator->fails()) {
            // dd($validator->messages());
            return redirect()->back()
                ->withErrors($validator)
                ->withInput();
        }
        $dataInsert = [
            'name' => $data['name'],
            'url' => $data['url'],
            'target' => $data['target'],
            'group' => $data['group'],
            'sort' => $data['sort'],
            'status' => empty($data['status']) ? 0 : 1,
        ];
        ShopLayoutUrl::create($dataInsert);
//
        return redirect()->route('admin_layout_url.index')->with('success', trans('layout_url.admin.create_success'));

    }

/**
 * Form edit
 */
    public function edit($id)
    {
        $layout_url = ShopLayoutUrl::find($id);
        if ($layout_url === null) {
            return 'no data';
        }
        $data = [
            'title' => trans('layout_url.admin.edit'),
            'sub_title' => '',
            'title_description' => '',
            'icon' => 'fa fa-pencil-square-o',
            'layout_url' => $layout_url,
            'arrTarget' => $this->arrTarget,
            'arrGroup' => $this->arrGroup,
            'url_action' => route('admin_layout_url.edit', ['id' => $layout_url['id']]),
        ];
        return view('admin.screen.layout_url')
            ->with($data);
    }

/**
 * update status
 */
    public function postEdit($id)
    {
        $data = request()->all();
        $dataOrigin = request()->all();
        $validator = Validator::make($dataOrigin, [
            'name' => 'required',
            'url' => 'required',
            'group' => 'required',
            'target' => 'required',
        ]);

        if ($validator->fails()) {
            // dd($validator->messages());
            return redirect()->back()
                ->withErrors($validator)
                ->withInput();
        }
//Edit
        $dataUpdate = [
            'name' => $data['name'],
            'url' => $data['url'],
            'target' => $data['target'],
            'group' => $data['group'],
            'sort' => $data['sort'],
            'status' => empty($data['status']) ? 0 : 1,
        ];
        $obj = ShopLayoutUrl::find($id);
        $obj->update($dataUpdate);
//
        return redirect()->route('admin_layout_url.index')->with('success', trans('layout_url.admin.edit_success'));

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
            ShopLayoutUrl::destroy($arrID);
            return response()->json(['error' => 0, 'msg' => '']);
        }
    }

}
