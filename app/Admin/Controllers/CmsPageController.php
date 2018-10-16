<?php
#app/Http/Admin/Controllers/CmsPageController.php
namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use App\Models\CmsPage;
use Encore\Admin\Controllers\ModelForm;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class CmsPageController extends Controller
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
        $form          = new Form(new CmsPage);
        $arrParameters = request()->route()->parameters();
        $idCheck       = (int) end($arrParameters);
        $form->text('title', 'Tiêu đề trang')->rules('required', ['required' => 'Bạn chưa nhập tên']);
        $form->ckeditor('content', 'Nội dung');
        if ($idCheck == '1' || $idCheck == '2') {
            $form->display('uniquekey', 'Unique Key');
        } else {
            $form->text('uniquekey', 'Unique Key')->rules(function ($form) {
                return 'required|unique:cms_page,uniquekey,' . $form->model()->id . ',id';
            }, ['required' => 'Bạn chưa nhập mã trang', 'unique' => 'Mã trang này đã có rồi'])->placeholder('Ví dụ: thong-tin-khuyen-mai, tin-tuc,...')->help('Viết liền, không dấu, không được trùng nhau.');
        }
        $form->switch('status', 'Trạng thái');
        $form->divide('Hỗ trợ SEO');
        $form->html('<b>Hỗ trợ SEO</b>');
        $form->tags('keyword', 'Từ khóa');
        $form->textarea('description', 'Mô tả')->rules('max:300', ['max' => 'Tối đa 300 kí tự']);
        $form->disableViewCheck();
        $form->disableEditingCheck();
        $form->tools(function (Form\Tools $tools) use ($idCheck) {
            $tools->disableView();
            if ($idCheck == '1' || $idCheck == '2') {
                // 1: about, 2: contact
                $tools->disableDelete();
            }

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
