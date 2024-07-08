<?php

namespace App\Http\Controllers\Public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class LocalizationController extends Controller
{
   public function localize($locale){
    if (isset($locale)) {
        session()->put('locale', $locale);
        return redirect()->back();

    }
    return redirect()->back();
   }
}
