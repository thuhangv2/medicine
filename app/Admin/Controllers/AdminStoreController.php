<?php
#app/Http/Admin/Controllers/AdminStoreController.php
namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use App\Models\AdminStore;
use App\Models\AdminStoreDescription;
use App\Models\ShopCurrency;
use App\Models\ShopLanguage;
use Illuminate\Http\Request;

class AdminStoreController extends Controller
{

    public function index()
    {
        $languages = ShopLanguage::getArray();
        $currencies = ShopCurrency::getArray();
        $data = [
            'title' => trans('store.admin.list'),
            'sub_title' => '',
            'icon' => 'fa fa-indent',
            'menu_left' => '',
            'menu_right' => '',
            'menu_sort' => '',
            'script_sort' => '',
            'menu_search' => '',
            'script_search' => '',
            'listTh' => '',
            'dataTr' => '',
            'pagination' => '',
            'result_items' => '',
            'url_delete_item' => '',
        ];

        $infosDescription = [];
        foreach ($languages as $code => $lang) {
            $langDescriptions = AdminStoreDescription::where('lang', $code)->first();
            $infosDescription['title'][$code] = $langDescriptions['title'];
            $infosDescription['description'][$code] = $langDescriptions['description'];
            $infosDescription['keyword'][$code] = $langDescriptions['keyword'];
            $infosDescription['maintain_content'][$code] = $langDescriptions['maintain_content'];
        }
        foreach (timezone_identifiers_list() as $key => $value) {
            $arrTimezones[$value] = $value;
        }
        $timezones = $arrTimezones;

        $infos = AdminStore::first();
        $data['infos'] = $infos;
        $data['infosDescription'] = $infosDescription;
        $data['languages'] = $languages;
        $data['timezones'] = $timezones;
        $data['currencies'] = $currencies;

        return view('admin.screen.store')
            ->with($data);
    }

/*
Update value config
 */
    public function updateInfo()
    {
        $stt = 0;
        $data = request()->all();
        $name = $data['name'];
        $value = $data['value'];
        $parseName = explode('__', $name);
        if (!in_array($parseName[0], ['title', 'description', 'keyword', 'maintain_content'])) {
            $update = AdminStore::first()->update([$name => $value]);
        } else {
            $update = AdminStore::first()->descriptions()->where('lang', $parseName[1])->update([$parseName[0] => $value]);
        }
        if ($update) {
            $stt = 1;
        }
        return response()->json(['stt' => $stt]);

    }

}
