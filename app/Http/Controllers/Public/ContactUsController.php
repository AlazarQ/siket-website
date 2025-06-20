<?php

namespace App\Http\Controllers\Public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\ContactUsRequest;
use stdClass;
use Artesaos\SEOTools\Facades\SEOMeta;
use Artesaos\SEOTools\Facades\OpenGraph;
use Artesaos\SEOTools\Facades\TwitterCard;
class ContactUsController extends Controller
{
    //
    public function index(){
        SEOMeta::setTitle("Contact Siket Bank | Reach Out for Expert Banking Assistance");
        SEOMeta::setDescription("Get in touch with Siket Bank for personalized banking assistance and support. Contact us today to speak with our knowledgeable staff and find solutions to your financial needs");
        SEOMeta::setCanonical('https://siketbank.com/contact-us');
        SEOMeta::addKeyword(['Siket Bank contact', 'contact us','customer service','banking assistance', 'reach out to Siket Bank']);
        OpenGraph::setDescription("Get in touch with Siket Bank for personalized banking assistance and support. Contact us today to speak with our knowledgeable staff and find solutions to your financial needs");
        OpenGraph::setTitle("Contact Siket Bank | Reach Out for Expert Banking Assistance");
        OpenGraph::setUrl('https://siketbank.com/contact-us');
        OpenGraph::addProperty('type', 'contact-us');
        TwitterCard::setTitle("Contact Siket Bank | Reach Out for Expert Banking Assistance");
        TwitterCard::setDescription("Get in touch with Siket Bank for personalized banking assistance and support. Contact us today to speak with our knowledgeable staff and find solutions to your financial needs");
        TwitterCard::setUrl('https://siketbank.com/contact-us');

        return view('public.contact-us.index');
    }
    public function save(ContactUsRequest $request){
        try{
            $recaptcha = $request->input('g-recaptcha-response');

            if (is_null($recaptcha)) {
               $request->session()->flash('message', "  Please complete the recaptcha again to proceed. ");
             return redirect()->back();
            }
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
