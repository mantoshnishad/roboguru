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

Route::get('/', 'PostController@index');
Route::get('notes','NoteController@index');
Route::get('note/{id}','NoteController@show');
Route::get('notes/{id}','NoteController@note');
Route::get('project/{id}','ProjectController@project');
Route::group(['prefix' => 'quiz'], function () {
    Route::get('/{id}','QuizController@index');
    Route::get('/quiz/{id}','QuizController@quiz');
    Route::post('/answer','QuizController@answer');


});




Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
