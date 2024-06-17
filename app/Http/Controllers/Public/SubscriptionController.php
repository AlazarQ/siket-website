<?php

namespace App\Http\Controllers\Public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Subscription;
use App\Http\Requests\SubscriptionRequest;
class SubscriptionController extends Controller
{
   public function subscribe(SubscriptionRequest $request){
    try{
     $status = Subscription::where('email',$request->email)->first();
     if($status != null){
        return redirect()->back()->with('exist','success');
     }
     $subscription = new Subscription;
     $subscription->email = $request->email;
     $subscription->save();
     return redirect()->back()->with('status','success');
    }catch(Exception $ex){
        abort(500);
    }
    return redirect()->back();
   }
}
