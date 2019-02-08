<?php

Route::group(
    [
        'namespace' => 'Modules',
    ], function () {
        //Cms news
        Route::get('/news.html', 'Cms\News@news')->name('news');
        Route::get('/news/{name}_{id}.html', 'Cms\News@newsDetail')->name('newsDetail');
        //Cms content
        Route::get('/cms/{name}_{id}.html', 'Cms\Content@category')->name('cmsCategory');
        Route::get('/entry/{name}_{id}.html', 'Cms\Content@content')->name('cmsContent');
    });
