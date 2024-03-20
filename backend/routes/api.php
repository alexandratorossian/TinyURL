<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LinkController;
use App\Models\Link;
use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

// Ajoutez ici l'inclusion de votre fichier api.php


// Route pour récupérer l'URL longue associée à un lien court
Route::get('/api/long-url/{tabId}', [LinkController::class, 'getLongUrl']);


