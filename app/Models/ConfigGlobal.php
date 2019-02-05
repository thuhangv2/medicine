<?php
#app/Models/ConfigGlobal.php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ConfigGlobal extends Model
{
    public $timestamps  = false;
    public $table       = 'config_global';
    protected $fillable = ['locale'];
    public function description()
    {
        return $this->hasMany('App\Models\ConfigGlobalDescription', 'config_id', 'id');
    }
}
