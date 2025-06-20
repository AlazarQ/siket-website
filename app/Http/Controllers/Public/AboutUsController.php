<?php

namespace App\Http\Controllers\Public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\MegaHeader;
use DB;
use Artesaos\SEOTools\Facades\SEOMeta;
use Artesaos\SEOTools\Facades\OpenGraph;
use Artesaos\SEOTools\Facades\TwitterCard;
class AboutUsController extends Controller
{
    //
    public function index(){
        try{
            SEOMeta::setTitle("About Us | Discover Siket Bank's Commitment to Excellence");
            SEOMeta::setDescription("Explore Siket Bank's journey towards excellence in banking services. Discover our commitment to customer satisfaction and financial expertise. Learn more about our values and vision");
            SEOMeta::setCanonical('https://siketbank.com/about-us');
            SEOMeta::addKeyword(['siket bank', 'about siket bank','banking services','bank in ethiopia', 'customer satisfaction']);
            OpenGraph::setDescription("Explore Siket Bank's journey towards excellence in banking services. Discover our commitment to customer satisfaction and financial expertise. Learn more about our values and vision");
            OpenGraph::setTitle("About Us | Discover Siket Bank's Commitment to Excellence");
            OpenGraph::setUrl('https://siketbank.com/about-us');
            OpenGraph::addProperty('type', 'about-us');
            TwitterCard::setTitle("About Us | Discover Siket Bank's Commitment to Excellence");
            TwitterCard::setDescription("Explore Siket Bank's journey towards excellence in banking services. Discover our commitment to customer satisfaction and financial expertise. Learn more about our values and vision");
            TwitterCard::setUrl('https://siketbank.com/about-us');

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
