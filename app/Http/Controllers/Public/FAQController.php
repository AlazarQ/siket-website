<?php

namespace App\Http\Controllers\Public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\FAQ;
use DB;
class FAQController extends Controller
{
    public function index(Request $request){
        try{
        $lang_code = app()->getLocale();
        $faqs = DB::select("with onlyEnglish as (
            SELECT * FROM faq b where b.language = 'en' and b.status = 'Active' order by b.id ASC
             ),
             onlyLanguage as (
             SELECT ol.* FROM onlyEnglish ol where  ol.id not in (select b.parent_id from faq b  where b.language = '$lang_code')
             union
             select * from faq bn where bn.language = '$lang_code' and bn.status = 'Active'
             ) select *from onlyLanguage ol order by ol.id ASC");

        }catch(Exception $ex){
            abort(500);
        }
        return view('public.faq.index')
        ->with('faqs',$faqs);
    }
}
