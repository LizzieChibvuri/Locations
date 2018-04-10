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

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('locations/search', 'LocationsController@getsearch')->name('locations.getsearch');
Route::get('locations/photos/{location}', 'LocationsController@getlocationphotos')->name('locations.getphotos');
Route::get('locations/photos/details/{photo}', 'LocationsController@getlocationphotodetails')->name('locations.getphotodetails');
Route::post('/search', 'LocationsController@search')->name('locations.search');
Route::resource('locations','LocationsController');