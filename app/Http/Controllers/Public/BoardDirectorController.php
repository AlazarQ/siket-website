<?php

namespace App\Http\Controllers\Public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\BoardDirector;
use DB;
class BoardDirectorController extends Controller
{
    //
    public function index(){
        try{
        $lang_code =app()->getLocale();
        $boards = DB::select("with onlyEnglish as (
            SELECT * FROM board_director b where b.type='chairman' or b.type='board' and  b.language = 'en' and b.status = 'Active' order by b.id ASC
             ),
             onlyLanguage as (
             SELECT ol.* FROM onlyEnglish ol where  ol.id not in (select b.parent_id from board_director b  where b.language = '$lang_code')
             union
             select * from board_director bn where bn.type='chairman' or bn.type='board' and bn.language = '$lang_code' and bn.status = 'Active'
             ) select *from onlyLanguage ol order by ol.id ASC");
        }catch(Exception $ex){
            abort(500);
        }
        return view('public.board-director.index')
        ->with('boards',$boards);
    }
}
