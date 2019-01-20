<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Config extends Model
{
    public $timestamps = false;
    public $table      = 'config';

    public static function getExtensionsGroup($group, $all = false)
    {
        $return = self::where('code', $group);
        if (!$all) {
            $return = $return->where('value', 1);
        }
        $return = $return->orderBy('sort', 'asc')
            ->get()->keyBy('key');
        return $return;
    }

}
