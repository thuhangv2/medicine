<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class News extends Model
{
    protected $fillable = [
        'tieu_de',
        'mo_bai',
        'than_bai',
        'ket_luan',
        'tham_khao'
    ];
}
