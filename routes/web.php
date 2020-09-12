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
    return view('publik.index');
});

Auth::routes();
Route::group(['middleware' => 'auth'], function() {
	Route::group(['middleware' => 'role:administrator'], function(){
		Route::resource('/dokumen','DokumenController');
		Route::resource('/users','UserController');
		Route::get('/users/roles/{id}', 'UserController@roles')->name('users.roles');
		Route::put('/users/roles/{id}', 'UserController@setRole')->name('users.set_role');
		Route::post('/users/permission', 'UserController@addPermission')->name('users.add_permission');
		Route::get('/users/role-permission', 'UserController@rolePermission')->name('users.roles_permission');
		Route::put('/users/permission/{role}', 'UserController@setRolePermission')->name('users.setRolePermission');
	});
	Route::get('/home', 'HomeController@index')->name('home');
	Route::POST('/home_tahun_simpan', 'HomeController@simpan_tahun')->name('home_tahun_simpan');
	Route::get('/home_edit_tahun', 'HomeController@edit_tahun')->name('home_edit_tahun');
	Route::get('prokabkot/kabkot/{id}', 'ProkabkotController@kabkot_terpilih');
	Route::resource('/personel','PersonelController');
	Route::post('/personel/{id}/update','PersonelController@update');
	Route::get('/personel/{id}/delete','PersonelController@delete');
	Route::get('/sasaran/{id}/delete','SasaranController@delete');

	Route::resource('/sasaran','SasaranController');
	Route::resource('/bapem','BapemController');
	Route::get('bapem/detail','BapemController@detail');
	Route::resource('/dokpem','DokpemController');
	Route::resource('/laporan','LaporanController');
	Route::resource('/angkatan','AngkatanController');

    Route::post('/laporan/{id}', [
        'uses' => 'LaporanController@verifikasi',
        'as' => 'laporan.verifikasi'
    ]);

	Route::get('/personel/{id}',[
			'uses' => 'PersonelController@show',
			'as' => 'personel.show'
		]);
	Route::get('/bapem/{id}',[
			'uses' => 'BapemController@show',
			'as' => 'bapem.show'
		]);
	Route::get('/bapem/{id}/edit',[
			'uses' => 'BapemController@edit',
			'as' => 'bapem.edit'
		]);
	Route::get('/users/{id}',[
			'uses' => 'UserController@show',
			'as' => 'users.show'
		]);
	Route::get('/sasaran/{id}',[
			'uses' => 'SasaranController@show',
			'as' => 'sasaran.show'
		]);
	Route::resource('/role', 'RoleController')->except([
	    'create', 'show', 'edit', 'update'
	]);
	Route::resource('/users', 'UserController')->except([
	    'show'
	]);
	

});

Route::get('logout', '\App\Http\Controllers\Auth\LoginController@logout');

