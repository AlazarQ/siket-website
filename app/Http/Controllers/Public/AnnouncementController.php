<?php

namespace App\Http\Controllers\Public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\News;
class AnnouncementController extends Controller
{
    public function index(){
        try{
        $announcementList = News::where('type','Announcement')->simplePaginate(12);
        }catch(Exception $ex){
            abort(500);
        }
        return view('public.announcement.index')
        ->with('announcementList',$announcementList);
    }
    public function detail($title){
        try{
        $announcementTitle = Str::title(str_replace('-', ' ', $title));
        $announcement = News::where('title',$announcementTitle)->first();
        if($announcement == null){
            abort(404);
        }
        $relatedAnnouncement =News::whereNot('title',$announcementTitle)->take(3)->get();
        }catch(Exception $ex){
            abort(500);
        }
        return view('public.announcement.detail')
        ->with('announcement',$announcement)
        ->with('relatedAnnouncement',$relatedAnnouncement);
    }
}
