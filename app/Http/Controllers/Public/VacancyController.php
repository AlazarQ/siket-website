<?php

namespace App\Http\Controllers\Public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Vacancy;
class VacancyController extends Controller
{
    //
    public function index(){
        try{
         $vacancies = Vacancy::where('status','Active')->simplePaginate(12);
        }catch(Exception $ex){
            abort(500);
        }
        return view('public.vacancy.index')
        ->with('vacancies',$vacancies);
    }
    public function detail($position,$id){
        try{
         $vacancy = Vacancy::where('status','Active')->where('id',$id)->first();
        }catch(Exception $ex){
            abort(500);
        }
        return view('public.vacancy.detail')
        ->with('vacancy',$vacancy);
    }
}
