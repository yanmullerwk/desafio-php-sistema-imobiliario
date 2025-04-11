<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\ImovelController;
use App\Http\Controllers\PessoaController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;


Route::redirect('/', '/login');


Route::get('/login', [AuthController::class, 'showLogin'])->name('login.form');
Route::post('/login', [AuthController::class, 'login'])->name('login');
Route::post('/logout', function () {
    Auth::logout();
    return redirect()->route('login.form');
})->name('logout');

Route::get('/register', [AuthController::class, "showRegister"])->name('register.form');
Route::post('/register', [AuthController::class, 'register'])->name('register');


Route::middleware('auth')->group(function () {
    
    
    Route::get('/home', [ImovelController::class, 'index'])->name('home.index');

   
    Route::prefix('pessoas')->name('pessoas.')->group(function () {
        Route::get('/', [PessoaController::class, 'index'])->name('index');
        Route::get('/create', [PessoaController::class, 'create'])->name('create');
        Route::post('/', [PessoaController::class, 'store'])->name('store');
        Route::get('/{id}', [PessoaController::class, 'show'])->name('show');
        Route::get('/{id}/edit', [PessoaController::class, 'edit'])->name('edit');
        Route::put('/{id}', [PessoaController::class, 'update'])->name('update');
        Route::delete('/{id}', [PessoaController::class, 'destroy'])->name('destroy');
    });

    
    Route::prefix('imoveis')->name('imoveis.')->group(function () {
        Route::get('/create', [ImovelController::class, 'index'])->name('index');
        Route::get('/create', [ImovelController::class, 'create'])->name('create');
        Route::post('/', [ImovelController::class, 'store'])->name('store');
        Route::get('/{id}', [ImovelController::class, 'show'])->name('show');
        Route::get('/{id}/edit', [ImovelController::class, 'edit'])->name('edit');
        Route::put('/{id}', [ImovelController::class, 'update'])->name('update');
        Route::delete('/{id}', [ImovelController::class, 'destroy'])->name('destroy');
    });
});


Route::fallback(function () {
    return response("Rota não encontrada", 404);
});