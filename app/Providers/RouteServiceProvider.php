<?php

namespace App\Providers;

use Illuminate\Foundation\Support\Providers\RouteServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Route;

class RouteServiceProvider extends ServiceProvider
{
    /**
     * This namespace is applied to your controller routes.
     *
     * In addition, it is set as the URL generator's root namespace.
     *
     * @var string
     */
    protected $namespace = 'App\Http\Controllers';

    /**
     * Define your route model bindings, pattern filters, etc.
     *
     * @return void
     */
    public function boot()
    {
        //

        parent::boot();
    }

    /**
     * Define the routes for the application.
     *
     * @return void
     */
    public function map()
    {
        $this->mapApiRoutes();

        $this->mapWebRoutes();
        $this->mapExtensionsApiRoutes();
        $this->mapExtensionsRoutes();
        $this->mapBottomRoutes();

        //
    }

    /**
     * Define the "web" routes for the application.
     *
     * These routes all receive session state, CSRF protection, etc.
     *
     * @return void
     */
    protected function mapWebRoutes()
    {
        Route::middleware(['web', 'localization', 'currency'])
            ->namespace($this->namespace)
            ->group(base_path('routes/web.php'));
    }

    /**
     * Define the "api" routes for the application.
     *
     * These routes are typically stateless.
     *
     * @return void
     */
    protected function mapApiRoutes()
    {
        Route::prefix('api')
            ->middleware('api')
            ->namespace($this->namespace)
            ->group(base_path('routes/api.php'));
    }

    protected function mapExtensionsRoutes()
    {
        Route::middleware(['web', 'localization', 'currency'])
            ->group(function () {
                foreach (glob(base_path() . '/routes/extension/web/*.php') as $filename) {
                    require_once $filename;
                }
            });
    }

    protected function mapExtensionsApiRoutes()
    {
        Route::prefix('api')
            ->middleware('api')
            ->group(function () {
                foreach (glob(base_path() . '/routes/extension/api/*.php') as $filename) {
                    require_once $filename;
                }
            });
    }

    protected function mapBottomRoutes()
    {
        Route::middleware(['web', 'localization', 'currency'])
            ->namespace($this->namespace)
            ->group(function () {
                //--Please keep 2 lines route (pages + pageNotFound) at the bottom
                Route::get('/{key}.html', 'ShopFront@pages')->name('pages');
                Route::fallback('ShopFront@pageNotFound')->name('pageNotFound');
                //--end keep
            });
    }
}
