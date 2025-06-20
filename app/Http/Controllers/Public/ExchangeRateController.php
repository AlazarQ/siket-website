<?php

namespace App\Http\Controllers\Public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\ExchangeRate;
use Artesaos\SEOTools\Facades\SEOMeta;
use Artesaos\SEOTools\Facades\OpenGraph;
use Artesaos\SEOTools\Facades\TwitterCard;
class ExchangeRateController extends Controller
{
    //
    public function index(){
        try{
        SEOMeta::setTitle("Siket Bank Exchange Rates | Current Currency Exchange Rates");
        SEOMeta::setDescription("Check Siket Bank's latest exchange rates for accurate currency conversion. Stay informed about international exchange rates for seamless financial transactions");
        SEOMeta::setCanonical('https://siketbank.com/exchange-rate');
        SEOMeta::addKeyword(['Siket Bank exchange rates', 'currency exchange rates','foreign exchange rates','forex rates','currency converter']);
        OpenGraph::setDescription("Check Siket Bank's latest exchange rates for accurate currency conversion. Stay informed about international exchange rates for seamless financial transactions");
        OpenGraph::setTitle("Siket Bank Exchange Rates | Current Currency Exchange Rates");
        OpenGraph::setUrl('https://siketbank.com/exchange-rate');
        OpenGraph::addProperty('type', 'exchange-rate');
        TwitterCard::setTitle("Siket Bank Exchange Rates | Current Currency Exchange Rates");
        TwitterCard::setDescription("Check Siket Bank's latest exchange rates for accurate currency conversion. Stay informed about international exchange rates for seamless financial transactions");
        TwitterCard::setUrl('https://siketbank.com/exchange-rate');

        $exchangeRates = ExchangeRate::where('status',"Active")->get();
        }catch(Exception $ex)
        {
            abort(500);
        }
        return view('public.exchange-rate.index')
        ->with('exchangeRates',$exchangeRates);
    }
}
