<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Config;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Illuminate\Http\Request;

class ConfigInfoController extends Controller
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

            $content->header('Thông tin cấu hình');
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
    // public function edit($id)
    // {
    //     return Admin::content(function (Content $content) use ($id) {

    //         $content->header('header');
    //         $content->description('description');

    //         $content->body($this->form()->edit($id));
    //     });
    // }

    /**
     * Create interface.
     *
     * @return Content
     */
    // public function create()
    // {
    //     return Admin::content(function (Content $content) {

    //         $content->header('header');
    //         $content->description('description');

    //         $content->body($this->form());
    //     });
    // }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Admin::grid(Config::class, function (Grid $grid) {

            $grid->id('Thứ tự')->sortable();
            $grid->detail('Thông tin')->sortable();
            $grid->value('Value')->editable();
            $grid->model()->where('code', 'info');
            $grid->disableCreation();
            $grid->disableExport();
            $grid->disableRowSelector();
            $grid->disableFilter();
            $grid->disableActions();
            $grid->model()->orderBy('sort', 'asc');
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
        return Admin::form(Config::class, function (Form $form) {

            $form->display('id', 'ID');
            $form->text('code', 'Code');
            $form->text('key', 'Key');
            $form->text('value', 'Value');
            $form->disableViewCheck();
            $form->disableEditingCheck();
            $form->tools(function (Form\Tools $tools) {
                $tools->disableView();
            });
        });
    }

    public function paypalConfigPost(Request $request)
    {
        dd($request->all());
        $key   = $request->input('pk');
        $field = $request->input('name');
        $value = $request->input('value');
        Config::where('key', $key)->update(['value' => $value]);

    }

    public function paypalConfig()
    {
        return Admin::content(function (Content $content) {

            $content->header('Order #');
            // $content->description('description');
            $content->body(
                $this->viewPaypalConfig()
            );
        });
    }

    public function viewPaypalConfig()
    {
        $title  = 'Title';
        $paypal = Config::where('code', 'payment_paypal')->get();
        if ($paypal === null) {
            return 'no data';
        }
        $fields = [];
        foreach ($paypal as $key => $field) {
            $data['title']    = $field->detail;
            $data['field']    = $field->key;
            $data['key']      = $field->key;
            $data['value']    = $field->value;
            $data['disabled'] = 0;
            $data['required'] = 1;
            if ($field->key) {
                $data['type'] = 'text';
            } else {
                $data['type'] = 'textarea';
            }
            $data['url'] = route('paypalConfigPost');
            $fields[]    = $data;
        }
        return view('admin.CustomEdit')->with([
            "datas" => $fields, "title" => $title,
        ])->render();
    }

}
