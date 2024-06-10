<?php

namespace App\Http\Controllers\Public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class LoanCalculatorController extends Controller
{
    //
    public function index(){
        return view('public.loan-calculator.index');
    }
}
