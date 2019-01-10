<?php
#App\Models\Extension\Shipping\ShippingStandard.php
namespace App\Models\Extension\Shipping;

use Illuminate\Database\Eloquent\Model;

class ShippingStandard extends Model
{
    public $timestamps = false;
    public $table      = 'shop_shipping';
}
