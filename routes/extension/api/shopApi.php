<?php

//Api product,order
Route::group([
    'namespace' => 'Modules\Api',
], function () {
    Route::get('/product', 'Product@index');
    Route::get('/order', 'Order@index');
});
