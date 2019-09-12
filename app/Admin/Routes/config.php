<?php
$router->group(['prefix' => 'config'], function ($router) {
    $router->get('/', 'AdminConfigController@index')->name('admin_config.index');
    $router->get('create', 'AdminConfigController@create')->name('admin_config.create');
    $router->post('/create', 'AdminConfigController@postCreate')->name('admin_config.create');
    $router->post('/ ', 'AdminConfigController@deleteList')->name('admin_config.delete');
    $router->post('/update_info', 'AdminConfigController@updateInfo')->name('admin_config.update');
});
