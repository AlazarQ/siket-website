<?php

namespace App\Http\Controllers\Public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\AnnualReport;
use DB;
class AnnualReportController extends Controller
{
    //
    public function index(){
        try{
            $lang_code = app()->getLocale();
            $annualReports = DB::select("with onlyEnglish as (
                SELECT * FROM annual b where b.language = 'en' and b.status = 'Active' order by b.id ASC
                 ),
                 onlyLanguage as (
                 SELECT ol.* FROM onlyEnglish ol where  ol.id not in (select b.parent_id from annual b  where b.language = '$lang_code')
                 union
                 select * from annual bn where bn.language = '$lang_code' and bn.status = 'Active'
                 ) select *from onlyLanguage ol order by ol.id ASC");
        }catch(Exception $ex){
            abort(500);
        }
        return view('public.annual-report.index')
        ->with('annualReports',$annualReports);
    }
}
