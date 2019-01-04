<?php
#app/Http/Admin/Controllers/CmsLayoutController.php
namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use App\Models\CmsLayout;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class CmsLayoutController extends Controller
{
    use HasResourceActions;
    const TOP    = 'top';
    const META   = 'meta';
    const HEADER = 'header';
    const BOTTOM = 'bottom';
    const FOOTER = 'footer';

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
        $grid = new Grid(new CmsLayout);

        $grid->id('Id');
        $grid->name('Name');
        $grid->position('Position');
        $grid->page_display('Page display');
        $grid->html('Html');
        $grid->status('Status');
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
        $show = new Show(CmsLayout::findOrFail($id));

        $show->id('Id');
        $show->name('Name');
        $show->position('Position');
        $show->page_display('Page display');
        $show->html('Html');
        $show->status('Status');
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
        $form = new Form(new CmsLayout);

        $form->number('id', 'Id');
        $form->text('name', 'Name');
        $form->select('position', 'Position')->options([self::META => 'Meta', self::TOP => 'Top', self::HEADER => 'Header', self::BOTTOM => 'Bottom', self::FOOTER => 'Footer']);
        $form->text('page_display', 'Page display');
        $form->text('html', 'Html');
        $form->switch('status', 'Status');
        $form->number('sort', 'Sort');
        return $form;
    }
}
