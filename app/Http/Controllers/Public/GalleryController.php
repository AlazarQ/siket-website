<?php

namespace App\Http\Controllers\Public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Media;
class GalleryController extends Controller
{
    //
    public function index(){
        try{
        $medias = Media::where('status','Active')->where('language','hsilg')->simplePaginate(16);
        }catch(Exception $ex){
            abort(500);
        }
        return view('public.gallery.index')
        ->with('medias',$medias);
    }
}
