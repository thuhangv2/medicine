<?php
#app/Http/Controller/ShopAccount.php
namespace App\Http\Controllers;

use App\Models\ShopOrder;
use App\Models\ShopOrderStatus;
use App\User;
use Illuminate\Support\Facades\Auth;

class ShopAccount extends GeneralController
{
    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        $user = Auth::user();
        $id   = $user->id;
        return view(SITE_THEME . '.account.index')->with(array(
            'title'       => trans('account.my_profile'),
            'user'        => $user,
            'layout_page' => 'shop_profile',
        ));
    }

    public function changePassword()
    {
        $user = Auth::user();
        $id   = $user->id;
        return view(SITE_THEME . '.account.change_password')->with(array(
            'title'       => trans('account.change_password'),
            'user'        => $user,
            'layout_page' => 'shop_profile',
        ));
    }

    /**
     * [profile description]
     * @return [type] [description]
     */
    public function orderList()
    {
        $user        = Auth::user();
        $id          = $user->id;
        $orders      = ShopOrder::with('orderTotal')->where('user_id', $id)->sort()->get();
        $statusOrder = ShopOrderStatus::pluck('name', 'id')->all();
        return view(SITE_THEME . '.account.order_list')->with(array(
            'title'       => trans('account.order_list'),
            'user'        => $user,
            'orders'      => $orders,
            'statusOrder' => $statusOrder,
            'layout_page' => 'shop_profile',
        ));
    }

}
