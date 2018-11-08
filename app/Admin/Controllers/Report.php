<?php
#app/Http/Admin/Controllers/Report.php
namespace App\Admin\Controllers;

use App\Admin\Extensions\ExcelExpoter;
use App\Http\Controllers\Controller;
use App\Models\ShopProduct;
use App\User;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;

class Report extends Controller
{
    use HasResourceActions;
    /**
     * Index interface.
     *
     * @return Content
     */
    public function index($key, Content $content)
    {
        return $content
            ->header('Index')
            ->description(' ')
            ->body($this->{$key}());
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function customer()
    {
        $grid = new Grid(new User);
        $grid->id('ID')->sortable();
        $grid->name(trans('language.customer.name'))->sortable();
        $grid->email('Email')->sortable();
        $grid->phone(trans('language.customer.phone'))->sortable();
        $grid->address(trans('language.customer.address'))->display(function () {
            return $this->address1 . ' ' . $this->address2;
        });
        $grid->order_total(trans('language.customer.order_total'));
        $grid->order_amount(trans('language.customer.amount_total'))->display(function ($order_amount) {
            return number_format($order_amount);
        });

        $grid->disableCreation();
        $grid->disableExport();
        $grid->disableRowSelector();
        $grid->disableFilter();
        $grid->disableActions();
        $grid->disablePagination();
        $grid->tools(function ($tools) {
            $tools->disableRefreshButton();
        });
        $grid->paginate(100);
        $grid->exporter(new ExcelExpoter('dataCustomer', 'Customer list'));

        return $grid;
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function product()
    {
        $grid = new Grid(new ShopProduct);
        $grid->id('ID')->sortable();
        $grid->sku(trans('language.product.sku'))->sortable();
        $grid->name(trans('language.product.name'));
        $grid->category(trans('language.product.category'))->display(function () {
            return ShopProduct::find($this->id)->category->name;
        });
        $grid->email('Email')->sortable();
        $grid->phone(trans('language.customer.phone'))->sortable();
        $grid->address(trans('language.customer.address'))->display(function () {
            return $this->address1 . ' ' . $this->address2;
        });
        $grid->order_total(trans('language.customer.order_total'));
        $grid->order_amount(trans('language.customer.amount_total'))->display(function ($order_amount) {
            return number_format($order_amount);
        });

        $grid->disableCreation();
        $grid->disableExport();
        $grid->disableRowSelector();
        $grid->disableFilter();
        $grid->disableActions();
        $grid->disablePagination();
        $grid->tools(function ($tools) {
            $tools->disableRefreshButton();
        });
        $grid->paginate(100);
        $grid->exporter(new ExcelExpoter('dataCustomer', 'Customer list'));

        return $grid;
    }

}
