<?php
$router->group(['prefix' => 'layout'], function ($router) {
    $router->get('/', 'ShopLayoutController@index')->name('admin_layout.index');
    $router->get('create', 'ShopLayoutController@create')->name('admin_layout.create');
    $router->post('/create', 'ShopLayoutController@postCreate')->name('admin_layout.create');
    $router->get('/edit/{id}', 'ShopLayoutController@edit')->name('admin_layout.edit');
    $router->post('/edit/{id}', 'ShopLayoutController@postEdit')->name('admin_layout.edit');
    $router->post('/delete', 'ShopLayoutController@deleteList')->name('admin_layout.delete');
});
