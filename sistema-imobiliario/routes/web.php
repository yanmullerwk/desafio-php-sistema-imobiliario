<?php

use App\Http\Controllers\AuthController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

Route::redirect('/','/login');
Route::get('/login', [AuthController::class, 'showLogin'])->name('login.form');
Route::post('/login', [AuthController::class, 'login'])->name('login');
Route::post('/logout', function () {
    Auth::logout();
    return redirect('/login');
})->name('logout');

Route::get('/register', [AuthController::class, "showRegister"])->name('register.form');
Route::post('/register',[AuthController::class, 'register'])->name('register');

Route::get('/home', function(){
    return view('home.index');
})->middleware('auth');


Route::fallback(function(){
    return "rota não encontrada";
});
