<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Public\HomeController;
use App\Http\Controllers\Public\AboutUsController;
use App\Http\Controllers\Public\ContactUsController;
use App\Http\Controllers\Public\LoanCalculatorController;
use App\Http\Controllers\Public\BoardDirectorController;
use App\Http\Controllers\Public\GalleryController;
use App\Http\Controllers\Public\ExchangeRateController;
use App\Http\Controllers\Public\ExecutiveManagementController;
use App\Http\Controllers\Public\NewsController;
use App\Http\Controllers\Public\AnnouncementController;
use App\Http\Controllers\Public\FAQController;
use App\Http\Controllers\Public\ComingSoonController;
use App\Http\Controllers\Public\AnnualReportController;
use App\Http\Controllers\Public\VacancyController;
use App\Http\Controllers\Public\SubscriptionController;


Route::get('/',[HomeController::class,'index'])->name('home');
Route::get('/about-us',[AboutUsController::class,'index'])->name('about-us');
Route::get('/contact-us',[ContactUsController::class,'index'])->name('contact-us');
Route::post('/contact-us',[ContactUsController::class,'save'])->name('contact-us.save');
Route::get('/loan-calculator',[LoanCalculatorController::class,'index'])->name('loan-calculator');
Route::get('/board-of-director',[BoardDirectorController::class,'index'])->name('board-director');
Route::get('/executive-management',[ExecutiveManagementController::class,'index'])->name('executive-management');

Route::get('/gallery',[GalleryController::class,'index'])->name('gallery');
Route::get('/exchange-rate',[ExchangeRateController::class,'index'])->name('exchange-rate');
Route::get('/news',[NewsController::class,'index'])->name('news');
Route::get('/news/{title}',[NewsController::class,'detail'])->name('news-detail');
Route::get('/announcement',[AnnouncementController::class,'index'])->name('announcement');
Route::get('/announcement/{title}',[AnnouncementController::class,'detail'])->name('announcement-detail');
Route::get('/faq',[FAQController::class,'index'])->name('faq');
Route::get('/annual-report',[AnnualReportController::class,'index'])->name('annual-report');
Route::get('/vacancy',[VacancyController::class,'index'])->name('vacancy');
Route::get('/vacancy-detail/{position}/{id}',[VacancyController::class,'detail'])->name('vacancy-detail');

Route::get('/coming-soon',[ComingSoonController::class,'index'])->name('coming-soon');
Route::post('/subscription',[SubscriptionController::class,'subscribe'])->name('subscription');
