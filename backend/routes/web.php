<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LinkController;
use App\Http\Controllers\ClickController;



Route::get('/', function () {
    return view('welcome');


});

//Routes API
// TODO: Déplacer les API dans api.php


// Route pour récupérer l'URL longue associée à un lien court
Route::get('/api/long-url/{tabId}', [LinkController::class, 'getLongUrl']);

//CRUD
Route::get('/admin/links', [LinkController::class, 'index'])->name('admin.links.index');
Route::get('/admin/links/create', [LinkController::class, 'create'])->name('admin.links.create');
Route::post('/admin/links', [LinkController::class, 'store'])->name('admin.links.store');
Route::get('/admin/links/{id}/edit', [LinkController::class, 'edit'])->name('admin.links.edit');
Route::put('/admin/links/{id}', [LinkController::class, 'update'])->name('admin.links.update');
Route::delete('/admin/links/{id}', [LinkController::class, 'destroy'])->name('admin.links.destroy');

// Link Count
Route::post('/clicks', [ClickController::class, 'incrementClickCount'])->name('clicks.increment');

Route::post('/links/{link}/increment-click-count', [ClickController::class, 'incrementClickCount'])->name('clicks.increment');





Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');


