<?php
#app/Http/Controller/ShopFront.php
namespace App\Http\Controllers;

use App\Models\ShopAttributeGroup;
use App\Models\ShopBrand;
use App\Models\ShopCategory;
use App\Models\ShopOrder;
use App\Models\ShopOrderStatus;
use App\Models\ShopProduct;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;

class ShopFront extends GeneralController
{
    public function __construct()
    {
        parent::__construct();

    }
/**
 * [index description]
 * @return [type] [description]
 */
    public function index(Request $request)
    {
        return view($this->theme . '.shop_home',
            array(
                'title'        => $this->configsGlobal['title'],
                'description'  => $this->configsGlobal['description'],
                'keyword'      => $this->configsGlobal['keyword'],
                'banners'      => $this->banners,
                'products_new' => (new ShopProduct)->getProducts($type = null, $limit = $this->configs['product_new'], $opt = null),
                'products_hot' => (new ShopProduct)->getProducts($type = 1, $limit = $this->configs['product_hot'], $opt = 'random'),
            )
        );
    }

/**
 * [productToCategory description]
 * @param  [type] $key [description]
 * @return [type]      [description]
 */
    public function productToCategory($name, $id)
    {
        $category = (new ShopCategory)->find($id);
        if ($category) {
            $products = $category->getProductsToCategory($id = $category->id, $limit = $this->configs['product_list'], $opt = 'paginate');
            return view($this->theme . '.shop_products_list',
                array(
                    'title'        => $category->name,
                    'description'  => $category->description,
                    'keyword'      => $this->configsGlobal['keyword'],
                    'categorySelf' => $category,
                    'products'     => $products,
                    'og_image'     => url($category->getImage()),
                )
            );
        } else {
            return view($this->theme . '.notfound',
                array(
                    'title'       => trans('messages.notfound'),
                    'description' => '',
                    'keyword'     => $this->configsGlobal['keyword'],
                )
            );
        }

    }

/**
 * All products
 * @param  [type] $key [description]
 * @return [type]      [description]
 */
    public function allProducts()
    {
        $products = ShopProduct::where('status', 1)
            ->sort()->paginate($this->configs['product_list']);
        if ($products) {
            return view($this->theme . '.shop_products_list',
                array(
                    'title'       => trans('language.all_product'),
                    'description' => $this->configsGlobal['description'],
                    'keyword'     => $this->configsGlobal['keyword'],
                    'products'    => $products,
                )
            );
        } else {
            return view($this->theme . '.notfound',
                array(
                    'title'       => trans('messages.notfound'),
                    'description' => '',
                    'keyword'     => $this->configsGlobal['keyword'],
                )
            );
        }

    }

/**
 * [productDetail description]
 * @param  [type] $name [description]
 * @param  [type] $id   [description]
 * @return [type]       [description]
 */
    public function productDetail($name, $id)
    {
        $product = ShopProduct::find($id);
        if ($product && $product->status && ($this->configs['product_display_out_of_stock'] || $product->stock > 0)) {
            //Update last view
            $product->view += 1;
            $product->date_lastview = date('Y-m-d H:i:s');
            $product->save();
            $arrlastView      = empty(\Cookie::get('productsLastView')) ? array() : json_decode(\Cookie::get('productsLastView'), true);
            $arrlastView[$id] = date('Y-m-d H:i:s');
            arsort($arrlastView);
            \Cookie::queue('productsLastView', json_encode($arrlastView), (86400 * 30));
            //End last viewed

            //Check product available
            return view($this->theme . '.shop_product_detail',
                array(
                    'title'              => $product->name,
                    'description'        => $product->description,
                    'keyword'            => $this->configsGlobal['keyword'],
                    'product'            => $product,
                    'attributesGroup'    => ShopAttributeGroup::all()->keyBy('id'),
                    'productsToCategory' => (new ShopCategory)->getProductsToCategory($id = $product->category_id, $limit = $this->configs['product_relation'], $opt = 'random'),
                    'og_image'           => url($product->getImage()),
                )
            );
        } else {
            return view($this->theme . '.notfound',
                array(
                    'title'       => trans('messages.notfound'),
                    'description' => '',
                    'keyword'     => $this->configsGlobal['keyword'],
                )
            );
        }

    }

/**
 * [productBrand description]
 * @param  [type] $name [description]
 * @param  [type] $id   [description]
 * @return [type]       [description]
 */
    public function productBrand($name, $id)
    {
        $brand = ShopBrand::find($id);
        return view($this->theme . '.shop_products_list',
            array(
                'title'       => $brand->name,
                'description' => '',
                'keyword'     => '',
                'products'    => $brand->products()->paginate(9),
            )
        );
    }

    /**
     * [profile description]
     * @return [type] [description]
     */
    public function profile()
    {
        $user        = Auth::user();
        $id          = $user->id;
        $orders      = ShopOrder::with('orderTotal')->where('user_id', $id)->sort()->get();
        $statusOrder = ShopOrderStatus::pluck('name', 'id')->all();
        return view($this->theme . '.shop_profile')->with(array(
            'title'       => trans('language.my_profile'),
            'user'        => $user,
            'orders'      => $orders,
            'statusOrder' => $statusOrder,
        ));
    }

/**
 * [search description]
 * @param  Request $request [description]
 * @return [type]           [description]
 */
    public function search(Request $request)
    {
        $keyword = $request->get('keyword');
        return view($this->theme . '.shop_products_list',
            array(
                'title'    => trans('language.search') . ': ' . $keyword,
                'products' => ShopProduct::getSearch($keyword),
            ));
    }

/**
 * [login description]
 * @return [type] [description]
 */
    public function login()
    {
        if (Auth::user()) {
            return redirect()->route('home');
        }
        return view($this->theme . '.shop_login',
            array(
                'title' => trans('language.login'),
            )
        );
    }
/**
 * [logout description]
 * @return [type] [description]
 */
    public function logout()
    {
        Auth::logout();
        return redirect()->route('login');
    }
/**
 * [login description]
 * @return [type] [description]
 */
    public function forgot()
    {
        if (Auth::user()) {
            return redirect()->route('home');
        }
        return view($this->theme . '.shop_forgot',
            array(
                'title' => trans('language.for_got_password'),
            )
        );
    }

}
