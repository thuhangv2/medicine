<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
 */
Auth::routes();
//============================
Route::get('/', 'ShopFront@index')->name('home');
Route::get('index.html', 'ShopFront@index');
Route::get('/shop/{name}_{id}.html', 'ShopFront@productToCategory');
Route::get('/product/{name}_{id}.html', 'ShopFront@productDetail');
Route::get('/brand/{name}_{id}/{category?}', 'ShopFront@productBrand');
Route::get('/profile.html', [
    'middleware' => 'auth',
    'uses'       => 'ShopFront@profile',
]);

//Front
Route::get('/products.html', 'ShopFront@allProducts')->name('products');
Route::get('/search.html', 'ShopFront@search')->name('search');
Route::get('/forgot.html', 'ShopFront@forgot')->name('forgot');
Route::get('/contact.html', 'ShopFront@getContact')->name('contact');
Route::post('/contact.html', 'ShopFront@postContact');
//End Front

//Cart
Route::get('/wishlist.html', 'ShopCart@wishlist')->name('wishlist');
Route::get('/compare.html', 'ShopCart@compare')->name('compare');
Route::get('/cart.html', 'ShopCart@getCart')->name('cart');
Route::post('/cart.html', 'ShopCart@postCart')->name('postCart');
Route::get('/checkout.html', 'ShopCart@getCheckout')->name('checkout');
Route::post('/checkout.html', 'ShopCart@postCheckout')->name('postCheckout');
Route::get('/removeItem/{id}', 'ShopCart@removeItem')->name('removeItem');
Route::get('/removeItemWishlist/{id}', 'ShopCart@removeItemWishlist')->name('removeItemWishlist');
Route::get('/removeItemCompare/{id}', 'ShopCart@removeItemCompare')->name('removeItemCompare');
Route::get('/clearCart', 'ShopCart@clearCart')->name('clearCart');
Route::post('/addToCart', 'ShopCart@addToCart')->name('addToCart');
Route::post('/updateToCart', 'ShopCart@updateToCart')->name('updateToCart');
Route::post('/storeOrder', 'ShopCart@storeOrder')->name('storeOrder');
//End cart

Route::prefix('extension')->group(function () {
    Route::post('/useDiscount', 'Extensions\Total\Discount@useDiscount')->name('useDiscount');
});

//========end shop ================

Route::prefix('payment')->group(function () {
    Route::get('paypal', 'PayPalController@index')->name('paypal');
    Route::get('return/{order_id}', 'PayPalController@getReturn');
});

//===========auth==============
Route::get('/login.html', 'ShopFront@login')->name('login');
Route::post('/login.html', 'Auth\LoginController@login')->name('postLogin');
Route::redirect('/login', '/login.html', 301);
Route::post('/logout', 'Auth\LoginController@logout')->name('logout');
Route::post('/register', 'Auth\RegisterController@register')->name('postRegister');

Route::get('password/reset', function () {
    return redirect('forgot.html');
})->name('password.request');
Route::post('password/email', 'Auth\ForgotPasswordController@sendResetLinkEmail')->name('password.email');
Route::get('password/reset/{token}', 'Auth\ResetPasswordController@showResetForm')->name('password.reset');
Route::post('password/reset', 'Auth\ResetPasswordController@reset');
//================================
//Language
Route::get('locale/{code}', function ($code) {
    $strQuery  = explode('?', url()->previous());
    $arrParams = [];
    if (!empty($strQuery[1])) {
        parse_str($strQuery[1], $arrParams);
        unset($arrParams['lang']);
    }
    if ($arrParams) {
        $url = $strQuery[0] . '?' . http_build_query($arrParams);
    } else {
        $url = $strQuery[0];
    }
    session(['locale' => $code]);
    return redirect($url);
});
//Currency
Route::get('currency/{code}', function ($code) {
    session(['currency' => $code]);
    return back();
});

//======cms==================
Route::post('/subscribe', 'Cms@emailSubscribe')->name('subscribe');
Route::get('/news.html', 'Cms@news')->name('news');
Route::get('/news/{name}_{id}.html', 'Cms@newsDetail')->name('newsDetail');
Route::get('/blogs.html', 'Cms@news');
Route::get('/blog/{name}_{id}.html', 'Cms@newsDetail');
Route::get('/{key}.html', 'Cms@pages');
//=====end cms =========
