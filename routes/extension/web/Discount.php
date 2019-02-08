<?php

Route::group(
    [
        'middleware' => ['localization', 'currency'],
        'prefix'     => 'extension/discount',
    ], function () {
        Route::post('/useDiscount', 'Extensions\Total\Discount@useDiscount')->name('useDiscount');
        Route::post('/removeDiscount', 'Extensions\Total\Discount@removeDiscount')->name('removeDiscount');
    });
