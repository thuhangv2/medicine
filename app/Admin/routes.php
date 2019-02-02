<?php

use Illuminate\Routing\Router;

Admin::registerAuthRoutes();

Route::group([
    'prefix'     => config('admin.route.prefix'),
    'namespace'  => config('admin.route.namespace'),
    'middleware' => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index');
    $router->resource('banner', BannerController::class);
    $router->resource('language', LanguageController::class);
    $router->resource('currencies', CurrencyController::class);
//Config
    $router->resource('config_info', ConfigInfoController::class);
    $router->resource('config_global', ConfigGlobalController::class);
    $router->resource('config_layout', ConfigLayoutController::class);
    $router->any('/config_updateConfigField', 'ConfigInfoController@updateConfigField')
        ->name('updateConfigField');
//Cms

    $router->resource('cms_layout', CmsLayoutController::class);
    $router->get('/ckfinder', function () {
        return view('admin.ckfinder');
    });

//Shop
    $router->resource('shop_customer', ShopCustomerController::class);
    $router->resource('shop_order', ShopOrderController::class);
    $router->resource('shop_product', ShopProductController::class);
    $router->resource('shop_category', ShopCategoryController::class);
    $router->resource('shop_brand', ShopBrandController::class);
    $router->resource('shop_vendor', ShopVendorController::class);
    $router->resource('shop_order_status', ShopOrderStatusController::class);
    $router->resource('shop_payment_status', ShopPaymentStatusController::class);
    $router->resource('shop_shipping_status', ShopShipingStatusController::class);
    $router->resource('shop_special_price', ShopSpecialPriceController::class);
    $router->resource('shop_attribute_group', ShopAttributeGroupController::class);

//Get info
    $router->group(['prefix' => 'get_info'], function ($router) {
        $router->get('productInfo', 'ShopOrderController@getInfoProduct')->name('getInfoProduct');
        $router->get('userInfo', 'ShopOrderController@getInfoUser')->name('getInfoUser');
        $router->get('itemInfo', 'ShopOrderController@getInfoItem')->name('getInfoItem');
    });
//

    $router->group(['prefix' => 'shop_order_edit'], function ($router) {
        $router->get('/{id}', 'ShopOrderController@detailOrder')->name('order_edit_get');
        $router->post('/order_add_item', 'ShopOrderController@postAddItem')->name('order_add_item');
        $router->post('/order_edit_item', 'ShopOrderController@postEditItem')->name('order_edit_item');
        $router->post('/order_delete_item', 'ShopOrderController@postDeleteItem')->name('order_delete_item');
        $router->put('/shop_order_update', 'ShopOrderController@postOrderUpdate')->name('order_update');
    });

    $router->group(['prefix' => 'modules', 'namespace' => 'Modules'], function ($router) {
        $router->resource('cms/cms_category', CMS\CmsCategoryController::class);
        $router->resource('cms/cms_content', CMS\CmsContentController::class);
        $router->resource('cms/cms_news', CMS\CmsNewsController::class);
        $router->resource('cms/cms_page', CMS\CmsPageController::class);
        $router->resource('api/shop_api', API\ShopApiController::class);
    });

//Extensions
    $router->group(['prefix' => 'extensions'], function ($router) {
        $router->get('/{extensionGroup}', 'ExtensionsController@index')->name('extensionGroup');
        $router->post('/installExtension', 'ExtensionsController@installExtension')->name('installExtension');
        $router->post('/uninstallExtension', 'ExtensionsController@uninstallExtension')->name('uninstallExtension');
        $router->post('/enableExtension', 'ExtensionsController@enableExtension')->name('enableExtension');
        $router->post('/disableExtension', 'ExtensionsController@disableExtension')->name('disableExtension');
        $router->match(['put', 'post'], '/processExtension/{extensionGroup}/{extension}', 'ExtensionsController@processExtension')->name('processExtension');
    });
    //Extension Total/Discount
    $router->resource('shop_discount', Extensions\Total\Discount::class)->names('configDiscount');

//

//Language
    $router->post('locale/{code}', function ($code) {
        \App\Models\ConfigGlobal::first()->update(['locale' => $code]);
        return back();
    });
//

//Process Simpe
    $router->prefix('process')->group(function ($router) {
        $router->any('/productImport', 'ProcessController@importProduct');
    });

    $router->get('/report/{key}', 'ReportController@index');
});
