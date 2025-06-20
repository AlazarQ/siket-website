<?php

namespace App\Http\Controllers\Public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\BoardDirector;
use DB;
use Artesaos\SEOTools\Facades\SEOMeta;
use Artesaos\SEOTools\Facades\OpenGraph;
use Artesaos\SEOTools\Facades\TwitterCard;
class ExecutiveManagementController extends Controller
{
    //
    public function index(){
        try{
            SEOMeta::setTitle("Siket Bank Executive Management | Meet Our Leadership Team");
            SEOMeta::setDescription("Meet the Siket Bank Executive Management team, driving our vision of excellence in banking services");
            SEOMeta::setCanonical('https://siketbank.com/executive-management');
            SEOMeta::addKeyword(['Siket Bank Executive Management', 'leadership team','customer-centric leadership']);
            OpenGraph::setDescription("Meet the Siket Bank Executive Management team, driving our vision of excellence in banking services");
            OpenGraph::setTitle("Siket Bank Executive Management | Meet Our Leadership Team");
            OpenGraph::setUrl('https://siketbank.com/executive-management');
            OpenGraph::addProperty('type', 'executive-management');
            TwitterCard::setTitle("Siket Bank Executive Management | Meet Our Leadership Team");
            TwitterCard::setDescription("Meet the Siket Bank Executive Management team, driving our vision of excellence in banking services");
            TwitterCard::setUrl('https://siketbank.com/executive-management');

            $lang_code =app()->getLocale();
            $managements = DB::select("with onlyEnglish as (
            SELECT * FROM board_director b where b.type='president' or b.type='excutive' or b.type='director' and  b.language = 'en' and b.status = 'Active' order by b.id ASC
             ),
             onlyLanguage as (
             SELECT ol.* FROM onlyEnglish ol where  ol.id not in (select b.parent_id from board_director b  where b.language = '$lang_code')
             union
             select * from board_director bn where bn.type='president' or bn.type='excutive' or bn.type='director' and bn.language = '$lang_code' and bn.status = 'Active'
             ) select *from onlyLanguage ol order by ol.id ASC");
            }catch(Exception $ex){
                abort(500);
            }
        return view('public.executive-management.index')
        ->with('managements',$managements);
    }
}
