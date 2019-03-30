<?php

namespace App\Admin\Controllers;

use App\Models\LayoutUrl;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class LayoutUrlController extends Controller
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
        $grid = new Grid(new LayoutUrl);

        $grid->id('Id');
        $grid->name('Name');
        $grid->url('Url');
        $grid->action('Action');
        $grid->group('Group');
        $grid->type('Type');
        $grid->sort('Sort');

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
        $show = new Show(LayoutUrl::findOrFail($id));

        $show->id('Id');
        $show->name('Name');
        $show->url('Url');
        $show->action('Action');
        $show->group('Group');
        $show->type('Type');
        $show->sort('Sort');

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new LayoutUrl);

        $form->text('name', 'Name');
        $form->url('url', 'Url');
        $form->text('action', 'Action');
        $form->text('group', 'Group');
        $form->text('type', 'Type');
        $form->switch('sort', 'Sort');

        return $form;
    }
}
