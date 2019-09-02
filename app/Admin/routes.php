<?php

use Illuminate\Routing\Router;

Route::group([
    'middleware' => config('admin.route.middleware'),
    'namespace' => config('admin.route.namespace'),
    'prefix' => config('admin.route.prefix'),
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('homeAdmin');
    $router->get('deny', 'HomeController@deny')->name('admin.deny');
//Language
    $router->get('locale/{code}', function ($code) {
        session(['locale' => $code]);
        return back();
    })->name('admin.locale');

//Auth
    $router->group(['prefix' => 'auth'], function ($router) {
        $authController = Auth\LoginController::class;
        $router->get('login', $authController . '@getLogin')->name('admin.login');
        $router->post('login', $authController . '@postLogin')->name('admin.login');
        $router->get('logout', $authController . '@getLogout')->name('admin.logout');
        $router->get('setting', $authController . '@getSetting')->name('admin.setting');
        $router->post('setting', $authController . '@putSetting')->name('admin.setting');
    });
//end Auth

//User  manager
    $router->group(['prefix' => 'user'], function ($router) {
        $router->get('/', 'Auth\UsersController@index')->name('admin_user.index');
        $router->get('create', 'Auth\UsersController@create')->name('admin_user.create');
        $router->post('/create', 'Auth\UsersController@postCreate')->name('admin_user.create');
        $router->get('/edit/{id}', 'Auth\UsersController@edit')->name('admin_user.edit');
        $router->post('/edit/{id}', 'Auth\UsersController@postEdit')->name('admin_user.edit');
        $router->post('/delete', 'Auth\UsersController@deleteList')->name('admin_user.delete');
    });
//End user

//Roles  manager
    $router->group(['prefix' => 'role'], function ($router) {
        $router->get('/', 'Auth\RoleController@index')->name('admin_role.index');
        $router->get('create', 'Auth\RoleController@create')->name('admin_role.create');
        $router->post('/create', 'Auth\RoleController@postCreate')->name('admin_role.create');
        $router->get('/edit/{id}', 'Auth\RoleController@edit')->name('admin_role.edit');
        $router->post('/edit/{id}', 'Auth\RoleController@postEdit')->name('admin_role.edit');
        $router->post('/delete', 'Auth\RoleController@deleteList')->name('admin_role.delete');
    });
//End Roles

//Permission  manager
    $router->group(['prefix' => 'permission'], function ($router) {
        $router->get('/', 'Auth\PermissionController@index')->name('admin_permission.index');
        $router->get('create', 'Auth\PermissionController@create')->name('admin_permission.create');
        $router->post('/create', 'Auth\PermissionController@postCreate')->name('admin_permission.create');
        $router->get('/edit/{id}', 'Auth\PermissionController@edit')->name('admin_permission.edit');
        $router->post('/edit/{id}', 'Auth\PermissionController@postEdit')->name('admin_permission.edit');
        $router->post('/delete', 'Auth\PermissionController@deleteList')->name('admin_permission.delete');
    });
//End Permission

//Log  manager
    $router->group(['prefix' => 'log'], function ($router) {
        $router->get('/', 'AdminLogController@index')->name('admin_log.index');
        $router->post('/delete', 'AdminLogController@deleteList')->name('admin_log.delete');
    });
//End Log

//Permission  manager
    $router->group(['prefix' => 'menu'], function ($router) {
        $router->get('/', 'MenuController@index')->name('admin_menu.index');
        $router->post('/create', 'MenuController@postCreate')->name('admin_menu.create');
        $router->get('/edit/{id}', 'MenuController@edit')->name('admin_menu.edit');
        $router->post('/edit/{id}', 'MenuController@postEdit')->name('admin_menu.edit');
        $router->post('/delete', 'MenuController@deleteList')->name('admin_menu.delete');
        $router->post('/update_sort', 'MenuController@updateSort')->name('admin_menu.update_sort');
    });
//End Permission

//Order managr
    $router->group(['prefix' => 'order'], function ($router) {
        $router->get('/', 'ShopOrderController@index')->name('admin_order.index');
        $router->get('/detail/{id}', 'ShopOrderController@detail')->name('admin_order.detail');
        $router->get('create', 'ShopOrderController@create')->name('admin_order.create');
        $router->post('/create', 'ShopOrderController@postCreate')->name('admin_order.create');
        $router->post('/add_item', 'ShopOrderController@postAddItem')->name('admin_order.add_item');
        $router->post('/edit_item', 'ShopOrderController@postEditItem')->name('admin_order.edit_item');
        $router->post('/delete_item', 'ShopOrderController@postDeleteItem')->name('admin_order.delete_item');
        $router->post('/update', 'ShopOrderController@postOrderUpdate')->name('admin_order.update');
        $router->post('/delete', 'ShopOrderController@deleteList')->name('admin_order.delete');
        $router->get('/product_info', 'ShopOrderController@getInfoProduct')->name('admin_order.product_info');
        $router->get('/user_info', 'ShopOrderController@getInfoUser')->name('admin_order.user_info');
        $router->get('/export_detail', 'ShopOrderController@exportDetail')->name('admin_order.export_detail');

    });
//=order manager

//Report
    $router->group(['prefix' => 'report'], function ($router) {
        $router->get('/product', 'ReportController@product')->name('admin_report.product');
    });
//=Report

//Order status
    $router->group(['prefix' => 'order_status'], function ($router) {
        $router->get('/', 'ShopOrderStatusController@index')->name('admin_order_status.index');
        $router->get('create', 'ShopOrderStatusController@create')->name('admin_order_status.create');
        $router->post('/create', 'ShopOrderStatusController@postCreate')->name('admin_order_status.create');
        $router->get('/edit/{id}', 'ShopOrderStatusController@edit')->name('admin_order_status.edit');
        $router->post('/edit/{id}', 'ShopOrderStatusController@postEdit')->name('admin_order_status.edit');
        $router->post('/delete', 'ShopOrderStatusController@deleteList')->name('admin_order_status.delete');
    });
//=Order status

//Shipping status
    $router->group(['prefix' => 'shipping_status'], function ($router) {
        $router->get('/', 'ShopShipingStatusController@index')->name('admin_shipping_status.index');
        $router->get('create', 'ShopShipingStatusController@create')->name('admin_shipping_status.create');
        $router->post('/create', 'ShopShipingStatusController@postCreate')->name('admin_shipping_status.create');
        $router->get('/edit/{id}', 'ShopShipingStatusController@edit')->name('admin_shipping_status.edit');
        $router->post('/edit/{id}', 'ShopShipingStatusController@postEdit')->name('admin_shipping_status.edit');
        $router->post('/delete', 'ShopShipingStatusController@deleteList')->name('admin_shipping_status.delete');
    });
//=Shipping status

//Payment status
    $router->group(['prefix' => 'payment_status'], function ($router) {
        $router->get('/', 'ShopPaymentStatusController@index')->name('admin_payment_status.index');
        $router->get('create', 'ShopPaymentStatusController@create')->name('admin_payment_status.create');
        $router->post('/create', 'ShopPaymentStatusController@postCreate')->name('admin_payment_status.create');
        $router->get('/edit/{id}', 'ShopPaymentStatusController@edit')->name('admin_payment_status.edit');
        $router->post('/edit/{id}', 'ShopPaymentStatusController@postEdit')->name('admin_payment_status.edit');
        $router->post('/delete', 'ShopPaymentStatusController@deleteList')->name('admin_payment_status.delete');
    });
//=Payment status

//Category
    $router->group(['prefix' => 'category'], function ($router) {
        $router->get('/', 'ShopCategoryController@index')->name('admin_category.index');
        $router->get('create', 'ShopCategoryController@create')->name('admin_category.create');
        $router->post('/create', 'ShopCategoryController@postCreate')->name('admin_category.create');
        $router->get('/edit/{id}', 'ShopCategoryController@edit')->name('admin_category.edit');
        $router->post('/edit/{id}', 'ShopCategoryController@postEdit')->name('admin_category.edit');
        $router->post('/delete', 'ShopCategoryController@deleteList')->name('admin_category.delete');
    });
//=Category

//Vendor
    $router->group(['prefix' => 'vendor'], function ($router) {
        $router->get('/', 'ShopVendorController@index')->name('admin_vendor.index');
        $router->get('create', 'ShopVendorController@create')->name('admin_vendor.create');
        $router->post('/create', 'ShopVendorController@postCreate')->name('admin_vendor.create');
        $router->get('/edit/{id}', 'ShopVendorController@edit')->name('admin_vendor.edit');
        $router->post('/edit/{id}', 'ShopVendorController@postEdit')->name('admin_vendor.edit');
        $router->post('/delete', 'ShopVendorController@deleteList')->name('admin_vendor.delete');
    });
//=Vendor

//Brand
    $router->group(['prefix' => 'brand'], function ($router) {
        $router->get('/', 'ShopBrandController@index')->name('admin_brand.index');
        $router->get('create', 'ShopBrandController@create')->name('admin_brand.create');
        $router->post('/create', 'ShopBrandController@postCreate')->name('admin_brand.create');
        $router->get('/edit/{id}', 'ShopBrandController@edit')->name('admin_brand.edit');
        $router->post('/edit/{id}', 'ShopBrandController@postEdit')->name('admin_brand.edit');
        $router->post('/delete', 'ShopBrandController@deleteList')->name('admin_brand.delete');
    });
//=Brand

//Attribute
    $router->group(['prefix' => 'attribute_group'], function ($router) {
        $router->get('/', 'ShopAttributeGroupController@index')->name('admin_attribute_group.index');
        $router->get('create', 'ShopAttributeGroupController@create')->name('admin_attribute_group.create');
        $router->post('/create', 'ShopAttributeGroupController@postCreate')->name('admin_attribute_group.create');
        $router->get('/edit/{id}', 'ShopAttributeGroupController@edit')->name('admin_attribute_group.edit');
        $router->post('/edit/{id}', 'ShopAttributeGroupController@postEdit')->name('admin_attribute_group.edit');
        $router->post('/delete', 'ShopAttributeGroupController@deleteList')->name('admin_attribute_group.delete');
    });
//=Attribute

//Product
    $router->group(['prefix' => 'product'], function ($router) {
        $router->get('/', 'ShopProductController@index')->name('admin_product.index');
        $router->get('create', 'ShopProductController@create')->name('admin_product.create');
        $router->post('/create', 'ShopProductController@postCreate')->name('admin_product.create');
        $router->get('/edit/{id}', 'ShopProductController@edit')->name('admin_product.edit');
        $router->post('/edit/{id}', 'ShopProductController@postEdit')->name('admin_product.edit');
        $router->post('/delete', 'ShopProductController@deleteList')->name('admin_product.delete');
        $router->get('/import', 'ShopProductController@import')->name('admin_product.import');
        $router->post('/import', 'ShopProductController@postImport')->name('admin_product.import');
    });
//=Product

//Customer
    $router->group(['prefix' => 'customer'], function ($router) {
        $router->get('/', 'ShopCustomerController@index')->name('admin_customer.index');
        $router->get('create', 'ShopCustomerController@create')->name('admin_customer.create');
        $router->post('/create', 'ShopCustomerController@postCreate')->name('admin_customer.create');
        $router->get('/edit/{id}', 'ShopCustomerController@edit')->name('admin_customer.edit');
        $router->post('/edit/{id}', 'ShopCustomerController@postEdit')->name('admin_customer.edit');
        $router->post('/delete', 'ShopCustomerController@deleteList')->name('admin_customer.delete');
    });
//=Customer

//Subscribe
    $router->group(['prefix' => 'subscribe'], function ($router) {
        $router->get('/', 'ShopSubscribeController@index')->name('admin_subscribe.index');
        $router->get('create', 'ShopSubscribeController@create')->name('admin_subscribe.create');
        $router->post('/create', 'ShopSubscribeController@postCreate')->name('admin_subscribe.create');
        $router->get('/edit/{id}', 'ShopSubscribeController@edit')->name('admin_subscribe.edit');
        $router->post('/edit/{id}', 'ShopSubscribeController@postEdit')->name('admin_subscribe.edit');
        $router->post('/delete', 'ShopSubscribeController@deleteList')->name('admin_subscribe.delete');
    });
//=Subscribe

//config
    $router->group(['prefix' => 'config'], function ($router) {
        $router->get('/', 'AdminConfigController@index')->name('admin_config.index');
        $router->get('create', 'AdminConfigController@create')->name('admin_config.create');
        $router->post('/create', 'AdminConfigController@postCreate')->name('admin_config.create');
        $router->post('/ ', 'AdminConfigController@deleteList')->name('admin_config.delete');
        $router->post('/update_info', 'AdminConfigController@updateInfo')->name('admin_config.update');
    });
//=config

//sc_store
    $router->group(['prefix' => 'store'], function ($router) {
        $router->get('/', 'AdminStoreController@index')->name('admin_store.index');
        $router->post('/delete', 'AdminStoreController@deleteList')->name('admin_store.delete');
        $router->post('/update_info', 'AdminStoreController@updateInfo')->name('admin_store.update');
    });
//=sc_store

//email
    $router->group(['prefix' => 'email'], function ($router) {
        $router->get('/', 'ShopEmailController@index')->name('admin_email.index');
        $router->post('/delete', 'ShopEmailController@deleteList')->name('admin_email.delete');
        $router->post('/update_info', 'ShopEmailController@updateInfo')->name('admin_email.update');
    });
//=email

//email_template
    $router->group(['prefix' => 'email_template'], function ($router) {
        $router->get('/', 'ShopEmailTemplateController@index')->name('admin_email_template.index');
        $router->get('create', 'ShopEmailTemplateController@create')->name('admin_email_template.create');
        $router->post('/create', 'ShopEmailTemplateController@postCreate')->name('admin_email_template.create');
        $router->get('/edit/{id}', 'ShopEmailTemplateController@edit')->name('admin_email_template.edit');
        $router->post('/edit/{id}', 'ShopEmailTemplateController@postEdit')->name('admin_email_template.edit');
        $router->post('/delete', 'ShopEmailTemplateController@deleteList')->name('admin_email_template.delete');
    });
//=email_template

//Language
    $router->group(['prefix' => 'language'], function ($router) {
        $router->get('/', 'ShopLanguageController@index')->name('admin_language.index');
        $router->get('create', 'ShopLanguageController@create')->name('admin_language.create');
        $router->post('/create', 'ShopLanguageController@postCreate')->name('admin_language.create');
        $router->get('/edit/{id}', 'ShopLanguageController@edit')->name('admin_language.edit');
        $router->post('/edit/{id}', 'ShopLanguageController@postEdit')->name('admin_language.edit');
        $router->post('/delete', 'ShopLanguageController@deleteList')->name('admin_language.delete');
    });
//=Language

//Currency
    $router->group(['prefix' => 'currency'], function ($router) {
        $router->get('/', 'ShopCurrencyController@index')->name('admin_currency.index');
        $router->get('create', 'ShopCurrencyController@create')->name('admin_currency.create');
        $router->post('/create', 'ShopCurrencyController@postCreate')->name('admin_currency.create');
        $router->get('/edit/{id}', 'ShopCurrencyController@edit')->name('admin_currency.edit');
        $router->post('/edit/{id}', 'ShopCurrencyController@postEdit')->name('admin_currency.edit');
        $router->post('/delete', 'ShopCurrencyController@deleteList')->name('admin_currency.delete');
    });
//=Currency

//Backup
    $router->group(['prefix' => 'backup'], function ($router) {
        $router->get('/', 'BackupController@index')->name('admin_backup.index');
        $router->post('generate', 'BackupController@generateBackup')->name('admin.backup.generate');
        $router->post('process', 'BackupController@processBackupFile')->name('admin.backup.process');
    });
//=Backup

//Page
    $router->group(['prefix' => 'page'], function ($router) {
        $router->get('/', 'ShopPageController@index')->name('admin_page.index');
        $router->get('create', 'ShopPageController@create')->name('admin_page.create');
        $router->post('/create', 'ShopPageController@postCreate')->name('admin_page.create');
        $router->get('/edit/{id}', 'ShopPageController@edit')->name('admin_page.edit');
        $router->post('/edit/{id}', 'ShopPageController@postEdit')->name('admin_page.edit');
        $router->post('/delete', 'ShopPageController@deleteList')->name('admin_page.delete');
    });
//=Page

//Banner
    $router->group(['prefix' => 'banner'], function ($router) {
        $router->get('/', 'ShopBannerController@index')->name('admin_banner.index');
        $router->get('create', 'ShopBannerController@create')->name('admin_banner.create');
        $router->post('/create', 'ShopBannerController@postCreate')->name('admin_banner.create');
        $router->get('/edit/{id}', 'ShopBannerController@edit')->name('admin_banner.edit');
        $router->post('/edit/{id}', 'ShopBannerController@postEdit')->name('admin_banner.edit');
        $router->post('/delete', 'ShopBannerController@deleteList')->name('admin_banner.delete');
    });
//=Banner

//Layout
    $router->group(['prefix' => 'layout'], function ($router) {
        $router->get('/', 'ShopLayoutController@index')->name('admin_layout.index');
        $router->get('create', 'ShopLayoutController@create')->name('admin_layout.create');
        $router->post('/create', 'ShopLayoutController@postCreate')->name('admin_layout.create');
        $router->get('/edit/{id}', 'ShopLayoutController@edit')->name('admin_layout.edit');
        $router->post('/edit/{id}', 'ShopLayoutController@postEdit')->name('admin_layout.edit');
        $router->post('/delete', 'ShopLayoutController@deleteList')->name('admin_layout.delete');
    });
//=Layout

//Layout url
    $router->group(['prefix' => 'layout_url'], function ($router) {
        $router->get('/', 'ShopLayoutUrlController@index')->name('admin_layout_url.index');
        $router->get('create', 'ShopLayoutUrlController@create')->name('admin_layout_url.create');
        $router->post('/create', 'ShopLayoutUrlController@postCreate')->name('admin_layout_url.create');
        $router->get('/edit/{id}', 'ShopLayoutUrlController@edit')->name('admin_layout_url.edit');
        $router->post('/edit/{id}', 'ShopLayoutUrlController@postEdit')->name('admin_layout_url.edit');
        $router->post('/delete', 'ShopLayoutUrlController@deleteList')->name('admin_layout_url.delete');
    });
//=Layout url

//Template url
    $router->group(['prefix' => 'template'], function ($router) {
        $router->get('/', 'ShopTemplateController@index')->name('admin_template.index');
        $router->post('changeTemplate', 'ShopTemplateController@changeTemplate')->name('admin_template.changeTemplate');
    });

//=Template url

//Shop discount
    $router->group(['prefix' => 'shop_discount'], function ($router) {
        $router->get('/', 'Extensions\Total\DiscountController@index')->name('admin_discount.index');
        $router->get('create', 'Extensions\Total\DiscountController@create')->name('admin_discount.create');
        $router->post('/create', 'Extensions\Total\DiscountController@postCreate')->name('admin_discount.create');
        $router->get('/edit/{id}', 'Extensions\Total\DiscountController@edit')->name('admin_discount.edit');
        $router->post('/edit/{id}', 'Extensions\Total\DiscountController@postEdit')->name('admin_discount.edit');
        $router->post('/delete', 'Extensions\Total\DiscountController@deleteList')->name('admin_discount.delete');
    });
//=Shop discount

//Extensions
    $router->group(['prefix' => 'extension'], function ($router) {
        $router->get('/{extensionGroup}', 'ExtensionsController@index')->name('admin_extension');
        $router->post('/install', 'ExtensionsController@install')->name('admin_extension.install');
        $router->post('/uninstall', 'ExtensionsController@uninstall')->name('admin_extension.uninstall');
        $router->post('/enable', 'ExtensionsController@enable')->name('admin_extension.enable');
        $router->post('/disable', 'ExtensionsController@disable')->name('admin_extension.disable');
        $router->match(['put', 'post'], '/process/{extensionGroup}/{extension}', 'ExtensionsController@process')->name('admin_extension.process');
    });
//end extensions

//Modules
    $router->group(['prefix' => 'module'], function ($router) {
        $router->get('/{moduleGroup}', 'ModulesController@index')->name('admin_module');
        $router->post('/install', 'ModulesController@install')->name('admin_module.install');
        $router->post('/uninstall', 'ModulesController@uninstall')->name('admin_module.uninstall');
        $router->post('/enable', 'ModulesController@enable')->name('admin_module.enable');
        $router->post('/disable', 'ModulesController@disable')->name('admin_module.disable');
        $router->match(['put', 'post'], '/process/{moduleGroup}/{module}', 'ModulesController@process')->name('admin_module.process');
    });

    $router->group(['prefix' => 'cms_category'], function ($router) {
        $router->get('/', 'Modules\Cms\CmsCategoryController@index')->name('admin_cms_category.index');
        $router->get('create', 'Modules\Cms\CmsCategoryController@create')->name('admin_cms_category.create');
        $router->post('/create', 'Modules\Cms\CmsCategoryController@postCreate')->name('admin_cms_category.create');
        $router->get('/edit/{id}', 'Modules\Cms\CmsCategoryController@edit')->name('admin_cms_category.edit');
        $router->post('/edit/{id}', 'Modules\Cms\CmsCategoryController@postEdit')->name('admin_cms_category.edit');
        $router->post('/delete', 'Modules\Cms\CmsCategoryController@deleteList')->name('admin_cms_category.delete');
    });

    $router->group(['prefix' => 'cms_content'], function ($router) {
        $router->get('/', 'Modules\Cms\CmsContentController@index')->name('admin_cms_content.index');
        $router->get('create', 'Modules\Cms\CmsContentController@create')->name('admin_cms_content.create');
        $router->post('/create', 'Modules\Cms\CmsContentController@postCreate')->name('admin_cms_content.create');
        $router->get('/edit/{id}', 'Modules\Cms\CmsContentController@edit')->name('admin_cms_content.edit');
        $router->post('/edit/{id}', 'Modules\Cms\CmsContentController@postEdit')->name('admin_cms_content.edit');
        $router->post('/delete', 'Modules\Cms\CmsContentController@deleteList')->name('admin_cms_content.delete');
    });

    $router->group(['prefix' => 'news'], function ($router) {
        $router->get('/', 'ShopNewsController@index')->name('admin_news.index');
        $router->get('create', 'ShopNewsController@create')->name('admin_news.create');
        $router->post('/create', 'ShopNewsController@postCreate')->name('admin_news.create');
        $router->get('/edit/{id}', 'ShopNewsController@edit')->name('admin_news.edit');
        $router->post('/edit/{id}', 'ShopNewsController@postEdit')->name('admin_news.edit');
        $router->post('/delete', 'ShopNewsController@deleteList')->name('admin_news.delete');
    });

//end modules

//==Route file manager
    Route::group(['prefix' => 'uploads', 'namespace' => '\\UniSharp\\LaravelFilemanager\\Controllers\\'], function () {

        // display main layout
        Route::get('/', [
            'uses' => 'LfmController@show',
            'as' => 'unisharp.lfm.show',
        ]);

        // display integration error messages
        Route::get('/errors', [
            'uses' => 'LfmController@getErrors',
            'as' => 'unisharp.lfm.getErrors',
        ]);

        // upload
        Route::post('/upload', [
            'uses' => 'UploadController@upload',
            'as' => 'unisharp.lfm.upload',
        ]);

        // list images & files
        Route::get('/jsonitems', [
            'uses' => 'ItemsController@getItems',
            'as' => 'unisharp.lfm.getItems',
        ]);

        Route::get('/move', [
            'uses' => 'ItemsController@move',
            'as' => 'unisharp.lfm.move',
        ]);

        Route::get('/domove', [
            'uses' => 'ItemsController@domove',
            'as' => 'unisharp.lfm.domove',
        ]);

        // folders
        Route::get('/newfolder', [
            'uses' => 'FolderController@getAddfolder',
            'as' => 'unisharp.lfm.getAddfolder',
        ]);

        // list folders
        Route::get('/folders', [
            'uses' => 'FolderController@getFolders',
            'as' => 'unisharp.lfm.getFolders',
        ]);

        // crop
        Route::get('/crop', [
            'uses' => 'CropController@getCrop',
            'as' => 'unisharp.lfm.getCrop',
        ]);
        Route::get('/cropimage', [
            'uses' => 'CropController@getCropimage',
            'as' => 'unisharp.lfm.getCropimage',
        ]);
        Route::get('/cropnewimage', [
            'uses' => 'CropController@getNewCropimage',
            'as' => 'unisharp.lfm.getCropimage',
        ]);

        // rename
        Route::get('/rename', [
            'uses' => 'RenameController@getRename',
            'as' => 'unisharp.lfm.getRename',
        ]);

        // scale/resize
        Route::get('/resize', [
            'uses' => 'ResizeController@getResize',
            'as' => 'unisharp.lfm.getResize',
        ]);
        Route::get('/doresize', [
            'uses' => 'ResizeController@performResize',
            'as' => 'unisharp.lfm.performResize',
        ]);

        // download
        Route::get('/download', [
            'uses' => 'DownloadController@getDownload',
            'as' => 'unisharp.lfm.getDownload',
        ]);

        // delete
        Route::get('/delete', [
            'uses' => 'DeleteController@getDelete',
            'as' => 'unisharp.lfm.getDelete',
        ]);
    });
});
