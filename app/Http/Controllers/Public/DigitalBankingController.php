<?php

namespace App\Http\Controllers\Public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Artesaos\SEOTools\Facades\SEOMeta;
use Artesaos\SEOTools\Facades\OpenGraph;
use Artesaos\SEOTools\Facades\TwitterCard;
class DigitalBankingController extends Controller
{
    //
    public function index(){
        try{
            SEOMeta::setTitle("Siket Bank Digital Banking | Convenient and Secure Online Banking Services");
            SEOMeta::setDescription("Experience Siket Bank's advanced digital banking solutions for seamless transactions and secure management of your finances. Explore our user-friendly online banking services today");
            SEOMeta::setCanonical('https://siketbank.com/digital-banking');
            SEOMeta::addKeyword(['Siket Bank digital banking', 'online banking services','mobile banking','internet banking', 'digital financial solutions','digital banking','easy banking']);
            OpenGraph::setDescription("Experience Siket Bank's advanced digital banking solutions for seamless transactions and secure management of your finances. Explore our user-friendly online banking services today");
            OpenGraph::setTitle("Siket Bank Digital Banking | Convenient and Secure Online Banking Services");
            OpenGraph::setUrl('https://siketbank.com/digital-banking');
            OpenGraph::addProperty('type', 'products');
            TwitterCard::setTitle("Siket Bank Digital Banking | Convenient and Secure Online Banking Services");
            TwitterCard::setDescription("Experience Siket Bank's advanced digital banking solutions for seamless transactions and secure management of your finances. Explore our user-friendly online banking services today");
            TwitterCard::setUrl('https://siketbank.com/digital-banking');

            $lang_code= app()->getLocale();
            $digitalBankings = DB::select("with prodWithEnglish as ( SELECT mg.title,mg.id as parent_id,hs.name as subtype,mg.id FROM mega_header mg LEFT join header_subtype hs on hs.id = mg.header_subtype_id where mg.header_type_code = 'Digit' and mg.language = 'en' and mg.status = 'Active' ), prodWithLanguage as ( SELECT mg.title,case when mg.language = 'en' then mg.id else mg.parent_id end as parent_id, hs.name as subtype,mg.id FROM mega_header mg LEFT join header_subtype hs on hs.id = mg.header_subtype_id where mg.header_type_code = 'Digit' and mg.language = '$lang_code' and mg.status = 'Active' ) SELECT * FROM prodWithEnglish mg where mg.id not in (select m.parent_id from mega_header m where m.language = '$lang_code') union select * from prodWithLanguage");
            }catch(Exception $ex){
                abort(500);
            }
        return view('public.digital-banking.index')
        ->with('digitalBankings',$digitalBankings);
    }
    public function detail($id){
        try{
        $lang_code = app()->getLocale();

        $product = DB::select("with detailContent as (
SELECT * FROM mega_header b where b.parent_id = $id and  b.language ='$lang_code'
   LIMIT 1 ) SELECT * FROM mega_header b where b.id = $id and b.id not in (select l.parent_id from detailContent l)
    union
    select *from detailContent LIMIT 1");
        if($product == null){
            abort(404);
        }
        }catch(Exception $ex){
            abort(500);
        }
        return view('public.digital-banking.detail')
        ->with('product',$product);
    }
}
