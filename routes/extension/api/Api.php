<?php
//Api product,order
Route::group([
    'namespace' => 'App\Modules\Api',
], function () {
    Route::get('/product', 'Product@index');
    Route::get('/order', 'Order@index');
});
