<?php

namespace App\Http\Controllers\Public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\BoardDirector;
use DB;
class ExecutiveManagementController extends Controller
{
    //
    public function index(){
        try{
            $lang_code =app()->getLocale();
            $managements = DB::select("with onlyEnglish as (
            SELECT * FROM board_director b where b.type='president' or b.type='excutive' and  b.language = 'en' and b.status = 'Active' order by b.id ASC
             ),
             onlyLanguage as (
             SELECT ol.* FROM onlyEnglish ol where  ol.id not in (select b.parent_id from board_director b  where b.language = '$lang_code')
             union
             select * from board_director bn where bn.type='president' or bn.type='excutive' and bn.language = '$lang_code' and bn.status = 'Active'
             ) select *from onlyLanguage ol order by ol.id ASC");
            }catch(Exception $ex){
                abort(500);
            }
        return view('public.executive-management.index')
        ->with('managements',$managements);
    }
}
