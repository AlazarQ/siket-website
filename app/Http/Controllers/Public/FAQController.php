<?php

namespace App\Http\Controllers\Public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\FAQ;
use DB;
use Artesaos\SEOTools\Facades\SEOMeta;
use Artesaos\SEOTools\Facades\OpenGraph;
use Artesaos\SEOTools\Facades\TwitterCard;
class FAQController extends Controller
{
    public function index(Request $request){
        try{
        SEOMeta::setTitle("Siket Bank FAQs | Answers to Your Banking Queries");
        SEOMeta::setDescription("Find answers to commonly asked questions about Siket Bank's products, services, and policies. Explore our FAQ section for comprehensive banking information");
        SEOMeta::setCanonical('https://siketbank.com/frequently-asked-questions');
        SEOMeta::addKeyword(['siket bank', 'about siket bank','banking services','bank in ethiopia', 'customer satisfaction']);
        OpenGraph::setDescription("Find answers to commonly asked questions about Siket Bank's products, services, and policies. Explore our FAQ section for comprehensive banking information");
        OpenGraph::setTitle("Siket Bank FAQs | Answers to Your Banking Queries");
        OpenGraph::setUrl('https://siketbank.com/frequently-asked-questions');
        OpenGraph::addProperty('type', 'faq');
        TwitterCard::setTitle("Siket Bank FAQs | Answers to Your Banking Queries");
        TwitterCard::setDescription("Find answers to commonly asked questions about Siket Bank's products, services, and policies. Explore our FAQ section for comprehensive banking information");
        TwitterCard::setUrl('https://siketbank.com/frequently-asked-questions');

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
