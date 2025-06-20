<?php

namespace App\Http\Controllers\Public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Pagination\LengthAwarePaginator as Paginator;
use Artesaos\SEOTools\Facades\SEOMeta;
use Artesaos\SEOTools\Facades\OpenGraph;
use Artesaos\SEOTools\Facades\TwitterCard;
use DB;
class AtmController extends Controller
{
    public function index(Request $request){
        SEOMeta::setTitle("Find Sikek Bank ATM Locations Near You");
        SEOMeta::setDescription("FDiscover Sikek Bank ATM locations conveniently located near you.");
        SEOMeta::setCanonical('https://siketbank.com/atm');
        SEOMeta::addKeyword(['Sikek Bank ATM locations', 'ATM locator','find nearest ATM','secure transactions', 'nearest bank branch']);
        OpenGraph::setDescription("Discover Sikek Bank ATM locations conveniently located near you.");
        OpenGraph::setTitle("Find Sikek Bank ATM Locations Near You");
        OpenGraph::setUrl('https://siketbank.com/atm');
        OpenGraph::addProperty('type', 'atm');
        TwitterCard::setTitle("Find Sikek Bank ATM Locations Near You");
        TwitterCard::setDescription("Discover Sikek Bank ATM locations conveniently located near you.");
        TwitterCard::setUrl('https://siketbank.com/atm');

       $lang_code = app()->getLocale();

       $atmList = DB::select("with onlyEnglish as (
        SELECT * FROM atm b where b.language = 'en' and b.status = 'Active' order by b.id ASC
         ),
         onlyLanguage as (
         SELECT ol.* FROM onlyEnglish ol where  ol.id not in (select b.parent_id from atm b  where b.language = '$lang_code')
         union
         select * from atm bn where bn.language = '$lang_code' and bn.status = 'Active'
         ) select * from onlyLanguage ol order by ol.id ASC");
    $total=count($atmList);
    $per_page = 16;
    $current_page = $request->input("page") ?? 1;

    $starting_point = ($current_page * $per_page) - $per_page;

    $atmList = array_slice($atmList, $starting_point, $per_page, true);
    $atmList = new Paginator($atmList, $total, $per_page, $current_page, [
        'path' => $request->url(),
        'query' => $request->query(),
    ]);

       return view('public.atm.index')->with('atmList',$atmList);
    }
}
