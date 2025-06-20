<?php

namespace App\Http\Controllers\Public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use App\Models\Search;
class SearchController extends Controller
{
    public function search(Request $request){
        try{
         $term = $request->input('term');
         $lang_code = app()->getLocale();
         $searchResult = Search::where('title', 'like', '%' . $term . '%')->orWhere('content', 'like', '%' . $term . '%')->get();
        }catch(Exception $ex){
            abort(500);
        }
        return view('public.search.index')
        ->with('term',$term)
        ->with('searchResult',$searchResult);
    }
    public function detail($id){
        try{
        $lang_code = app()->getLocale();
        $search = Search::find($id);

        if($search == null){
            abort(404);
        }
        }catch(Exception $ex){
            abort(500);
        }
        return view('public.search.detail')
        ->with('search',$search);
    }
}
