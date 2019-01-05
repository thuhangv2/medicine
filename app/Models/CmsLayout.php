<?php
#app/Models/CmsLayout.php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CmsLayout extends Model
{
    public $timestamps = false;
    public $table      = 'cms_layout';
    /**
     * Get value field page_display same array
     * @param  [type] $page_display [description]
     * @return [type]                 [description]
     */
    public function getPageDisplayAttribute($page_display)
    {
        if (is_string($page_display) && $page_display) {
            return explode(',', $page_display);
        } else {
            return $page_display;
        }
    }

/**
 * Set value for field page_display
 * @param [type] $page_display [description]
 */
    public function setPageDisplayAttribute($page_display)
    {
        if (is_array($page_display)) {
            $this->attributes['page_display'] = implode(',', $page_display);
        } else {
            $this->attributes['page_display'] = $page_display;
        }

    }
}
