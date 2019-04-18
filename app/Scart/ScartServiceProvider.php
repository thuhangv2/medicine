<?php

namespace App\Scart;

use Illuminate\Support\ServiceProvider;

class ScartServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        if (!defined('PATH_FILE')) {
            define('PATH_FILE', config('filesystems.disks.path_file', ''));
        }
    }

    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        foreach (glob(app_path() . '/Scart/Helpers/*.php') as $filename) {
            require_once $filename;
        }

    }
}
