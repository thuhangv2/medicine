<?php
#app/Models/ShopLayout.php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ShopLayout extends Model
{
    public $timestamps        = false;
    public $table             = 'shop_layout';
    protected $guarded        = [];
    private static $getLayout = null;

    public static function getLayout()
    {
        if (self::$getLayout == null) {
            self::$getLayout = self::where('status', 1)
                ->orderBy('sort', 'desc')
                ->get()
                ->groupBy('position');
        }
        return self::$getLayout;
    }

}
