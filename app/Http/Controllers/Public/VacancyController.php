<?php

namespace App\Http\Controllers\Public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Vacancy;
use DB;
use Carbon\Carbon;
use Artesaos\SEOTools\Facades\SEOMeta;
use Artesaos\SEOTools\Facades\OpenGraph;
use Artesaos\SEOTools\Facades\TwitterCard;
class VacancyController extends Controller
{
    //
    public function index(){
        try{
        SEOMeta::setTitle("Siket Bank Vacancies | Join Our Team of Banking Professionals");
        SEOMeta::setDescription("Explore current job vacancies at Siket Bank and discover rewarding career opportunities in banking. Apply today to join our team of dedicated professionals");
        SEOMeta::setCanonical('https://siketbank.com/vacancy');
        SEOMeta::addKeyword(['Siket Bank vacancies', 'careers in banking','banking jobs','job vacancies', 'banking professionals']);
        OpenGraph::setDescription("Explore current job vacancies at Siket Bank and discover rewarding career opportunities in banking. Apply today to join our team of dedicated professionals");
        OpenGraph::setTitle("Siket Bank Vacancies | Join Our Team of Banking Professionals");
        OpenGraph::setUrl('https://siketbank.com/vacancy');
        OpenGraph::addProperty('type', 'vacancy');
        TwitterCard::setTitle("Siket Bank Vacancies | Join Our Team of Banking Professionals");
        TwitterCard::setDescription("Explore current job vacancies at Siket Bank and discover rewarding career opportunities in banking. Apply today to join our team of dedicated professionals");
        TwitterCard::setUrl('https://siketbank.com/vacancy');

         $lang_code = app()->getLocale();
         $today = Carbon::now()->format('Y-m-d');
         $vacancies = DB::select("with onlyEnglish as (
             SELECT * FROM vacancy b where b.language = 'en' and b.status = 'Active' and b.deadline >='$today' order by b.id ASC
              ),
              onlyLanguage as (
              SELECT ol.* FROM onlyEnglish ol where  ol.id not in (select b.parent_id from vacancy b  where b.language = '$lang_code')
              union
              select * from vacancy bn where bn.language = '$lang_code' and bn.status = 'Active' and bn.deadline >='$today'
              ) select *from onlyLanguage ol order by ol.id ASC");
        }catch(Exception $ex){
            abort(500);
        }
        return view('public.vacancy.index')
        ->with('vacancies',$vacancies);
    }
    public function detail($position,$id){
        try{
        $lang_code = app()->getLocale();
         $vacancy =  $vacancies = DB::select("with onlyEnglish as (
            SELECT * FROM vacancy b where b.id='$id' and b.language = 'en' and b.status = 'Active' order by b.id ASC LIMIT 1
             ),
             onlyLanguage as (
             SELECT ol.* FROM onlyEnglish ol where  ol.id not in (select b.parent_id from vacancy b  where b.language = '$lang_code')
             union
             select * from vacancy bn where bn.id='$id' and bn.language = '$lang_code' and bn.status = 'Active'
             ) select *from onlyLanguage ol order by ol.id ASC LIMIT 1");
        }catch(Exception $ex){
            abort(500);
        }
        return view('public.vacancy.detail')
        ->with('vacancy',$vacancy);
    }
}
