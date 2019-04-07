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
        //Config for  email
        $configs       = \Helper::configs();
        $configsGlobal = \Helper::configsGlobal();
        $languages     = \Helper::languages();
        $currencies    = \Helper::currencies();
        $layouts       = \Helper::layouts();
        $layoutsUrl    = \Helper::layoutsUrl();
        config(['app.name' => $configsGlobal['title']]);
        config(['mail.driver' => ($configs['smtp_mode']) ? 'smtp' : 'sendmail']);
        config(['mail.host' => empty($configs['smtp_host']) ? env('MAIL_HOST', '') : $configs['smtp_host']]);
        config(['mail.port' => empty($configs['smtp_port']) ? env('MAIL_PORT', '') : $configs['smtp_port']]);
        config(['mail.encryption' => empty($configs['smtp_security']) ? env('MAIL_ENCRYPTION', '') : $configs['smtp_security']]);
        config(['mail.username' => empty($configs['smtp_user']) ? env('MAIL_USERNAME', '') : $configs['smtp_user']]);
        config(['mail.password' => empty($configs['smtp_password']) ? env('MAIL_PASSWORD', '') : $configs['smtp_password']]);
        config(['mail.from' =>
            [
                'address' => $configsGlobal['email'],
                'name'    => $configsGlobal['title'],
            ],
        ]
        );
        //email

        view()->share('configsGlobal', $configsGlobal);
        view()->share('configs', $configs);
        view()->share('languages', $languages);
        view()->share('currencies', $currencies);
        view()->share('layouts', $layouts);
        view()->share('layoutsUrl', $layoutsUrl);
        define('SITE_THEME', 'templates.' . $configsGlobal['template']);
        define('SITE_THEME_ASSET', 'templates/' . $configsGlobal['template']);
        define('SITE_PATH_FILE', config('filesystems.disks.path_file', ''));
        define('SITE_LOGO', config('filesystems.disks.path_file', '') . '/' . $configsGlobal['logo']);

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
