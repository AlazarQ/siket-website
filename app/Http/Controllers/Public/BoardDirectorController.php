<?php

namespace App\Http\Controllers\Public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\BoardDirector;
class BoardDirectorController extends Controller
{
    //
    public function index(){
        try{
        $boards = BoardDirector::where('type','chairman')->orWhere('type','board')->get();
        }catch(Exception $ex){
            abort(500);
        }
        return view('public.board-director.index')
        ->with('boards',$boards);
    }
}
