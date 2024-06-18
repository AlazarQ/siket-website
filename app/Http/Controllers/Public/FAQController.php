<?php

namespace App\Http\Controllers\Public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\FAQ;
class FAQController extends Controller
{
    public function index(){
        try{
        $faqs = FAQ::all();
        }catch(Exception $ex){
            abort(500);
        }
        return view('public.faq.index')
        ->with('faqs',$faqs);
    }
}
