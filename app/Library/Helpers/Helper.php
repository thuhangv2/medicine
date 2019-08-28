<?php
namespace App\Library;

use App\Models\AdminConfig;
use App\Models\ShopCurrency;
use App\Models\ShopLanguage;
use App\Models\ShopLayout;
use App\Models\ShopLayoutUrl;

class Helper
{

    //Currency
    public static function currencyRender(float $money, $currency = null, $rate = null, $space_between_symbol = false, $useSymbol = true)
    {
        return ShopCurrency::render($money, $currency, $rate, $space_between_symbol, $useSymbol);
    }

    public static function currencyOnlyRender(float $money, $currency, $space_between_symbol = false, $include_symbol = true)
    {
        return ShopCurrency::onlyRender($money, $currency, $space_between_symbol, $include_symbol);
    }
    public static function currencySumCart($details, float $rate = null)
    {
        return ShopCurrency::sumCart($details, $rate);
    }
    public static function currencyValue(float $money, $rate = null)
    {
        return ShopCurrency::getValue($money, $rate);
    }
    public static function currencyCode()
    {
        return ShopCurrency::getCode();
    }
    public static function currencyRate()
    {
        return ShopCurrency::getRate();
    }
    public static function currencyFormat(float $money)
    {
        return ShopCurrency::format($money);
    }
    public static function getCurrency()
    {
        return ShopCurrency::getCurrency();
    }

    private static $currencies = null;
    public static function currencies()
    {
        if (self::$currencies !== null) {
            return self::$currencies;
        }
        self::$currencies = ShopCurrency::getAll();
        return self::$currencies;
    }

    //End currency

    private static $languages = null;
    public static function languages()
    {
        if (self::$languages !== null) {
            return self::$languages;
        }
        self::$languages = ShopLanguage::getList();
        return self::$languages;
    }

    private static $layouts = null;
    public static function layouts()
    {
        if (self::$layouts !== null) {
            return self::$layouts;
        }
        self::$layouts = ShopLayout::getLayout();
        return self::$layouts;
    }

    private static $layoutsUrl = null;
    public static function layoutsUrl()
    {
        if (self::$layoutsUrl !== null) {
            return self::$layoutsUrl;
        }
        self::$layoutsUrl = ShopLayoutUrl::getGroup();
        return self::$layoutsUrl;
    }

    //Extensions
    public static function getExtensionsGroup($group, $onlyActive = true)
    {
        return AdminConfig::getExtensionsGroup($group, $onlyActive);
    }
    //End Extensions

    public static function getListCart($instance = 'default')
    {
        $cart = \Cart::instance($instance);
        $arrCart['count'] = $cart->count();
        $arrCart['subtotal'] = \Helper::currencyRender($cart->subtotal());
        $arrCart['items'] = [];
        if ($cart->count()) {
            foreach ($cart->content() as $key => $item) {
                $product = \App\Models\ShopProduct::find($item->id);
                $arrCart['items'][] = [
                    'id' => $item->id,
                    'qty' => $item->qty,
                    'image' => asset($product->getThumb()),
                    'price' => $product->getFinalPrice(),
                    'showPrice' => $product->showPrice(),
                    'url' => $product->getUrl(),
                    'rowId' => $item->rowId,
                    'name' => $product->getName(),
                ];
            }
        }

        return $arrCart;
    }

}
