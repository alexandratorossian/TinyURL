<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LinkController;


Route::get('/', function () {
    return view('welcome');


});

// Route pour récupérer l'URL longue associée à un lien court
Route::get('/api/long-url/{tabId}', [LinkController::class, 'getLongUrl']);

