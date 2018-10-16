<?php
#app/Http/Admin/Controllers/CmsNewsController.php
namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use App\Models\CmsNews;
use App\Models\CmsNewsDescription;
use App\Models\Language;
use Encore\Admin\Controllers\ModelForm;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class CmsNewsController extends Controller
{
    use ModelForm;

    /**
     * Index interface.
     *
     * @return Content
     */
    public function index(Content $content)
    {
        return $content
            ->header('Quản lý Blog')
            ->description(' ')
            ->body($this->grid());
    }

    /**
     * Edit interface.
     *
     * @param $id
     * @return Content
     */
    public function edit($id, Content $content)
    {
        return $content
            ->header('Chỉnh sửa Blog')
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
            ->header('Tạo mới')
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
        $grid = new Grid(new CmsNews);

        $grid->id('ID')->sortable();
        $grid->title('Tên bài viết')->sortable();
        $grid->image('Hình ảnh')->image('', 50);
        $grid->status('Trạng thái')->switch();
        $grid->created_at('Ngày tạo');
        $grid->updated_at('Lần cuối chỉnh sửa');
        $grid->disableExport();
        $grid->disableRowSelector();
        $grid->model()->orderBy('id', 'desc');
        $grid->actions(function ($actions) {
            $actions->disableView();
        });
        return $grid;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new CmsNews);
//Language
        $arrParameters = request()->route()->parameters();
        $idCheck       = (int) end($arrParameters);
        $languages     = Language::where('status', 1)->get();
        $arrFields     = array();
        foreach ($languages as $key => $language) {
            if ($idCheck) {
                $langDescriptions = CmsNewsDescription::where('cms_news_id', $idCheck)->where('lang_id', $language->id)->first();
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

        $form->image('image', 'Hình ảnh')->uniqueName()->move('cms_content')->removable();
        $form->switch('status', 'Trạng thái');
        $form->number('sort', 'Sắp xếp');

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
                $arrData[$language->code]['cms_news_id'] = $id;
            }
            foreach ($arrData as $key => $value) {
                $checkLangData = CmsNewsDescription::where('lang_id', $value['lang_id'])->where('cms_news_id', $value['cms_news_id'])->delete();
                CmsNewsDescription::insert($value);
            }
            //end lang

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
        $show = new Show(CmsNews::findOrFail($id));
        return $show;
    }
}
