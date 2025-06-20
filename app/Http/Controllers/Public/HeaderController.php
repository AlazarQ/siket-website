<?php

namespace App\Http\Controllers\Public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\MegaHeader;
use App\Models\Language;

use DB;
class HeaderController extends Controller
{
    static function  header(){
    try{
        $lang_code =app()->getLocale();
        $languages =Language::where('status','Active')->get();
        $productCategory= array();
        $productList = DB::select("with prodWithEnglish as (
SELECT mg.title,mg.id as parent_id,hs.name as subtype,mg.id FROM mega_header mg
inner join header_subtype hs on hs.id = mg.header_subtype_id where mg.header_type_code = 'Produ' and mg.language = 'en' and mg.status = 'Active'
),
prodWithLanguage as (
SELECT mg.title,case when mg.language = 'en' then mg.id else mg.parent_id end as parent_id, hs.name as subtype,mg.id FROM mega_header mg
inner join header_subtype hs on hs.id = mg.header_subtype_id where mg.header_type_code = 'Produ' and mg.language = '$lang_code' and mg.status = 'Active'
)  SELECT * FROM prodWithEnglish mg where mg.id not in (select m.parent_id from mega_header m where m.language = '$lang_code')
 union
select * from prodWithLanguage");
    if(count($productList)>0){
        foreach($productList as $product){
            array_push($productCategory,$product->subtype);
        }
    }
    $productCategoryList = collect($productCategory)->unique();

    $digitalBankings = DB::select("with prodWithEnglish as ( SELECT mg.title,mg.id as parent_id,hs.name as subtype,mg.id FROM mega_header mg LEFT join header_subtype hs on hs.id = mg.header_subtype_id where mg.header_type_code = 'Digit' and mg.language = 'en' and mg.status = 'Active' ), prodWithLanguage as ( SELECT mg.title,case when mg.language = 'en' then mg.id else mg.parent_id end as parent_id, hs.name as subtype,mg.id FROM mega_header mg LEFT join header_subtype hs on hs.id = mg.header_subtype_id where mg.header_type_code = 'Digit' and mg.language = '$lang_code' and mg.status = 'Active' ) SELECT * FROM prodWithEnglish mg where mg.id not in (select m.parent_id from mega_header m where m.language = '$lang_code') union select * from prodWithLanguage");


    }catch(Exception $ex){
        abort(500);
    }
    return view('public.shared.header')
    ->with('productCategory',$productCategoryList)
    ->with('products',$productList)
    ->with('digitalBankings',$digitalBankings)
    ->with('languages',$languages);

  }
}
