<?php

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
    return view('welcome');
});
// Nhóm
//Route::get('user/banks', 'UserBankController@LisBank')->name('bank.list');
//Route::get('user/bank/create','UserBankController@create')->name('bank.create');
Route::get('test', 'UserMinController@test')->name('Min.test');
//Route::get('top', 'UserFamilydController@top')->name('familyd.top');
//Route::get('user/langs', 'UserLangController@LisLang')->name('lang.list');
//Route::get('user/familyds', 'UserFamilydController@LisFamilyds')->name('familyd.list');
Route::get('user/mins', 'UserMinController@LisMins')->name('Min.list');


?>
