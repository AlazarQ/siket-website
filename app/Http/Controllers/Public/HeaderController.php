<?php

namespace App\Http\Controllers\Public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\MegaHeader;
class HeaderController extends Controller
{
    static function  header(){
    try{
    $aboutUsLinks = MegaHeader::where('header_type_code','About')->where('status','Active')->where('language','hsilg')->get();

    }catch(Exception $ex){
        abort(500);
    }
    return view('public.shared.header')
    ->with('aboutUsLinks',$aboutUsLinks);
  }
}
