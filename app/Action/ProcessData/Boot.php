<?php
/**
 * Boot to process data.
 *
 * @package    App\Action\ProcessData
 * @subpackage Boot
 * @copyright  Copyright (c) 2019 S-cart.
 * @author     Naruto<lanhktc@gmail.com>
 */
namespace App\Action\ProcessData;

use App\Action\ProcessData\Export;
use App\Action\ProcessData\ExportAdmin;

class Boot
{
    public function __construct()
    {
//
    }

/**
 * Export file Excel
 *
 * @param  array  $dataExport
 * @param  array  $options
 * $options['filename']: File name
 * $options['sheetname']: Sheet name
 * $options['title']: Title file
 * @return void
 */
    public function exportExcel(array $dataExport = [], array $options = [])
    {
        return (new Export())->exportExcel($dataExport, $options);
    }

/**
 * Export file with function name sepcify in App\Action\ProcessData\Export
 *
 * @param  array  $dataExport
 * @param  array  $options
 * @return void
 */
    public function exportFunction(string $function = null, array $options = [])
    {
        return (new Export())->{$function}($options);
    }

/**
 * Export file in admin page with function name in  App\Action\ProcessData\ExportAdmin
 *
 * @param  string|null $function
 * @param  array       $options
 * $options['filename']: File name
 * $options['sheetname']: Sheet name
 * $options['title']: Title file
 * @return void
 */
    public function exportFromAdmin(string $function = null, array $options = [])
    {
        return new ExportAdmin($function, $options);
    }
}
