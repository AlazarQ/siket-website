<?php

namespace App\Http\Controllers\Public;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;

class ComingSoonController extends Controller
{
    public function index(){
        return view('public.shared.coming-soon');
    }
}
