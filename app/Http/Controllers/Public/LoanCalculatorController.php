<?php

namespace App\Http\Controllers\Public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Artesaos\SEOTools\Facades\SEOMeta;
use Artesaos\SEOTools\Facades\OpenGraph;
use Artesaos\SEOTools\Facades\TwitterCard;
class LoanCalculatorController extends Controller
{
    //
    public function index(){
        SEOMeta::setTitle("Siket Bank Loan Calculator | Estimate Your Loan Payments");
        SEOMeta::setDescription("Use Siket Bank's loan calculator to estimate monthly payments and plan your finances. Calculate mortgage, personal, or business loan options conveniently");
        SEOMeta::setCanonical('https://siketbank.com/loan-calculator');
        SEOMeta::addKeyword(['Siket Bank loan calculator', 'loan payment calculator','mortgage calculator','financial planning tools','loan interest calculator']);
        OpenGraph::setDescription("Use Siket Bank's loan calculator to estimate monthly payments and plan your finances. Calculate mortgage, personal, or business loan options conveniently");
        OpenGraph::setTitle("Siket Bank Loan Calculator | Estimate Your Loan Payments");
        OpenGraph::setUrl('https://siketbank.com/loan-calculator');
        OpenGraph::addProperty('type', 'loan-calculator');
        TwitterCard::setTitle("Siket Bank Loan Calculator | Estimate Your Loan Payments");
        TwitterCard::setDescription("Use Siket Bank's loan calculator to estimate monthly payments and plan your finances. Calculate mortgage, personal, or business loan options conveniently");
        TwitterCard::setUrl('https://siketbank.com/loan-calculator');

        return view('public.loan-calculator.index');
    }
}
