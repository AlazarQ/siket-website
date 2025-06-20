<?php

use Illuminate\Support\Facades\Route;
use Spatie\Sitemap\Sitemap;
use Spatie\Sitemap\Tags\Url;

use App\Http\Controllers\Public\HomeController;
use App\Http\Controllers\Public\AboutUsController;
use App\Http\Controllers\Public\ContactUsController;
use App\Http\Controllers\Public\LoanCalculatorController;
use App\Http\Controllers\Public\BoardDirectorController;
use App\Http\Controllers\Public\GalleryController;
use App\Http\Controllers\Public\ExchangeRateController;
use App\Http\Controllers\Public\ExecutiveManagementController;
use App\Http\Controllers\Public\DirectorController;
use App\Http\Controllers\Public\NewsController;
use App\Http\Controllers\Public\CSRController;
use App\Http\Controllers\Public\AnnouncementController;
use App\Http\Controllers\Public\FAQController;
use App\Http\Controllers\Public\ComingSoonController;
use App\Http\Controllers\Public\AnnualReportController;
use App\Http\Controllers\Public\VacancyController;
use App\Http\Controllers\Public\SubscriptionController;
use App\Http\Controllers\Public\BranchController;
use App\Http\Controllers\Public\LocalizationController;
use App\Http\Controllers\Public\ProductController;
use App\Http\Controllers\Public\DigitalBankingController;
use App\Http\Controllers\Public\SearchController;
use App\Http\Controllers\Public\AtmController;
use App\Http\Controllers\Public\TermsController;

Route::get('/',[HomeController::class,'index'])->name('home');
Route::get('/about-us',[AboutUsController::class,'index'])->name('about-us');
Route::get('/contact-us',[ContactUsController::class,'index'])->name('contact-us');
Route::post('/contact-us',[ContactUsController::class,'save'])->name('contact-us.save');
Route::get('/loan-calculator',[LoanCalculatorController::class,'index'])->name('loan-calculator');
Route::get('/board-of-director',[BoardDirectorController::class,'index'])->name('board-director');
Route::get('/executive-management',[ExecutiveManagementController::class,'index'])->name('executive-management');
Route::get('/directors/{id}',[DirectorController::class,'index'])->name('directors');

Route::get('/gallery',[GalleryController::class,'index'])->name('gallery');
Route::get('/exchange-rate',[ExchangeRateController::class,'index'])->name('exchange-rate');
Route::get('/news',[NewsController::class,'index'])->name('news');
Route::get('/news/{title}',[NewsController::class,'detail'])->name('news-detail');
Route::get('/corporate-social-responsibility',[CSRController::class,'index'])->name('csr');
Route::get('/corporate-social-responsibility/{title}',[CSRController::class,'detail'])->name('csr-detail');
Route::get('/announcement',[AnnouncementController::class,'index'])->name('announcement');
Route::get('/announcement/{title}',[AnnouncementController::class,'detail'])->name('announcement-detail');
Route::get('/frequently-asked-questions',[FAQController::class,'index'])->name('faq');
Route::get('/annual-report',[AnnualReportController::class,'index'])->name('annual-report');
Route::get('/vacancy',[VacancyController::class,'index'])->name('vacancy');
Route::get('/vacancy-detail/{position}/{id}',[VacancyController::class,'detail'])->name('vacancy-detail');
Route::get('/product-service',[ProductController::class,'index'])->name('products');
Route::get('/product-service/{title}',[ProductController::class,'detail'])->name('product-detail');
Route::get('/digital-banking',[DigitalBankingController::class,'index'])->name('digital-banking');
Route::get('/digital-banking/{id}',[DigitalBankingController::class,'detail'])->name('digital-banking-detail');

Route::get('/coming-soon',[ComingSoonController::class,'index'])->name('coming-soon');
Route::post('/subscription',[SubscriptionController::class,'subscribe'])->name('subscription');
Route::get('/branches',[BranchController::class,'branches'])->name('branches');
Route::get('/lang/{locale}',[LocalizationController::class,'localize'])->name('localize');
Route::get('/search',[SearchController::class,'search'])->name('search');
Route::get('/search-result/{id}',[SearchController::class,'detail'])->name('search-detail');
Route::get('/atm',[AtmController::class,'index'])->name('atm');

// Route added for terms and tariff
Route::get(uri: '/terms-and-tariff', action:[TermsController::class,'index'])->name('terms-and-tariff');

// Route::get('/sitemap',function(){
//     $sitemap = Sitemap::create()
//     ->add(Url::create('/'))
//     ->add(Url::create('/about-us'))
//     ->add(Url::create('/product-service'))
//     ->add(Url::create('/digital-banking'))
//     ->add(Url::create('/contact-us'))
//     ->add(Url::create('/news'))
//     ->add(Url::create('/vacancy'))
//     ->add(Url::create('/exchange-rate'))
//     ->add(Url::create('/gallery'))
//     ->add(Url::create('/frequently-asked-questions'))
//     ->add(Url::create('/corporate-social-responsibility'))
//     ->add(Url::create('/'));
//    $sitemap->writeTofile(public_path('sitemap.xml'));
// })->name('sitemap');
