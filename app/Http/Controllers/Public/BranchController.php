<?php

namespace App\Http\Controllers\Public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Pagination\LengthAwarePaginator as Paginator;
use Artesaos\SEOTools\Facades\SEOMeta;
use Artesaos\SEOTools\Facades\OpenGraph;
use Artesaos\SEOTools\Facades\TwitterCard;
use DB;
class BranchController extends Controller
{
    //
    public function branches(Request $request){
        SEOMeta::setTitle("Siket Bank Branches | Locate Our Convenient Banking Locations");
        SEOMeta::setDescription("Find Siket Bank branches near you and explore our network of convenient banking locations. Discover our services and personalized assistance at a branch near you");
        SEOMeta::setCanonical('https://siketbank.com/branches');
        SEOMeta::addKeyword(['Siket Bank branches', 'bank locations','banking branches','find Siket Bank near me', 'nearest bank branch']);
        OpenGraph::setDescription("Find Siket Bank branches near you and explore our network of convenient banking locations. Discover our services and personalized assistance at a branch near you");
        OpenGraph::setTitle("Siket Bank Branches | Locate Our Convenient Banking Locations");
        OpenGraph::setUrl('https://siketbank.com/branches');
        OpenGraph::addProperty('type', 'branches');
        TwitterCard::setTitle("Siket Bank Branches | Locate Our Convenient Banking Locations");
        TwitterCard::setDescription("Find Siket Bank branches near you and explore our network of convenient banking locations. Discover our services and personalized assistance at a branch near you");
        TwitterCard::setUrl('https://siketbank.com/branches');

       $lang_code = app()->getLocale();

       $branches = DB::select("with onlyEnglish as (
        SELECT * FROM branch b where b.language = 'en' and b.status = 'Active' order by b.id ASC
         ),
         onlyLanguage as (
         SELECT ol.* FROM onlyEnglish ol where  ol.id not in (select b.parent_id from branch b  where b.language = '$lang_code')
         union
         select * from branch bn where bn.language = '$lang_code' and bn.status = 'Active'
         ) select *from onlyLanguage ol order by ol.id ASC");
    $total=count($branches);
    $per_page = 16;
    $current_page = $request->input("page") ?? 1;

    $starting_point = ($current_page * $per_page) - $per_page;

    $branches = array_slice($branches, $starting_point, $per_page, true);
    $branches = new Paginator($branches, $total, $per_page, $current_page, [
        'path' => $request->url(),
        'query' => $request->query(),
    ]);

       return view('public.branch.index')->with('branches',$branches);
    }
}
