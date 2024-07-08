<?php

namespace App\Http\Controllers\Public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
class DigitalBankingController extends Controller
{
    //
    public function detail($id){
        try{
        $lang_code = app()->getLocale();

        $product = DB::select("with detailContent as (
SELECT * FROM mega_header b where b.parent_id = $id and  b.language ='$lang_code'
   LIMIT 1 ) SELECT * FROM mega_header b where b.id = $id and b.id not in (select l.parent_id from detailContent l)
    union
    select *from detailContent LIMIT 1");
        if($product == null){
            abort(404);
        }
        }catch(Exception $ex){
            abort(500);
        }
        return view('public.digital-banking.detail')
        ->with('product',$product);
    }
}
