<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    include("/home/sail/PDFNetWrappers/PDFNetC/Lib/PDFNetPHP.php");
    PDFNet::Initialize("demo:1657185102680:7a45f0f30300000000f671e677e3229b2e3efcb3a19578ae3281af4085");
    $doc = new PDFDoc();
    dd($doc);
});
