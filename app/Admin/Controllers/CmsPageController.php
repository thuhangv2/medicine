<?php
#app/Http/Admin/Controllers/CmsPageController.php
namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use App\Models\CmsPage;
use App\Models\CmsPageDescription;
use App\Models\Language;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class CmsPageController extends Controller
{
    use HasResourceActions;
    /**
     * Index interface.
     *
     * @return Content
     */
    public function index(Content $content)
    {
        return $content
            ->header('Quản lý trang')
            ->description(' ')
            ->body($this->grid());
    }

    /**
     * Edit interface.
     *
     * @param mixed $id
     * @param Content $content
     * @return Content
     */
    public function edit($id, Content $content)
    {
        return $content
            ->header('Chỉnh sửa trang')
            ->description(' ')
            ->body($this->form()->edit($id));
    }

    /**
     * Create interface.
     *
     * @return Content
     */
    public function create(Content $content)
    {
        return $content
            ->header('Tạo trang mới')
            ->description(' ')
            ->body($this->form());
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new CmsPage);
        $grid->id('ID')->sortable();
        $grid->title('Tiêu đề trang')->sortable();
        $grid->status('Trạng thái')->switch();
        $grid->actions(function ($actions) {
            if ($actions->getKey() == 1 || $actions->getKey() == 2) {
                // 1: about, 2: contact
                $actions->disableDelete();
            }
            $actions->disableView();
        });
        $grid->disableFilter();
        $grid->disableExport();
        $grid->disableRowSelector();
        $grid->model()->orderBy('id', 'desc');
        return $grid;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new CmsPage);
//Language
        $arrParameters = request()->route()->parameters();
        $idCheck       = (int) end($arrParameters);
        $languages     = Language::where('status', 1)->get();
        $arrFields     = array();
        foreach ($languages as $key => $language) {
            if ($idCheck) {
                $langDescriptions = CmsPageDescription::where('cms_page_id', $idCheck)->where('lang_id', $language->id)->first();
            }
            $form->html('<b>' . $language->name . '</b> <img style="height:25px" src="/' . config('filesystems.disks.path_file') . '/' . $language->icon . '">');
            $form->text($language->code . '__title', 'Tên')->rules('required', ['required' => 'Bạn chưa nhập tên'])->default(!empty($langDescriptions->title) ? $langDescriptions->title : null);
            $form->text($language->code . '__keyword', 'Keyword')->default(!empty($langDescriptions->keyword) ? $langDescriptions->keyword : null);
            $form->text($language->code . '__description', 'Description')->rules('max:300', ['max' => 'Tối đa 300 kí tự'])->default(!empty($langDescriptions->description) ? $langDescriptions->description : null);
            $form->ckeditor($language->code . '__content', 'Nội dung')->default(!empty($langDescriptions->content) ? $langDescriptions->content : null);
            $arrFields[] = $language->code . '__title';
            $arrFields[] = $language->code . '__keyword';
            $arrFields[] = $language->code . '__description';
            $arrFields[] = $language->code . '__content';
            $form->divide();
        }
        $form->ignore($arrFields);
//end language

        if ($idCheck == '1' || $idCheck == '2') {
            $form->display('uniquekey', 'Unique Key');
        } else {
            $form->text('uniquekey', 'Unique Key')->rules(function ($form) {
                return 'required|unique:cms_page,uniquekey,' . $form->model()->id . ',id';
            }, ['required' => 'Bạn chưa nhập mã trang', 'unique' => 'Mã trang này đã có rồi'])->placeholder('Ví dụ: thong-tin-khuyen-mai, tin-tuc,...')->help('Viết liền, không dấu, không được trùng nhau.');
        }
        $form->switch('status', 'Trạng thái');
        $form->disableViewCheck();
        $form->disableEditingCheck();
        $form->tools(function (Form\Tools $tools) use ($idCheck) {
            $tools->disableView();
            if ($idCheck == '1' || $idCheck == '2') {
                // 1: about, 2: contact
                $tools->disableDelete();
            }

        });

        $arrData = array();
        $form->saving(function (Form $form) use ($languages, &$arrData) {
            //Lang
            foreach ($languages as $key => $language) {
                $arrData[$language->code]['title']       = request($language->code . '__title');
                $arrData[$language->code]['keyword']     = request($language->code . '__keyword');
                $arrData[$language->code]['description'] = request($language->code . '__description');
                $arrData[$language->code]['content']     = request($language->code . '__content');
                $arrData[$language->code]['lang_id']     = $language->id;
            }
            //end lang
        });

        $form->saved(function (Form $form) use ($languages, &$arrData) {
            $id = $form->model()->id;
            //Lang
            foreach ($languages as $key => $language) {
                $arrData[$language->code]['cms_page_id'] = $id;
            }
            foreach ($arrData as $key => $value) {
                $checkLangData = CmsPageDescription::where('lang_id', $value['lang_id'])->where('cms_page_id', $value['cms_page_id'])->delete();
                CmsPageDescription::insert($value);
            }
            //end lang
        });

        return $form;
    }

    /**
     * Show interface.
     *
     * @param mixed $id
     * @param Content $content
     * @return Content
     */
    public function show($id, Content $content)
    {
        return $content
            ->header('Detail')
            ->description(' ')
            ->body($this->detail($id));
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(CmsPage::findOrFail($id));
        return $show;
    }

}
