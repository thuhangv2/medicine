<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use App\Models\ConfigGlobal;
use App\Models\Language;
use App\Models\ShopCurrency;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;

class ConfigGlobalController extends Controller
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

            $content->header(trans('language.admin.info_global'));
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

            $content->header(trans('language.admin.info_global'));
            $content->description(' ');

            $content->body($this->form()->edit($id));
        });
    }

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
        $arrTemplates = [];
        foreach (glob("scart_templates/*") as $value) {
            if (is_dir($value)) {
                $template                = explode('scart_templates/', $value)[1];
                $arrTemplates[$template] = $template;
            }
        }
        return Admin::grid(ConfigGlobal::class, function (Grid $grid) use ($arrTemplates) {

            $grid->html('&nbsp;');

            $grid->logo(trans('language.config.logo'))->image('', 50);
            if (\Helper::configs()['watermark']) {
                $grid->watermark(trans('language.config.watermark'))->image('', 50);
            }
            $grid->template(trans('language.config.template'))->editable('select', $arrTemplates);
            $grid->description(trans('language.config.description'))->expand(function () {
                $html = '<div class="padding5">';
                $html .= '<b>' . trans('language.config.title') . ': </b>' . $this->title . '<br>';
                $html .= '<b>' . trans('language.config.description') . ': </b>' . $this->description . '<br>';
                $html .= '<b>' . trans('language.config.keyword') . ': </b>' . $this->keyword . '<br>';
                $html .= '</div>';
                return $html;
            }, trans('language.admin.detail'));
            $grid->phone(trans('language.config.phone'));
            $grid->long_phone(trans('language.config.long_phone'))->display(function ($text) {
                return '<div style="max-width:150px; overflow:auto;">' . $text . '</div>';
            });
            $grid->time_active(trans('language.config.time_active'))->display(function ($text) {
                return '<div style="max-width:150px; overflow:auto;">' . $text . '</div>';
            });

            $grid->address(trans('language.config.address'))->display(function ($text) {
                return '<div style="max-width:150px; overflow:auto;">' . $text . '</div>';
            });
            $grid->email(trans('language.config.email'))->display(function ($text) {
                return '<div style="max-width:150px; overflow:auto;">' . $text . '</div>';
            });
            $grid->locale(trans('language.config.language'))->display(function ($locale) {
                $languages = Language::pluck('name', 'code')->all();
                return $languages[$locale];
            });
            $grid->currency(trans('language.config.currency'))->display(function ($currency) {
                $currencies = ShopCurrency::pluck('name', 'code')->all();
                return $currencies[$currency];
            });
            $grid->disableCreation();
            $grid->disableExport();
            $grid->disableRowSelector();
            $grid->disableFilter();
            $grid->disablePagination();
            $grid->actions(function ($actions) {
                $actions->disableView();
                $actions->disableDelete();
            });
            $grid->tools(function ($tools) {
                $tools->disableRefreshButton();
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
        $arrTemplates = [];
        foreach (glob("scart_templates/*") as $value) {
            if (is_dir($value)) {
                $template                = explode('scart_templates/', $value)[1];
                $arrTemplates[$template] = $template;
            }
        }
        return Admin::form(ConfigGlobal::class, function (Form $form) use ($arrTemplates) {
            $languages  = Language::pluck('name', 'code')->all();
            $currencies = ShopCurrency::where('status', 1)->pluck('name', 'code')->all();
            $form->image('logo', trans('language.config.logo'))->removable();
            if (\Helper::configs()['watermark']) {
                $form->image('watermark', trans('language.config.watermark'))->removable();
            }
            $form->select('template', trans('language.config.template'))->options($arrTemplates)->rules('required', ['required' => 'Please choose template']);
            $form->text('title', trans('language.config.title'));
            $form->textarea('description', trans('language.config.description'));
            $form->text('keyword', trans('language.config.keyword'));
            $form->text('phone', trans('language.config.phone'));
            $form->text('long_phone', trans('language.config.long_phone'));
            $form->text('time_active', trans('language.config.time_active'));
            $form->text('address', trans('language.config.address'));
            $form->text('email', trans('language.config.email'));
            $form->select('locale', trans('language.config.language'))->options($languages);
            $form->select('currency', trans('language.config.currency'))->options($currencies)->rules('required');
            $form->disableViewCheck();
            $form->disableEditingCheck();
            $form->tools(function (Form\Tools $tools) {
                $tools->disableView();
                $tools->disableDelete();
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
