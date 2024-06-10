<?php

namespace App\Http\Controllers\Public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\BoardDirector;
class ExecutiveManagementController extends Controller
{
    //
    public function index(){
        try{
            $managements = BoardDirector::where('type','president')->orWhere('type','excutive')->orWhere('type','director')->get();
            }catch(Exception $ex){
                abort(500);
            }
        return view('public.executive-management.index')
        ->with('managements',$managements);
    }
}
