<?php
#app/Http/Admin/Controllers/BannerController.php
namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Banner;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class BannerController extends Controller
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
            ->header('Quản lý banner')
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
            ->header('Chỉnh sửa banner')
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
            ->header('Thêm banner mới')
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
        $grid = new Grid(new Banner);
        $grid->id('ID')->sortable();
        $grid->image('Image')->image('', 50);
        $grid->url('url');
        $grid->html('html');
        $grid->status('status')->switch();
        $grid->sort('sort')->sortable();
        $grid->actions(function ($actions) {
            $actions->disableView();
        });
        $grid->created_at();
        $grid->updated_at();
        $grid->model()->orderBy('id', 'desc');
        $grid->disableExport();
        return $grid;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Banner);
        $form->image('image', 'image')->uniqueName()->move('banner')->removable();
        $form->textarea('html', 'html');
        $form->text('url', 'Link liên kết');
        $form->switch('status', 'status');
        $form->number('sort', 'sort');
        $form->display('created_at', 'Created At');
        $form->display('updated_at', 'Updated At');
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
        $show = new Show(Banner::findOrFail($id));
        return $show;
    }

}
