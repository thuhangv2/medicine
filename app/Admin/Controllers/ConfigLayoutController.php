<?php
#app/Admin/Controller/ConfigLayoutController.php
namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use App\Models\ConfigLayout;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class ConfigLayoutController extends Controller
{
    use HasResourceActions;

    /**
     * Index interface.
     *
     * @param Content $content
     * @return Content
     */
    public function index(Content $content)
    {
        return $content
            ->header('Index')
            ->description('description')
            ->body($this->grid());
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
            ->description('description')
            ->body($this->detail($id));
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
            ->header('Edit')
            ->description('description')
            ->body($this->form()->edit($id));
    }

    /**
     * Create interface.
     *
     * @param Content $content
     * @return Content
     */
    public function create(Content $content)
    {
        return $content
            ->header('Create')
            ->description('description')
            ->body($this->form());
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new ConfigLayout);

        // $grid->id('Id');
        $grid->meta('Meta')->display(function ($text) {
            return '<div style="max-width:200px; overflow:auto;">' . htmlentities($text) . '</div>';
        });
        $grid->header('Header')->display(function ($text) {
            return '<div style="max-width:200px; overflow:auto;">' . htmlentities($text) . '</div>';
        });

        $grid->footer_top('Footer Top')->display(function ($text) {
            return '<div style="max-width:200px; overflow:auto;">' . htmlentities($text) . '</div>';
        });

        $grid->footer_bottom('Footer Bottom')->display(function ($text) {
            return '<div style="max-width:200px; overflow:auto;">' . htmlentities($text) . '</div>';
        });
        $grid->disableCreation();
        $grid->disableExport();
        $grid->disableRowSelector();
        $grid->disableFilter();
        $grid->actions(function ($actions) {
            $actions->disableView();
            $actions->disableDelete();
        });

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(ConfigLayout::findOrFail($id));

        $show->id('Id');
        $show->meta('Meta');
        $show->top('Top');
        $show->bottom('Bottom');

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new ConfigLayout);

        $form->html('Phần source này thêm bên dưới các thẻ <i><</i>meta<b>></b>');
        $form->textarea('meta', 'Meta');
        $form->html('Phần source này thêm ngay dưới thẻ <b><</b>body<b>></b>');
        $form->textarea('header', 'Header');
        $form->html('Phần source này thêm trên thẻ <b><</b>footer<b>></b>');
        $form->textarea('footer_top', 'Footer Top');
        $form->html('Phần source này thêm ngay trên thẻ <b><</b>/body<b>></b>');
        $form->textarea('footer_bottom', 'Footer Bottom');
        $form->disableViewCheck();
        $form->disableEditingCheck();
        $form->tools(function (Form\Tools $tools) {
            $tools->disableView();
            $tools->disableDelete();
        });
        return $form;
    }
}
