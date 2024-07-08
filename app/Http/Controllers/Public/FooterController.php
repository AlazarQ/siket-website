<?php

namespace App\Http\Controllers\Public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Footer;
use DB;
class FooterController extends Controller
{
    static function  footer(){
        try{
            $lang_code =app()->getLocale();
            $footerLinks = DB::select("with onlyEnglish as (
                SELECT * FROM other_linkage b where b.language = 'en' and b.status = 'Active' order by b.id ASC
                 ),
                 onlyLanguage as (
                 SELECT ol.* FROM onlyEnglish ol where  ol.id not in (select b.parent_id from other_linkage b  where b.language = '$lang_code')
                 union
                 select * from other_linkage bn where bn.language = '$lang_code' and bn.status = 'Active'
                 ) select *from onlyLanguage ol order by ol.id ASC");
        }catch(Exception $ex){
            abort(500);
        }
        return view('public.shared.footer')
        ->with('footerLinks',$footerLinks);

      }
}
