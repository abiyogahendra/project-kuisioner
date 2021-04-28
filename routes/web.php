<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\IndexController;
use App\Http\Controllers\RegistrationController;
use App\Http\Controllers\QuestionController;
use App\Http\Controllers\ValidationQuestionController;
use App\Http\Controllers\SubmitController;


// login
use App\Http\Controllers\Login\LoginController;

// Admin
use App\Http\Controllers\Admin\DashboardAdminController;


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

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/',[IndexController::class,'IndexRegistration']);
Route::post('/input-registrasi',[RegistrationController::class,'InputRegistration']);
Route::get('/question',[QuestionController::class,'QuestionIndex']);
Route::post('/validation-question',[ValidationQuestionController::class,'ValidationController']);
Route::post('/back-page-check',[ValidationQuestionController::class,'BackPageCheck']);
Route::post('/submit-data',[SubmitController::class,'SubmitAllData']);


// Login

Route::get('/admin-login',[LoginController::class,'IndexLogin'])->name('index-login');
Route::post('/process-login',[LoginController::class,'LoginAuthentication']);


// admin
Route::group(['middleware' => ['auth']], function(){
    
    Route::get('/admin-dashboard',[DashboardAdminController::class,'DashboardIndex']);


});
