<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\QuestionController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/
Route::post('user',[UserController::class,'register']);

 //Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    Route::middleware('auth:sanctum')->group(function () {
     //return $request->user();
     

    Route::post('question',[QuestionController::class,'question']);
    Route::post('fifty-fifty-apply',[UserController::class,'fifty_fifty_apply']);
    Route::post('data-save',[QuestionController::class,'data_save']);
    

 });
 Route::post('report',[UserController::class,'report']);
