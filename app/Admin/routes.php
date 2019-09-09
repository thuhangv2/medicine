<?php

use Illuminate\Routing\Router;

Route::group([
    'middleware' => config('admin.route.middleware'),
    'namespace' => config('admin.route.namespace'),
    'prefix' => config('admin.route.prefix'),
], function (Router $router) {
    foreach (glob(__DIR__ . '/Routes/*.php') as $filename) {
        require_once $filename;
    }
    $router->get('/', 'HomeController@index')->name('homeAdmin');
    $router->get('deny', 'HomeController@deny')->name('admin.deny');

    //Language
    $router->get('locale/{code}', function ($code) {
        session(['locale' => $code]);
        return back();
    })->name('admin.locale');

});
