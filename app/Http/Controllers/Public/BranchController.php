<?php

namespace App\Http\Controllers\Public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\District;
class BranchController extends Controller
{
    //
    public function branches(){
       $districts = District::simplePaginate(36);
       return view('public.branch.index')->with('districts',$districts);
    }
}
