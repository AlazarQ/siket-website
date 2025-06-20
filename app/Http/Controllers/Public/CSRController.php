<?php

namespace App\Http\Controllers\Public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Pagination\LengthAwarePaginator as Paginator;
use App\Models\CSR;
use DB;
use Artesaos\SEOTools\Facades\SEOMeta;
use Artesaos\SEOTools\Facades\OpenGraph;
use Artesaos\SEOTools\Facades\TwitterCard;
class CSRController extends Controller
{
    public function index(Request $request){
        try{
        SEOMeta::setTitle("Siket Bank Corporate Social Responsibility | Commitment to Community and Sustainability");
        SEOMeta::setDescription("Explore Siket Bank's Corporate Social Responsibility initiatives, focusing on community support, sustainability, and ethical practices. Learn how we contribute positively to society");
        SEOMeta::setCanonical('https://siketbank.com/corporate-social-responsibility');
        SEOMeta::addKeyword(['Siket Bank CSR', 'corporate social responsibility','community support','responsible banking']);
        OpenGraph::setDescription("Explore Siket Bank's Corporate Social Responsibility initiatives, focusing on community support, sustainability, and ethical practices. Learn how we contribute positively to society");
        OpenGraph::setTitle("Siket Bank Corporate Social Responsibility | Commitment to Community and Sustainability");
        OpenGraph::setUrl('https://siketbank.com/corporate-social-responsibility');
        OpenGraph::addProperty('type', 'corporate-social-responsibility');
        TwitterCard::setTitle("Siket Bank Corporate Social Responsibility | Commitment to Community and Sustainability");
        TwitterCard::setDescription("Explore Siket Bank's Corporate Social Responsibility initiatives, focusing on community support, sustainability, and ethical practices. Learn how we contribute positively to society");
        TwitterCard::setUrl('https://siketbank.com/corporate-social-responsibility');

        $lang_code= app()->getLocale();
        $csrs = DB::select("with onlyEnglish as (
            SELECT * FROM csr b where b.language = 'en' and b.status = 'Active' order by b.id DESC
             ),
             onlyLanguage as (
             SELECT ol.* FROM onlyEnglish ol where  ol.id not in (select b.parent_id from csr b  where b.language = '$lang_code')
             union
             select * from csr bn where bn.language = '$lang_code' and bn.status = 'Active'
             ) select *from onlyLanguage ol order by ol.id DESC");
        $total=count($csrs);
        $per_page = 16;
        $current_page = $request->input("page") ?? 1;

        $starting_point = ($current_page * $per_page) - $per_page;

        $csrs = array_slice($csrs, $starting_point, $per_page, true);

        $csrs = new Paginator($csrs, $total, $per_page, $current_page, [
            'path' => $request->url(),
            'query' => $request->query(),
        ]);
        }catch(Exception $ex){
            abort(500);
        }
        return view('public.csr.index')
        ->with('csrs',$csrs);
    }
    public function detail($title){
        try{
        SEOMeta::setTitle("Siket Bank Corporate Social Responsibility | Commitment to Community and Sustainability");
        SEOMeta::setDescription("Explore Siket Bank's Corporate Social Responsibility initiatives, focusing on community support, sustainability, and ethical practices. Learn how we contribute positively to society");
        SEOMeta::setCanonical('https://siketbank.com/corporate-social-responsibility');
        SEOMeta::addKeyword(['Siket Bank CSR', 'corporate social responsibility','community support','responsible banking']);
        OpenGraph::setDescription("Explore Siket Bank's Corporate Social Responsibility initiatives, focusing on community support, sustainability, and ethical practices. Learn how we contribute positively to society");
        OpenGraph::setTitle("Siket Bank Corporate Social Responsibility | Commitment to Community and Sustainability");
        OpenGraph::setUrl('https://siketbank.com/corporate-social-responsibility');
        OpenGraph::addProperty('type', 'corporate-social-responsibility');
        TwitterCard::setTitle("Siket Bank Corporate Social Responsibility | Commitment to Community and Sustainability");
        TwitterCard::setDescription("Explore Siket Bank's Corporate Social Responsibility initiatives, focusing on community support, sustainability, and ethical practices. Learn how we contribute positively to society");
        TwitterCard::setUrl('https://siketbank.com/corporate-social-responsibility');

        $csrTitle = Str::title(str_replace('-', ' ', $title));
        $lang_code = app()->getLocale();
        $index = strrpos($title,"-");
        $id = substr($title,$index+1);
        $csr = DB::select("with onlyEnglish as (
            SELECT * FROM csr b where b.id='$id' and b.language = 'en' and b.status = 'Active' order by b.id ASC LIMIT 1
             ),
             onlyLanguage as (
             SELECT ol.* FROM onlyEnglish ol where  ol.id not in (select b.parent_id from csr b  where b.language = '$lang_code')
             union
             select * from csr bn where bn.id='$id' and bn.language = '$lang_code' and bn.status = 'Active'
             ) select *from onlyLanguage ol order by ol.id ASC LIMIT 1");
        if($csr == null){
            abort(404);
        }
        $relatedCSR =DB::select("with onlyEnglish as (
            SELECT * FROM csr b where b.id !='$id' and b.language = 'en' and b.status = 'Active' order by b.id DESC LIMIT 3
             ),
             onlyLanguage as (
             SELECT ol.* FROM onlyEnglish ol where  ol.id not in (select b.parent_id from csr b  where b.language = '$lang_code')
             union
             select * from csr bn where bn.id !='$id' and  bn.language = '$lang_code' and bn.status = 'Active'
             ) select *from onlyLanguage ol order by ol.id DESC LIMIT 3");
        }catch(Exception $ex){
            abort(500);
        }
        return view('public.csr.detail')
        ->with('csr',$csr)
        ->with('relatedCSR',$relatedCSR);
    }
}
