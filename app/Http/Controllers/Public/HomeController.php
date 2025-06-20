<?php

namespace App\Http\Controllers\public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\HomeBanner;
use App\Models\News;
use App\Models\ATM;
use App\Models\Branch;
use App\Models\Employee;
use App\Models\MegaHeader;
use App\Models\ExchangeRate;
use DB;
use Artesaos\SEOTools\Facades\SEOMeta;
use Artesaos\SEOTools\Facades\OpenGraph;
use Artesaos\SEOTools\Facades\TwitterCard;
class HomeController extends Controller
{
    //
public function index(){
    try{
        SEOMeta::setTitle('Welcome to Siket Bank: Transforming Banking in Ethiopia with Trust and Innovation');
        SEOMeta::setDescription("Discover Siket Bank, Ethiopia's foremost financial institution, renowned for innovation, trust, and customer-centric services. Explore our range of banking solutions designed to meet your financial needs with excellence and reliability");
        SEOMeta::setCanonical('https://siketbank.com');
        SEOMeta::addKeyword(['siket bank', 'banking service in ethiopia','exchange rate','online banking','savings accounts','digital banking','mobile banking','mortgage loans','bank in ethiopia', 'best bank in Ethiopia','bank interest rate in ethiopia','ethiopia banks']);
        OpenGraph::setDescription("Discover Siket Bank, Ethiopia's foremost financial institution, renowned for innovation, trust, and customer-centric services. Explore our range of banking solutions designed to meet your financial needs with excellence and reliability");
        OpenGraph::setTitle('Welcome to Siket Bank: Transforming Banking in Ethiopia with Trust and Innovation');
        OpenGraph::setUrl('https://siketbank.com');
        OpenGraph::addProperty('type', 'Home');
        TwitterCard::setTitle('Welcome to Siket Bank: Transforming Banking in Ethiopia with Trust and Innovation');
        TwitterCard::setDescription("Discover Siket Bank, Ethiopia's foremost financial institution, renowned for innovation, trust, and customer-centric services. Explore our range of banking solutions designed to meet your financial needs with excellence and reliability");
        TwitterCard::setUrl('https://siketbank.com');

        $lang_code= app()->getLocale();
        $banners = DB::select("with onlyEnglish as (
        SELECT * FROM banner b where b.language = 'en' and b.status = 'Active' order by b.id ASC LIMIT 4
         ),
         onlyLanguage as (
         SELECT ol.* FROM onlyEnglish ol where  ol.id not in (select b.parent_id from banner b  where b.language = '$lang_code')
         union
         select * from banner bn where bn.language = '$lang_code' and bn.status = 'Active'
         ) select *from onlyLanguage ol order by ol.id DESC LIMIT 4");



    $newsList = DB::select("with onlyEnglish as (
        SELECT * FROM news b where b.type='News' and b.language = 'en' and b.status = 'Active' order by b.id DESC LIMIT 3
         ),
         onlyLanguage as (
         SELECT ol.* FROM onlyEnglish ol where  ol.id not in (select b.parent_id from news b  where b.language = '$lang_code')
         union
         select * from news bn where bn.type='News' and bn.language = '$lang_code' and bn.status = 'Active'
         ) select *from onlyLanguage ol order by ol.id DESC LIMIT 3");
    $atmCount = ATM::count();
    $branchCount = Branch::count();
    $employeeCount = Employee::where('title','Employees')->first();
    $employeeCount = $employeeCount->quantity;
    $aboutUs = DB::select("with onlyEnglish as (
        SELECT * FROM mega_header b where header_type_code ='About' and b.language = 'en' and b.status = 'Active' order by b.id ASC LIMIT 1
         ),
         onlyLanguage as (
         SELECT ol.* FROM onlyEnglish ol where  ol.id not in (select b.parent_id from mega_header b  where b.language = '$lang_code')
         union
         select * from mega_header bn where header_type_code ='About' and bn.language = '$lang_code' and bn.status = 'Active'
         ) select * from onlyLanguage ol order by ol.id ASC LIMIT 1");
        $exchangeRates = ExchangeRate::where('status',"Active")->get();

    }catch(Exception $ex){
    abort(500);
    }
    return view('public.home.index')
    ->with('banners',$banners)
    ->with('newsList',$newsList)
    ->with('atmCount',$atmCount)
    ->with('employeeCount',$employeeCount)
    ->with('aboutUs',$aboutUs)
    ->with('exchangeRates',$exchangeRates)
    ->with('branchCount',$branchCount);
}
}
