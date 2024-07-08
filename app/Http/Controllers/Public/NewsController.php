<?php

namespace App\Http\Controllers\Public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Pagination\LengthAwarePaginator as Paginator;
use App\Models\News;
use DB;
class NewsController extends Controller
{
    public function index(Request $request){
        try{
        $lang_code = app()->getLocale();
        $newsList = DB::select("with onlyEnglish as (
            SELECT * FROM news b where b.type='News' and b.language = 'en' and b.status = 'Active' order by b.id ASC
             ),
             onlyLanguage as (
             SELECT ol.* FROM onlyEnglish ol where  ol.id not in (select b.parent_id from news b  where b.language = '$lang_code')
             union
             select * from news bn where  bn.type='News' and bn.language = '$lang_code' and bn.status = 'Active'
             ) select *from onlyLanguage ol order by ol.id ASC");
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
        $newsTitle = Str::title(str_replace('-', ' ', $title));
        $index = strrpos($title,"-");
        $id = substr($title,$index+1);
        $lang_code = app()->getLocale();
        $news = DB::select("with onlyEnglish as (
            SELECT * FROM news b where b.type='News' and b.id='$id' and b.language = 'en' and b.status = 'Active' order by b.id ASC LIMIT 1
             ),
             onlyLanguage as (
             SELECT ol.* FROM onlyEnglish ol where  ol.id not in (select b.parent_id from news b  where b.language = '$lang_code')
             union
             select * from news bn where  bn.type='News' and bn.id='$id' and bn.language = '$lang_code' and bn.status = 'Active'
             ) select *from onlyLanguage ol order by ol.id ASC LIMIT 1");
        if($news == null){
            abort(404);
        }
        $relatedNews =DB::select("with onlyEnglish as (
            SELECT * FROM news b where b.type='News' and b.id !='$id' and b.language = 'en' and b.status = 'Active' order by b.id ASC LIMIT 3
             ),
             onlyLanguage as (
             SELECT ol.* FROM onlyEnglish ol where  ol.id not in (select b.parent_id from news b  where b.language = '$lang_code')
             union
             select * from news bn where bn.type='News' and bn.id !='$id' and  bn.language = '$lang_code' and bn.status = 'Active'
             ) select *from onlyLanguage ol order by ol.id ASC LIMIT 3");
        }catch(Exception $ex){
            abort(500);
        }
        return view('public.news.detail')
        ->with('news',$news)
        ->with('relatedNews',$relatedNews);
    }

}
