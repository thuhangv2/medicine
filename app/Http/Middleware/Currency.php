<?php

namespace App\Http\Middleware;

use App\Models\ConfigGlobal;
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
        $configs_global = ConfigGlobal::first();
        if (Session::has('currency')) {
            ShopCurrency::setCode(session('currency'));
        } else {
            ShopCurrency::setCode($configs_global['currency']);
        }
        return $next($request);
    }
}
