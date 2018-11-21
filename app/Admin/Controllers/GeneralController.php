<?php
#app/Admin/Http/Controller/GeneralController.php
namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Config;
use App\Models\ConfigGlobal;
use Illuminate\Http\Request;
use View;

class GeneralController extends Controller
{
    public $configs;
    public $configs_global;
    public $path_file;
    public $logo;

    public function __construct()
    {
        //=======Config====
        //Config for  SMTP
        $configs        = Config::pluck('value', 'key')->all();
        $configs_global = ConfigGlobal::first();
        config(['app.name' => $configs_global['title']]);
        config(['mail.driver' => ($configs['smtp_mode']) ? 'smtp' : 'sendmail']);
        config(['mail.host' => empty($configs['smtp_host']) ? env('MAIL_HOST', '') : $configs['smtp_host']]);
        config(['mail.port' => empty($configs['smtp_port']) ? env('MAIL_PORT', '') : $configs['smtp_port']]);
        config(['mail.encryption' => empty($configs['smtp_security']) ? env('MAIL_ENCRYPTION', '') : $configs['smtp_security']]);
        config(['mail.username' => empty($configs['smtp_user']) ? env('MAIL_USERNAME', '') : $configs['smtp_user']]);
        config(['mail.password' => empty($configs['smtp_password']) ? env('MAIL_PASSWORD', '') : $configs['smtp_password']]);
        config(['mail.from' =>
            ['address' => $configs_global['email'], 'name' => $configs_global['title']]]
        );
        //SMTP

        config(['admin.operation_log.enable' => empty($configs['admin_log']) ? false : true]);

        //============end config====

        //Auto switch link to https
        if (!empty($configs['site_ssl'])) {
            \URL::forceScheme('https');
            $this->app['request']->server->set('HTTPS', true);
        }
        //end

        $host = request()->getHost();
        config(['app.url' => 'http://' . $host]);
        $this->path_file      = config('filesystems.disks.path_file', '');
        $this->configs_global = $configs_global;
        $this->configs        = $configs;
        $this->logo           = url($this->path_file . '/' . $this->configs_global['logo']);

//Share variable
        View::share('path_file', $this->path_file);
        View::share('configs', $this->configs);
        View::share('configs_global', $this->configs_global);
        View::share('logo', $this->logo);
//
        // $this->middleware('localization');
    }

}
