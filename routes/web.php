<?php

use App\Http\Controllers\DaftarController;
use App\Http\Controllers\DashboardController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PasienController;
use App\Http\Controllers\LaporanPasienController;
use App\Http\Controllers\LaporandaftarController;
use App\Http\Controllers\PoliController;
use App\Http\Controllers\UsersController;
use Illuminate\Auth\Middleware\Authenticate;
use Illuminate\Support\Facades\Auth;
Route::middleware([Authenticate::class])->group(function () {
    Route::resource('dashboard', DashboardController::class);
    Route::resource('pasien', PasienController::class);
    Route::resource('poli', PoliController::class);
    Route::resource('daftar', DaftarController::class);
    Route::resource('laporan-pasien', LaporanPasienController::class);
    Route::resource('laporan-daftar', LaporanDaftarController::class);
    Route::resource('users', UsersController::class);
});

Route::get('logout', function () {
    Auth::logout();
    return redirect('login');
});

Auth::routes();
