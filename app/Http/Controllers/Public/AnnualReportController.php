<?php

namespace App\Http\Controllers\Public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\AnnualReport;

class AnnualReportController extends Controller
{
    //
    public function index(){
        try{
            $annualReports = AnnualReport::simplePaginate(12)->sortDesc();
        }catch(Exception $ex){
            abort(500);
        }
        return view('public.annual-report.index')
        ->with('annualReports',$annualReports);
    }
}
