<?php

namespace App\Http\Controllers\Public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\ExchangeRate;
class ExchangeRateController extends Controller
{
    //
    public function index(){
        try{
        $exchangeRates = ExchangeRate::where('status',"Active")->get();
        }catch(Exception $ex)
        {
            abort(500);
        }
        return view('public.exchange-rate.index')
        ->with('exchangeRates',$exchangeRates);
    }
}
