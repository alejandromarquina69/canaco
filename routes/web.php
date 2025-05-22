<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;
use App\Http\Controllers\EstablecimientoController;

Route::post('/establecimientos', [EstablecimientoController::class, 'store']);


Route::get('/', function () {
    return view('welcome');
});

Route::get('/home', function () {
    return view('home');
});

Route::get('/registro-establecimiento', function () {
    return view('registro');
});
