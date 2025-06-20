<?php

namespace App\Http\Controllers\Public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Pagination\LengthAwarePaginator as Paginator;
use App\Models\News;
use DB;
use Artesaos\SEOTools\Facades\SEOMeta;
use Artesaos\SEOTools\Facades\OpenGraph;
use Artesaos\SEOTools\Facades\TwitterCard;
class NewsController extends Controller
{
    public function index(Request $request){
        try{
        SEOMeta::setTitle("Siket Bank News | Stay Updated with Latest Banking Updates");
        SEOMeta::setDescription("Stay informed with Siket Bank's latest news and updates on banking trends, innovations, and financial insights. Explore our news section for relevant industry updates");
        SEOMeta::setCanonical('https://siketbank.com/news');
        SEOMeta::addKeyword(['Siket Bank news', 'banking updates','financial news','financial updates', 'banking news today']);
        OpenGraph::setDescription("Stay informed with Siket Bank's latest news and updates on banking trends, innovations, and financial insights. Explore our news section for relevant industry updates");
        OpenGraph::setTitle("Siket Bank News | Stay Updated with Latest Banking Updates");
        OpenGraph::setUrl('https://siketbank.com/news');
        OpenGraph::addProperty('type', 'news');
        TwitterCard::setTitle("Siket Bank News | Stay Updated with Latest Banking Updates");
        TwitterCard::setDescription("Stay informed with Siket Bank's latest news and updates on banking trends, innovations, and financial insights. Explore our news section for relevant industry updates");
        TwitterCard::setUrl('https://siketbank.com/news');

        $lang_code = app()->getLocale();
        $newsList = DB::select("with onlyEnglish as (
            SELECT * FROM news b where b.type='News' and b.language = 'en' and b.status = 'Active' order by b.date_created DESC
             ),
             onlyLanguage as (
             SELECT ol.* FROM onlyEnglish ol where  ol.id not in (select b.parent_id from news b  where b.language = '$lang_code')
             union
             select * from news bn where  bn.type='News' and bn.language = '$lang_code' and bn.status = 'Active'
             ) select *from onlyLanguage ol order by ol.date_created DESC");
        $total=count($newsList);
        $per_page = 16;
        $current_page = $request->input("page") ?? 1;

        $starting_point = ($current_page * $per_page) - $per_page;

        $newsList = array_slice($newsList, $starting_point, $per_page, true);

        $newsList = new Paginator($newsList, $total, $per_page, $current_page, [
            'path' => $request->url(),
            'query' => $request->query(),
        ]);
        }catch(Exception $ex){
            abort(500);
        }
        return view('public.news.index')
        ->with('newsList',$newsList);
    }
    public function detail($title){
        try{
        SEOMeta::setTitle("Siket Bank News | Stay Updated with Latest Banking Updates");
        SEOMeta::setDescription("Stay informed with Siket Bank's latest news and updates on banking trends, innovations, and financial insights. Explore our news section for relevant industry updates");
        SEOMeta::setCanonical('https://siketbank.com/news');
        SEOMeta::addKeyword(['Siket Bank news', 'banking updates','financial news','financial updates', 'banking news today']);
        OpenGraph::setDescription("Stay informed with Siket Bank's latest news and updates on banking trends, innovations, and financial insights. Explore our news section for relevant industry updates");
        OpenGraph::setTitle("Siket Bank News | Stay Updated with Latest Banking Updates");
        OpenGraph::setUrl('https://siketbank.com/news');
        OpenGraph::addProperty('type', 'news');
        TwitterCard::setTitle("Siket Bank News | Stay Updated with Latest Banking Updates");
        TwitterCard::setDescription("Stay informed with Siket Bank's latest news and updates on banking trends, innovations, and financial insights. Explore our news section for relevant industry updates");
        TwitterCard::setUrl('https://siketbank.com/news');

        $newsTitle = Str::title(str_replace('-', ' ', $title));
        $index = strrpos($title,"-");
        $id = substr($title,$index+1);
        $lang_code = app()->getLocale();
        $news = DB::select("with onlyEnglish as (
            SELECT * FROM news b where b.type='News' and b.id='$id' and b.language = 'en' and b.status = 'Active' order by b.id DESC LIMIT 1
             ),
             onlyLanguage as (
             SELECT ol.* FROM onlyEnglish ol where  ol.id not in (select b.parent_id from news b  where b.language = '$lang_code')
             union
             select * from news bn where  bn.type='News' and bn.id='$id' and bn.language = '$lang_code' and bn.status = 'Active'
             ) select *from onlyLanguage ol order by ol.id DESC LIMIT 1");
        if($news == null){
            abort(404);
        }
        $relatedNews =DB::select("with onlyEnglish as (
            SELECT * FROM news b where b.type='News' and b.id !='$id' and b.language = 'en' and b.status = 'Active' order by b.id DESC LIMIT 3
             ),
             onlyLanguage as (
             SELECT ol.* FROM onlyEnglish ol where  ol.id not in (select b.parent_id from news b  where b.language = '$lang_code')
             union
             select * from news bn where bn.type='News' and bn.id !='$id' and  bn.language = '$lang_code' and bn.status = 'Active'
             ) select *from onlyLanguage ol order by ol.id DESC LIMIT 3");
        }catch(Exception $ex){
            abort(500);
        }
        return view('public.news.detail')
        ->with('news',$news)
        ->with('relatedNews',$relatedNews);
    }

}
