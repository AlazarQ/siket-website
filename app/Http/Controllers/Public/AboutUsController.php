<?php

namespace App\Http\Controllers\Public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\MegaHeader;
use DB;
class AboutUsController extends Controller
{
    //
    public function index(){
        try{
            $lang_code= app()->getLocale();
            $aboutUs = DB::select("with onlyEnglish as (
                SELECT * FROM mega_header b where header_type_code ='About' and b.language = 'en' and b.status = 'Active' order by b.id ASC LIMIT 1
                 ),
                 onlyLanguage as (
                 SELECT ol.* FROM onlyEnglish ol where  ol.id not in (select b.parent_id from mega_header b  where b.language = '$lang_code')
                 union
                 select * from mega_header bn where header_type_code ='About' and bn.language = '$lang_code' and bn.status = 'Active'
                 ) select * from onlyLanguage ol order by ol.id ASC LIMIT 1");
            }catch(Exception $ex){
                abort(500);
            }
        return view('public.about-us.index')
        ->with('aboutUs',$aboutUs);
    }
}
