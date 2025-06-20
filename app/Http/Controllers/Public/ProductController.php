<?php

namespace App\Http\Controllers\Public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

use DB;
use Artesaos\SEOTools\Facades\SEOMeta;
use Artesaos\SEOTools\Facades\OpenGraph;
use Artesaos\SEOTools\Facades\TwitterCard;
class ProductController extends Controller
{
    public function index(){
        try{
            SEOMeta::setTitle("Siket Bank Products and Services | Comprehensive Banking Solutions");
            SEOMeta::setDescription("Discover Siket Bank's wide range of products and services, including personal banking, business solutions, investment options, and more. Explore how we meet your financial needs");
            SEOMeta::setCanonical('https://siketbank.com/product-service');
            SEOMeta::addKeyword(['Siket Bank products', 'banking services','financial solutions','business banking', 'savings accounts','digital banking']);
            OpenGraph::setDescription("Discover Siket Bank's wide range of products and services, including personal banking, business solutions, investment options, and more. Explore how we meet your financial needs");
            OpenGraph::setTitle("Siket Bank Products and Services | Comprehensive Banking Solutions");
            OpenGraph::setUrl('https://siketbank.com/product-service');
            OpenGraph::addProperty('type', 'products');
            TwitterCard::setTitle("Siket Bank Products and Services | Comprehensive Banking Solutions");
            TwitterCard::setDescription("Discover Siket Bank's wide range of products and services, including personal banking, business solutions, investment options, and more. Explore how we meet your financial needs");
            TwitterCard::setUrl('https://siketbank.com/product-service');

            $lang_code= app()->getLocale();
            $productList = DB::select("with prodWithEnglish as (
                SELECT mg.title,mg.file,mg.id as parent_id,hs.name as subtype,mg.id FROM mega_header mg
                inner join header_subtype hs on hs.id = mg.header_subtype_id where mg.header_type_code = 'Produ' and mg.language = 'en' and mg.status = 'Active'
                ),
                prodWithLanguage as (
                SELECT mg.title,mg.file,case when mg.language = 'en' then mg.id else mg.parent_id end as parent_id, hs.name as subtype,mg.id FROM mega_header mg
                inner join header_subtype hs on hs.id = mg.header_subtype_id where mg.header_type_code = 'Produ' and mg.language = '$lang_code' and mg.status = 'Active'
                )  SELECT * FROM prodWithEnglish mg where mg.id not in (select m.parent_id from mega_header m where m.language = '$lang_code')
                 union
                select * from prodWithLanguage");
            }catch(Exception $ex){
                abort(500);
            }
        return view('public.service.index')
        ->with('productList',$productList);
    }
    public function detail($title){
        try{
        $productTitle = Str::title(str_replace('-', ' ', $title));
        $index = strrpos($title,"-");
        $id = substr($title,$index+1);
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
        return view('public.service.detail')
        ->with('product',$product);
    }
}
