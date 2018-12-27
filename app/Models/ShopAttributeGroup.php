<?php
#app/Models/ShopAttributeGroup.php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ShopAttributeGroup extends Model
{
    public $timestamps = false;
    public $table      = 'shop_attribute_group';
    public function details()
    {
        return $this->hasMany(ShopAttributeDetail::class, 'attribute_id', 'id');
    }
}
