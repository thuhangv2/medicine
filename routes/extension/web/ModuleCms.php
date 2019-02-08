<?php

Route::group(
    [
        'namespace' => 'Modules',
    ], function () {
        Route::get('/news.html', 'Cms\News@news')->name('news');
        Route::get('/news/{name}_{id}.html', 'Cms\News@newsDetail')->name('newsDetail');
    });
