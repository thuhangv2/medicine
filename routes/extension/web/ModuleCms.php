<?php

Route::group(
    [
        'namespace' => 'App\Modules\Cms\Controllers',
    ], function () {
        //Cms news
        Route::get('/news.html', 'News@news')->name('news');
        Route::get('/news/{name}_{id}.html', 'News@newsDetail')->name('newsDetail');
        //Cms content
        Route::get('/cms/{name}_{id}.html', 'Content@category')->name('cmsCategory');
        Route::get('/entry/{name}_{id}.html', 'Content@content')->name('cmsContent');
    });
