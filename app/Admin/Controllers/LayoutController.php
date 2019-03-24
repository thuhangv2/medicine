<?php
#app/Http/Admin/Controllers/LayoutController.php
namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Layout;
use App\Models\LayoutPage;
use App\Models\LayoutPosition;
use App\Models\LayoutType;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class LayoutController extends Controller
{
    use HasResourceActions;
    protected $arrPage;
    protected $arrPosition;
    protected $arrTypes;

    public function __construct()
    {
        $this->arrPage     = LayoutPage::getPages();
        $this->arrPosition = LayoutPosition::getPositions();
        $this->arrType     = LayoutType::getTypes();
    }

    /**
     * Index interface.
     *
     * @param Content $content
     * @return Content
     */
    public function index(Content $content)
    {
        return $content
            ->row('<span style="font-size:15px;font-style: italic;">(' . trans('language.layout.guide') . ')</span><br>')
            ->header(trans('language.layout.manager'))
            ->description(' ')
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
            ->header(trans('language.layout.manager'))
            ->description(' ')
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
            ->header(trans('language.layout.manager'))
            ->description(' ')
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
            ->header(trans('language.layout.manager'))
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
        $arrPage     = $this->arrPage;
        $arrPosition = $this->arrPosition;
        $arrType     = $this->arrType;
        $grid        = new Grid(new Layout);

        $grid->id('Id');
        $grid->name(trans('language.layout.name'));
        $grid->position(trans('language.layout.position'))->display(function ($value) use ($arrPosition) {
            return htmlentities($arrPosition[$value]);
        });
        $grid->type(trans('language.layout.type'))->display(function ($value) use ($arrType) {
            $style = "";
            if ($value == 'html') {
                $style = 'class="label label-primary"';
            } elseif ($value == 'view') {
                $style = 'class="label label-warning"';
            } elseif ($value == 'module') {
                $style = 'class="label label-danger"';
            }
            return "<span $style>" . $arrType[$value] . "</span>";
        });
        $grid->page(trans('language.layout.page'))->display(function ($value) use ($arrPage) {
            if (!$value) {
                return trans('language.layout.all_page');
            } else {
                $html = '';
                if (is_array($value)) {
                    foreach ($value as $key => $v) {
                        $html .= '+' . $arrPage[$v] . '<br>';
                    }
                }
                return $html;
            }

        })->style('max-width:200px;word-break:break-all;');
        $grid->content(trans('language.layout.page'))->display(function ($value) {
            return htmlentities($value);
        })->style('max-width:200px;word-break:break-all;');
        $grid->status(trans('language.layout.status'))->switch();
        $grid->sort(trans('language.layout.sort'));
        $grid->disableRowSelector();
        $grid->disableFilter();
        $grid->tools(function ($tools) {
            $tools->disableRefreshButton();
        });
        $grid->disableExport();
        $grid->actions(function ($actions) {
            $actions->disableView();
        });
        $grid->model()->orderBy('id', 'desc');
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
        $show = new Show(Layout::findOrFail($id));
        $show->id('Id');
        $show->name(trans('language.layout.name'));
        $show->position(trans('language.layout.position'));
        $show->page(trans('language.layout.page'));
        $show->content(trans('language.layout.page'));
        $show->status(trans('language.layout.status'));
        $show->sort(trans('language.layout.sort'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Layout);
        $form->text('name', trans('language.layout.name'))->rules('required');
        $form->select('position', trans('language.layout.position'))->options($this->arrPosition)->rules('required');
        $form->listbox('page', trans('language.layout.page'))->options($this->arrPage);
        $form->radio('type', trans('language.layout.type'))->options($this->arrType)->default('html');
        $form->textarea('content', trans('language.layout.content'));
        $form->switch('status', trans('language.layout.status'));
        $form->number('sort', trans('language.layout.sort'));
        $form->disableViewCheck();
        $form->disableEditingCheck();
        $form->tools(function (Form\Tools $tools) {
            $tools->disableView();
        });
        return $form;
    }
}
