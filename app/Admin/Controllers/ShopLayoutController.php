<?php
#app/Http/Admin/Controllers/ShopLayoutController.php
namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use App\Models\ShopLayout;
use App\Models\ShopLayoutPage;
use App\Models\ShopLayoutPosition;
use App\Models\ShopLayoutType;
use Illuminate\Http\Request;
use Validator;

class ShopLayoutController extends Controller
{

    public $layoutPage;
    public $layoutType;
    public $layoutPosition;
    public function __construct()
    {
        $this->layoutPage = ShopLayoutPage::getPages();
        $this->layoutType = ShopLayoutType::getTypes();
        $this->layoutPosition = ShopLayoutPosition::getPositions();
    }

    public function index()
    {

        $data = [
            'title' => trans('layout.admin.list'),
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
            'id' => trans('layout.id'),
            'name' => trans('layout.name'),
            'type' => trans('layout.type'),
            'position' => trans('layout.position'),
            'page' => trans('layout.page'),
            'text' => trans('layout.text'),
            'status' => trans('layout.status'),
            'action' => trans('layout.admin.action'),
        ];
        $layout = new ShopLayout;
        $layout = $layout;
        $layout = $layout->orderBy('id', 'desc');
        $dataTmp = $layout->paginate(20);

        $dataTr = [];
        foreach ($dataTmp as $key => $row) {
            $layoutPage = $this->layoutPage;
            $htmlPage = '';
            if (!$row['page']) {
                $htmlPage .= '';
            } else
            if (strpos($row['page'], '*') !== false) {
                $htmlPage .= 'All pages';
            } else {
                $arrPage = explode(',', $row['page']);
                foreach ($arrPage as $key => $value) {
                    $htmlPage .= '+' . ($layoutPage[$value] ?? '') . '<br>';
                }
            }

            $type_name = $this->layoutType[$row['type']] ?? '';
            if ($row['type'] == 'module') {
                $type_name = '<span class="label label-danger">' . $type_name . '</span>';
            } elseif ($row['type'] == 'view') {
                $type_name = '<span class="label label-warning">' . $type_name . '</span>';
            } elseif ($row['type'] == 'html') {
                $type_name = '<span class="label label-primary">' . $type_name . '</span>';
            }
            $dataTr[] = [
                'id' => $row['id'],
                'name' => $row['name'],
                'type' => $type_name,
                'position' => $this->layoutPosition[$row['position']] ?? '',
                'page' => $htmlPage,
                'text' => htmlspecialchars($row['text']),
                'status' => $row['status'] ? '<span class="label label-success">ON</span>' : '<span class="label label-danger">OFF</span>',
                'action' => '
                    <a href="' . route('admin_layout.edit', ['id' => $row['id']]) . '"><span title="' . trans('layout.admin.edit') . '" type="button" class="btn btn-flat btn-primary"><i class="fa fa-edit"></i></span></a>&nbsp;

                  <span onclick="deleteItem(' . $row['id'] . ');"  title="' . trans('layout.admin.delete') . '" class="btn btn-flat btn-danger"><i class="fa fa-trash"></i></span>
                  ',
            ];
        }

        $data['listTh'] = $listTh;
        $data['dataTr'] = $dataTr;
        $data['pagination'] = $dataTmp->appends(request()->except(['_token', '_pjax']))->links('admin.component.pagination');
        $data['result_items'] = trans('layout.admin.result_item', ['item_from' => $dataTmp->firstItem(), 'item_to' => $dataTmp->lastItem(), 'item_total' => $dataTmp->total()]);

//menu_left
        $data['menu_left'] = '<div class="pull-left">
                      <a class="btn   btn-flat btn-primary grid-refresh" title="Refresh"><i class="fa fa-refresh"></i><span class="hidden-xs"> ' . trans('layout.admin.refresh') . '</span></a> &nbsp;
                      </div>';
//=menu_left

//menu_right
        $data['menu_right'] = '<div class="btn-group pull-right" style="margin-right: 10px">
                           <a href="' . route('admin_layout.create') . '" class="btn  btn-success  btn-flat" title="New" id="button_create_new">
                           <i class="fa fa-plus"></i><span class="hidden-xs">' . trans('layout.admin.add_new') . '</span>
                           </a>
                        </div>';
//=menu_right

        $data['url_delete_item'] = route('admin_layout.delete');

        return view('admin.screen.list')
            ->with($data);
    }

/**
 * Form create new order in admin
 * @return [type] [description]
 */
    public function create()
    {
        $listViewBlock = $this->getListViewBlock();
        $listModuleBlock = $this->getListModuleBlock();
        $data = [
            'title' => trans('layout.admin.add_new_title'),
            'sub_title' => '',
            'title_description' => trans('layout.admin.add_new_des'),
            'icon' => 'fa fa-plus',
            'layoutPosition' => $this->layoutPosition,
            'layoutPage' => $this->layoutPage,
            'layoutType' => $this->layoutType,
            'listViewBlock' => $listViewBlock,
            'listModuleBlock' => $listModuleBlock,
            'layout' => [],
            'url_action' => route('admin_layout.create'),
        ];
        return view('admin.screen.layout')
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
            'page' => 'required',
            'position' => 'required',
            'text' => 'required',
            'type' => 'required',
        ]);

        if ($validator->fails()) {
            // dd($validator->messages());
            return redirect()->back()
                ->withErrors($validator)
                ->withInput();
        }

        $dataInsert = [
            'name' => $data['name'],
            'position' => $data['position'],
            'page' => in_array('*', $data['page'] ?? []) ? '*' : implode(',', $data['page'] ?? []),
            'text' => $data['text'],
            'type' => $data['type'],
            'sort' => (int) $data['sort'],
            'status' => (empty($data['status']) ? 0 : 1),
        ];
        ShopLayout::create($dataInsert);
//
        return redirect()->route('admin_layout.index')->with('success', trans('layout.admin.create_success'));

    }

/**
 * Form edit
 */
    public function edit($id)
    {
        $layout = ShopLayout::find($id);
        if ($layout === null) {
            return 'no data';
        }
        $listViewBlock = $this->getListViewBlock();
        $listModuleBlock = $this->getListModuleBlock();

        $data = [
            'title' => trans('layout.admin.edit'),
            'sub_title' => '',
            'title_description' => '',
            'icon' => 'fa fa-pencil-square-o',
            'layoutPosition' => $this->layoutPosition,
            'layoutPage' => $this->layoutPage,
            'layoutType' => $this->layoutType,
            'listViewBlock' => $listViewBlock,
            'listModuleBlock' => $listModuleBlock,
            'layout' => $layout,
            'url_action' => route('admin_layout.edit', ['id' => $layout['id']]),
        ];
        return view('admin.screen.layout')
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
        ], [
            'name.required' => trans('validation.required'),
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
            'position' => $data['position'],
            'page' => in_array('*', $data['page'] ?? []) ? '*' : implode(',', $data['page'] ?? []),
            'text' => $data['text'],
            'type' => $data['type'],
            'sort' => (int) $data['sort'],
            'status' => (empty($data['status']) ? 0 : 1),
        ];
        $layout = ShopLayout::find($id);
        $layout->update($dataUpdate);
//
        return redirect()->route('admin_layout.index')->with('success', trans('layout.admin.edit_success'));

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
            ShopLayout::destroy($arrID);
            return response()->json(['error' => 0, 'msg' => '']);
        }
    }

    public function getListViewBlock()
    {
        $arrView = [];
        foreach (glob(base_path() . "/resources/views/block/*.blade.php") as $file) {
            if (file_exists($file)) {
                $arr = explode('/', $file);
                $arrView[substr(end($arr), 0, -10)] = substr(end($arr), 0, -10);
            }
        }
        return $arrView;
    }

    public function getListModuleBlock()
    {
        $arrModule = [];
        foreach (glob(base_path() . "/app/Modules/Block/Controllers/*.php") as $file) {
            if (file_exists($file)) {
                $arr = explode('/', $file);
                $tmp = substr(end($arr), 0, -4);
                $arrModule[$tmp] = $tmp;
            }
        }
        return $arrModule;
    }

}
