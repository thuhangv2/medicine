<?php

namespace App\Http\Middleware;

use App\Models\ShopCurrency;
use Closure;
use Session;

class Currency
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $configsGlobal = \Helper::configsGlobal();
        if (Session::has('currency')) {
            ShopCurrency::setCode(session('currency'));
        } else {
            ShopCurrency::setCode($configsGlobal['currency']);
        }
        return $next($request);
    }
}
