<?php

Route::group(
    [
        'prefix' => 'extension/payment',
    ], function () {
        Route::get('paypal', 'Extensions\Payment\Paypal@index')->name('paypal');
        Route::get('return/{order_id}', 'Extensions\Payment\Paypal@getReturn')->name('returnPaypal');
    });
