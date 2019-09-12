<?php
$router->group(['prefix' => 'layout_url'], function ($router) {
    $router->get('/', 'ShopLayoutUrlController@index')->name('admin_layout_url.index');
    $router->get('create', 'ShopLayoutUrlController@create')->name('admin_layout_url.create');
    $router->post('/create', 'ShopLayoutUrlController@postCreate')->name('admin_layout_url.create');
    $router->get('/edit/{id}', 'ShopLayoutUrlController@edit')->name('admin_layout_url.edit');
    $router->post('/edit/{id}', 'ShopLayoutUrlController@postEdit')->name('admin_layout_url.edit');
    $router->post('/delete', 'ShopLayoutUrlController@deleteList')->name('admin_layout_url.delete');
});
