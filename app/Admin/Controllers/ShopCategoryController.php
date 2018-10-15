<?php
#app/Http/Admin/Controllers/ShopCategoryController.php
namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Language;
use App\Models\ShopCategory;
use App\Models\ShopCategoryDescription;
use Encore\Admin\Controllers\ModelForm;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class ShopCategoryController extends Controller
{
    use ModelForm;

    /**
     * Index interface.
     *
     * @return Content
     */
    public function index()
    {
        return Admin::content(function (Content $content) {

            $content->header('Danh mục sản phẩm');
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

            $content->header('Chỉnh sửa danh mục sản phẩm');
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

            $content->header('Tạo mới danh mục sản phẩm');
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
        return Admin::grid(ShopCategory::class, function (Grid $grid) {

            $grid->id('ID')->sortable();
            $grid->image('Hình ảnh')->image('', 50);
            $grid->name('Tên')->display(function () {
                return ShopCategory::find($this->id)->getName();
            });
            $grid->parent('Danh mục cha')->display(function ($parent) {
                return (ShopCategory::find($parent)) ? ShopCategory::find($parent)->getName() : '';
            });
            $grid->status('Status')->switch();
            $grid->sort('Sắp xếp')->editable();
            $grid->disableExport();
            $grid->model()->orderBy('id', 'desc');
            $grid->tools(function ($tools) {
                $tools->batch(function ($batch) {
                    $batch->disableDelete();
                });
            });
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
        return Admin::form(ShopCategory::class, function (Form $form) {
//Language
            $arrParameters = request()->route()->parameters();
            $idCheck       = 0;
            foreach ($arrParameters as $key => $value) {
                $idCheck = (int) $value;
            }
            $languages = Language::where('status', 1)->get();
            $arrFields = array();
            foreach ($languages as $key => $language) {
                if ($idCheck) {
                    $langDescriptions = ShopCategoryDescription::where('shop_category_id', $idCheck)->where('lang_id', $language->id)->first();
                }
                $form->html('<b>' . $language->name . '</b> <img style="height:25px" src="/' . config('filesystems.disks.path_file') . '/' . $language->icon . '">');
                $form->text($language->code . '__name', 'Tên')->rules('required', ['required' => 'Bạn chưa nhập tên'])->default(!empty($langDescriptions->name) ? $langDescriptions->name : null);
                $form->text($language->code . '__keyword', 'Keyword')->default(!empty($langDescriptions->keyword) ? $langDescriptions->keyword : null);
                $form->text($language->code . '__description', 'Description')->rules('max:300', ['max' => 'Tối đa 300 kí tự'])->default(!empty($langDescriptions->description) ? $langDescriptions->description : null);
                $arrFields[] = $language->code . '__name';
                $arrFields[] = $language->code . '__keyword';
                $arrFields[] = $language->code . '__description';
                $form->divide();
            }
            $form->ignore($arrFields);
//end language

            $arrCate = (new ShopCategory)->listCate();
            $arrCate = ['0' => '== Danh mục gốc =='] + $arrCate;
            $form->select('parent', 'Danh mục cha')->options($arrCate);
            $form->image('image', 'Hình ảnh')->uniqueName()->move('category')->removable();
            $form->number('sort', 'Sắp xếp');
            $form->switch('status', 'Trạng thái');
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

            $form->saved(function (Form $form) use ($languages, &$arrData) {
                $idForm = $form->model()->id;

                //Language
                foreach ($languages as $key => $language) {
                    $arrData[$language->code]['shop_category_id'] = $idForm;
                }
                foreach ($arrData as $key => $value) {
                    $checkLangData = ShopCategoryDescription::where('lang_id', $value['lang_id'])->where('shop_category_id', $value['shop_category_id'])->delete();
                    ShopCategoryDescription::insert($value);
                }
                //End language

                $file_path_admin = config('filesystems.disks.admin.root');
                try {
                    if (!file_exists($file_path_admin . '/thumb/' . $form->model()->image)) {
                        \Image::make($file_path_admin . '/' . $form->model()->image)->insert(public_path('watermark.png'), 'bottom-right', 10, 10)->save($file_path_admin . '/' . $form->model()->image);
                        //thumbnail
                        $image_thumb = \Image::make($file_path_admin . '/' . $form->model()->image);
                        $image_thumb->resize(250, null, function ($constraint) {
                            $constraint->aspectRatio();
                        });
                        $image_thumb->save($file_path_admin . '/thumb/' . $form->model()->image);
                        //end thumb
                    }

                } catch (\Exception $e) {
                    echo $e->getMessage();
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
            $content->body(Admin::show(ShopCategory::findOrFail($id), function (Show $show) {
                $show->id('ID');
            }));
        });
    }
}
