<?php

namespace App\Http\Controllers\Public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\MegaHeader;

class AboutUsController extends Controller
{
    //
    public function index(){
        try{
            $aboutUs = MegaHeader::where('header_type_code','About')->where('status','Active')->where('language','hsilg')->first();
            }catch(Exception $ex){
                abort(500);
            }
        return view('public.about-us.index')
        ->with('aboutUs',$aboutUs);
    }
}
