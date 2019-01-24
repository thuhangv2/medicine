<?php
#App\Models\Extension\Payment\Paypal.php
namespace App\Models\Extension\Payment;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Paypal extends Model
{
    public $timestamps = false;
    public $table      = 'paypal';
    public function uninstallExtension()
    {
        if (Schema::hasTable($this->table)) {
            Schema::drop($this->table);
        }

    }

    public function installExtension()
    {
        $return = ['error' => 0, 'msg' => 'Install extension success'];
        if (!Schema::hasTable($this->table)) {
            try {
                Schema::create($this->table, function (Blueprint $table) {
                    $table->increments('id');
                    $table->integer('paypal_log');
                    $table->string('paypal_path_log');
                    $table->string('paypal_currency');
                    $table->integer('paypal_order_status_success');
                    $table->integer('paypal_order_status_faild');
                });
                $this->insert(
                    [
                        'paypal_log'                  => 0,
                        'paypal_path_log'             => 'logs/paypal.log',
                        'paypal_currency'             => 'USD',
                        'paypal_order_status_success' => 1,
                        'paypal_order_status_faild'   => 5,
                    ]
                );
            } catch (\Exception $e) {
                $return = ['error' => 1, 'msg' => $e->getMessage()];
            }
        } else {
            $return = ['error' => 1, 'msg' => 'Table ' . $this->table . ' exist!'];
        }
        return $return;
    }
}
