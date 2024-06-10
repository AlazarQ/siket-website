<?php

namespace App\Http\Controllers\Public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Models\News;

class NewsController extends Controller
{
    public function index(){
        try{
        $newsList = News::simplePaginate(12);
        }catch(Exception $ex){
            abort(500);
        }
        return view('public.news.index')
        ->with('newsList',$newsList);
    }
    public function detail($title){
        try{
        $newsTitle = Str::title(str_replace('-', ' ', $title));
        $news = News::where('title',$newsTitle)->first();
        if($news == null){
            abort(404);
        }
        $relatedNews =News::whereNot('title',$newsTitle)->take(3)->get();
        }catch(Exception $ex){
            abort(500);
        }
        return view('public.news.detail')
        ->with('news',$news)
        ->with('relatedNews',$relatedNews);
    }
    public function detail2(){
        return view('public.news.detail2');
    }
    public function detail3(){
        return view('public.news.detail3');
    }
}
