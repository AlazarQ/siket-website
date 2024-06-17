<?php

namespace App\Http\Controllers\Public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\ContactUsRequest;
use stdClass;

class ContactUsController extends Controller
{
    //
    public function index(){
        return view('public.contact-us.index');
    }
    public function save(ContactUsRequest $request){
        try{
            $details=new stdClass;
            $details->subject = $request->subject;
            $details->name = $request->name;
            $details->email = $request->email;
            $details->message = $request->message;

                \Mail::to('info@siketbank.com')->send(new \App\Mail\ContactUsMail($details));
        }catch(Exception $ex){
          abort(500);
        }
        return redirect()->back()->with('status','success');
    }
}
