<?php
if (!is_file('../.env')) {
    require __DIR__ . '/../vendor/autoload.php';
    $app      = require_once __DIR__ . '/../bootstrap/app.php';
    $kernel   = $app->make(Illuminate\Contracts\Http\Kernel::class);
    $response = $kernel->handle(
        $request = Illuminate\Http\Request::capture()
    );
    if (request()->method() === 'POST') {
        $step = request('step');
        switch ($step) {
            case 'step1':
                $domain            = request()->getHost();
                $database_host     = request('database_host') ?? '127.0.0.1';
                $database_port     = request('database_port') ?? '3306';
                $database_name     = request('database_name') ?? '';
                $database_user     = request('database_user') ?? '';
                $database_password = request('database_password') ?? '';
                try {
                    $getEnv = file_get_contents('../.env.example');
                    $getEnv = str_replace('your_domain', $domain, $getEnv);
                    $getEnv = str_replace('database_host', $database_host, $getEnv);
                    $getEnv = str_replace('database_port', $database_port, $getEnv);
                    $getEnv = str_replace('database_name', $database_name, $getEnv);
                    $getEnv = str_replace('database_user', $database_user, $getEnv);
                    $getEnv = str_replace('database_password', $database_password, $getEnv);
                    $env    = fopen("../.env", "w") or die("Unable to open file!");
                    fwrite($env, $getEnv);
                    fclose($env);
                    response()->json(['error' => 0, 'msg' => 'Ok']);
                } catch (\Exception $e) {
                    response()->json(['error' => 1, 'msg' => $e->getMessage()]);
                }
                break;

            case 'step2':
                try {
                    shell_exec('php ../artisan key:generate');
                    response()->json(['error' => 0, 'msg' => 'Key ok']);
                } catch (\Exception $e) {
                    response()->json(['error' => 1, 'msg' => $e->getMessage()]);
                }

                break;

            case 'tep3':
                try {
                    $file = '../database/s-cart.sql';
                    if (!file_exists($file)) {
                        response()->json(['error' => 1, 'msg' => 'File .sql not found!']);
                    }
                    DB::unprepared(file_get_contents($file));
                    response()->json(['error' => 0, 'msg' => 'Database OK']);
                } catch (\Exception $e) {
                    response()->json(['error' => 1, 'msg' => $e->getMessage()]);

                }
                break;

            case 'tep4':
                try {
                    foldes_permissions();
                    response()->json(['error' => 0, 'msg' => 'Set permisson OK']);
                } catch (\Exception $e) {
                    response()->json(['error' => 1, 'msg' => $e->getMessage()]);

                }
                break;

            default:
                # code...
                break;
        }
    } else {
        echo view('install', array(
            'title' => trans('language.cart_title'))
        );
        exit();
    }

}

function foldes_permissions()
{
    $foldes = array(
        base_path() . '/storage/',
        base_path() . '/vendor/',
        base_path() . '/public/documments/',
    );
    exec('chmod o+w -R ' . implode(' ', $foldes));
}
