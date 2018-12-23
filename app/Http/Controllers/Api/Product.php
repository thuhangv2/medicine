<?php
#app/Http/Controller/Api/Product.php
namespace App\Http\Controllers\Api;

use App\Models\ShopApi;
use App\Models\ShopApiProcess;
use App\Models\ShopProduct;
use Illuminate\Http\Request;

class Product extends \App\Http\Controllers\Controller
{
    public $hiddenFields;
    public $limit;
    public $start;
    public $orderBy;
    public $sort;
    public $apiName;
    public $secretKey;
    public $model;

    public function __construct(Request $request)
    {
        $ipClient        = $request->ip();
        $method          = $request->method();
        $headers         = getallheaders();
        $this->secretKey = $headers['apiSecret'] ?? '';
        $this->apiName   = $headers['apiName'] ?? '';
        $data            = $request->all();
        $this->limit     = empty($data['limit']) ? 10 : $data['limit'];
        $this->start     = empty($data['start']) ? 0 : (int) $data['start'];
        $this->orderBy   = empty($data['orderBy']) ? [] : explode(',', $data['orderBy']);
        $this->sort      = $data['sort'] ?? 'ASC';
        $this->model     = empty($data['model']) ? '' : $data['model'];

        $error = array();

        //Check API
        $checkApi = ShopApi::where('name', $this->apiName)->first();
        if (!$checkApi || $checkApi->type === 'private') {
//==============Process when Api is private or not found ============
            $error = array(
                'error'  => 1,
                'code'   => 404,
                'detail' => 'Api name not found or private',
                'msg'    => 'Not found',
            );
            header('Content-Type: application/json');
            echo json_encode($error, JSON_UNESCAPED_UNICODE);
            exit;
        }
        if ($checkApi->type === 'secret') {
//==============Process when Api is secret============
            //Check Token
            $apiId          = $checkApi->id;
            $checkSecretKey = ShopApiProcess::where('secret_key', $this->secretKey)->where('api_id', $apiId)->first();
            if (!$checkSecretKey) {
                $error = array(
                    'error'  => 1,
                    'code'   => 404,
                    'detail' => 'Secret key not found',
                    'msg'    => 'Not found',
                );
                header('Content-Type: application/json');
                echo json_encode($error, JSON_UNESCAPED_UNICODE);
                exit;
            }

            if (!$checkSecretKey->status) {
                $error = array(
                    'error'  => 1,
                    'code'   => 403,
                    'detail' => 'Secret key invalid',
                    'msg'    => 'Access denied',
                );
            } else {
                $exp     = $checkSecretKey->exp;
                $ipAllow = $checkSecretKey->ip_allow;
                $ipDeny  = $checkSecretKey->ip_deny;

                //Check Ip
                if (($ipAllow && !in_array($ipClient, explode(',', $ipAllow))) ||
                    (!$ipAllow && in_array($ipClient, explode(',', $ipDeny)))
                ) {
                    $error = array(
                        'error'  => 1,
                        'code'   => 403,
                        'detail' => 'Your IP ' . $ipClient . ' denied!',
                        'msg'    => 'Access denied',
                    );
                }
                //Check Expire
                elseif ($exp && $exp <= date('Y-m-d H:i:s')) {
                    $error = array(
                        'error'  => 1,
                        'code'   => 403,
                        'detail' => 'Secret key ' . $this->secretKey . ' expire!',
                        'msg'    => 'Access denied',
                    );
                }
            }

            if ($error) {
                header('Content-Type: application/json');
                echo json_encode($error, JSON_UNESCAPED_UNICODE);
                exit;
            }
            $this->hiddenFields = $checkSecretKey->hidden_fileds;

        } else {
//==============Process when Api is public============
            $this->hiddenFields = $checkApi->hidden_default;
        }

    }

/**
 * [index description]
 * @return [type] [description]
 */
    public function index()
    {
        if ($this->apiName == 'api_product_list') {
            return $this->list();
        }
        if ($this->apiName == 'api_product_detail') {
            return $this->detail($this->model);
        }
    }

/**
 * [index description]
 * @return [type] [description]
 */
    function list() {
        $limit        = $this->limit;
        $start        = $this->start;
        $orderBy      = $this->orderBy;
        $sort         = $this->sort;
        $query        = ShopProduct::with('descriptions', 'images', 'options', 'specialPrice');
        $hiddenFields = empty($this->hiddenFields) ? [] : explode(',', $this->hiddenFields);
//Order by
        if ($orderBy) {
            foreach ($orderBy as $order) {
                $query->orderBy($order, $sort);
            }
        }
//Limit
        $query->offset($start);
        $query->limit($limit);

//Render
        return $query->get()->each(function ($item) use ($hiddenFields) {
            $item->setAppends([]);
            if ($hiddenFields) {
                $item->makeHidden($hiddenFields);
            }
        })->toJson();
    }

/**
 * [detail description]
 * @param  [type] $sku [description]
 * @return [type]      [description]
 */
    public function detail($sku)
    {
        $query = ShopProduct::with('descriptions', 'images', 'options', 'specialPrice')->where('sku', $sku)->first();
        if ($query) {
            $hiddenFields = empty($this->hiddenFields) ? [] : explode(',', $this->hiddenFields);
            $query->setAppends([]);
            if ($hiddenFields) {
                $query->makeHidden($hiddenFields);
            }
            return $query->toJson();
        } else {
            $error = array(
                'error'  => 1,
                'code'   => 404,
                'detail' => 'Product not found!',
                'msg'    => 'Not found',
            );
            return json_encode($error);
        }
    }
}
