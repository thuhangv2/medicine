<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CmsContent extends Model
{
    public $table = 'cms_conten';
    public function category()
    {
        return $this->belongsTo('App\Models\CmsCategory', 'category_id', 'id');
    }

    public function images()
    {
        return $this->hasMany('App\Models\CmsImage', 'content_id', 'id');
    }

/**
 * [getThumb description]
 * @return [type] [description]
 */
    public function getThumb()
    {
        $path_file = config('filesystems.disks.path_file', '');
        if (!file_exists($path_file . '/thumb/' . $this->image)) {
            return $path_file . '/' . $this->image;
        } else {
            return $path_file . '/thumb/' . $this->image;
        }
    }

/**
 * [getImage description]
 * @return [type] [description]
 */
    public function getImage()
    {
        $path_file = config('filesystems.disks.path_file', '');
        return $path_file . '/' . $this->image;

    }

}
