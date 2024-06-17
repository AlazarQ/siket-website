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

class HomeController extends Controller
{
    //
public function index(){
    try{
    $banners = HomeBanner::take(4)->get();
    $newsList = News::take(3)->get();
    $atmCount = ATM::count();
    $branchCount = Branch::count();
    $employeeCount = Employee::count();
    $aboutUs = MegaHeader::where('header_type_code','About')->where('status','Active')->where('language','hsilg')->first();
    try{
        $exchangeRates = ExchangeRate::where('status',"Active")->get();
        }catch(Exception $ex)
        {
            abort(500);
        }
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
