<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
 */

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

//Api product
Route::group([
    'prefix'    => 'product',
    'namespace' => 'Modules\Api',
], function () {
    Route::get('/', 'Product@index');
});

//Api order
Route::group([
    'prefix'    => 'order',
    'namespace' => 'Modules\Api',
], function () {
    Route::get('/', 'Order@index');
});
