<?php
#app/Http/Admin/Controllers/CmsCategoryController.php
namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use App\Models\CmsCategory;
use App\Models\CmsCategoryDescription;
use App\Models\Language;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class CmsCategoryController extends Controller
{
    use HasResourceActions;

    /**
     * Index interface.
     *
     * @return Content
     */
    public function index()
    {
        return Admin::content(function (Content $content) {

            $content->header('Chủ đề');
            $content->description(' ');

            $content->body($this->grid());
        });
    }

    /**
     * Edit interface.
     *
     * @param $id
     * @return Content
     */
    public function edit($id)
    {
        return Admin::content(function (Content $content) use ($id) {

            $content->header('Chỉnh sửa chủ đề');
            $content->description(' ');

            $content->body($this->form()->edit($id));
        });
    }

    /**
     * Create interface.
     *
     * @return Content
     */
    public function create()
    {
        return Admin::content(function (Content $content) {

            $content->header('Tạo chủ đề');
            $content->description(' ');

            $content->body($this->form());
        });
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Admin::grid(CmsCategory::class, function (Grid $grid) {

            $grid->id('ID')->sortable();
            $grid->image('Hình ảnh')->image('', 50);
            $grid->name('Tên')->sortable();
            $grid->parent('Chủ đề cha')->display(function ($parent) {
                return (CmsCategory::find($parent)) ? CmsCategory::find($parent)->title : '';
            });
            $grid->status('Status')->switch();
            $grid->sort('Sắp xếp')->editable();

            $grid->disableExport();
            $grid->disableRowSelector();

            $grid->actions(function ($actions) {
                $actions->disableView();
            });
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Admin::form(CmsCategory::class, function (Form $form) {
//Language
            $arrParameters = request()->route()->parameters();
            $idCheck       = (int) end($arrParameters);
            $languages     = Language::where('status', 1)->get();
            $arrFields     = array();
            foreach ($languages as $key => $language) {
                if ($idCheck) {
                    $langDescriptions = CmsCategoryDescription::where('shop_category_id', $idCheck)->where('lang_id', $language->id)->first();
                }
                $form->html('<b>' . $language->name . '</b> <img style="height:25px" src="/' . config('filesystems.disks.path_file') . '/' . $language->icon . '">');
                $form->text($language->code . '__name', 'Tên')->rules('required', ['required' => trans('validation.required')])->default(!empty($langDescriptions->name) ? $langDescriptions->name : null);
                $form->text($language->code . '__keyword', trans('language.admin.keyword'))->default(!empty($langDescriptions->keyword) ? $langDescriptions->keyword : null);
                $form->text($language->code . '__description', trans('language.admin.description'))->rules('max:300', ['max' => trans('validation.max')])->default(!empty($langDescriptions->description) ? $langDescriptions->description : null);
                $arrFields[] = $language->code . '__name';
                $arrFields[] = $language->code . '__keyword';
                $arrFields[] = $language->code . '__description';
                $form->divide();
            }
            $form->ignore($arrFields);
//end language

            $form->display('id', 'ID');
            $arrCate = (new CmsCategory)->listCate();
            $arrCate = ['0' => '== Chủ đề gốc =='] + $arrCate;
            $form->select('parent', 'Chủ đề cha')->options($arrCate);
            $form->image('image', 'Hình ảnh')->uniqueName()->move('cms_category')->removable();
            $form->number('sort', 'Sắp xếp');
            $form->switch('status', trans('language.admin.status'));

            $arrData = array();
            $form->saving(function (Form $form) use ($languages, &$arrData) {
                //Lang
                foreach ($languages as $key => $language) {
                    $arrData[$language->code]['name']        = request($language->code . '__name');
                    $arrData[$language->code]['keyword']     = request($language->code . '__keyword');
                    $arrData[$language->code]['description'] = request($language->code . '__description');
                    $arrData[$language->code]['lang_id']     = $language->id;
                }
                //end lang
            });

            $form->saved(function (Form $form) {
                $idForm = $form->model()->id;
                //Language
                foreach ($languages as $key => $language) {
                    $arrData[$language->code]['shop_category_id'] = $idForm;
                }
                foreach ($arrData as $key => $value) {
                    $checkLangData = CmsCategoryDescription::where('lang_id', $value['lang_id'])->where('shop_category_id', $value['shop_category_id'])->delete();
                    CmsCategoryDescription::insert($value);
                }
                //End language
                $config = \App\Models\Config::pluck('value', 'key')->all();

                $file_path_admin = config('filesystems.disks.admin.root');
                try {
                    if (!file_exists($file_path_admin . '/thumb/' . $form->model()->image)) {
                        if (!empty($config['watermark'])) {
                            \Image::make($file_path_admin . '/' . $form->model()->image)->insert(public_path('watermark.png'), 'bottom-right', 10, 10)->save($file_path_admin . '/' . $form->model()->image);
                        }
                        //thumbnail
                        $image_thumb = \Image::make($file_path_admin . '/' . $form->model()->image);
                        $image_thumb->resize(250, null, function ($constraint) {
                            $constraint->aspectRatio();
                        });
                        $image_thumb->save($file_path_admin . '/thumb/' . $form->model()->image);
                        //end thumb
                    }
                } catch (\Exception $e) {
                    //
                }
            });
            $form->disableViewCheck();
            $form->disableEditingCheck();
            $form->tools(function (Form\Tools $tools) {
                $tools->disableView();
            });
        });
    }

    public function show($id)
    {
        return Admin::content(function (Content $content) use ($id) {
            $content->header('');
            $content->description('');
            $content->body(Admin::show(CmsCategory::findOrFail($id), function (Show $show) {
                $show->id('ID');
            }));
        });
    }
}
