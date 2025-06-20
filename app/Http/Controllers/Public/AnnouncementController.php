<?php

namespace App\Http\Controllers\Public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Pagination\LengthAwarePaginator as Paginator;
use App\Models\News;
use DB;
use Artesaos\SEOTools\Facades\SEOMeta;
use Artesaos\SEOTools\Facades\OpenGraph;
use Artesaos\SEOTools\Facades\TwitterCard;
class AnnouncementController extends Controller
{
    public function index(Request $request){
        try{
        SEOMeta::setTitle("Siket Bank Announcements | Latest Bank Updates");
        SEOMeta::setDescription("Discover Siket Bank's official announcements and important updates");
        SEOMeta::setCanonical('https://siketbank.com/announcement');
        SEOMeta::addKeyword(['Siket Bank announcements', 'latest bank announcements','financial news','financial updates', 'banking news today']);
        OpenGraph::setDescription("Discover Siket Bank's official announcements and important updates");
        OpenGraph::setTitle("Siket Bank News | Stay Updated with Latest Banking Updates");
        OpenGraph::setUrl('https://siketbank.com/announcement');
        OpenGraph::addProperty('type', 'announcement');
        TwitterCard::setTitle("Siket Bank News | Stay Updated with Latest Banking Updates");
        TwitterCard::setDescription("Discover Siket Bank's official announcements and important updates");
        TwitterCard::setUrl('https://siketbank.com/announcement');

        $lang_code = app()->getLocale();
        $announcementList = DB::select("with onlyEnglish as (
            SELECT * FROM news b where b.type='Announcement' and b.language = 'en' and b.status = 'Active' order by b.id ASC
             ),
             onlyLanguage as (
             SELECT ol.* FROM onlyEnglish ol where  ol.id not in (select b.parent_id from news b  where b.language = '$lang_code')
             union
             select * from news bn where bn.type='Announcement' and bn.language = '$lang_code' and bn.status = 'Active'
             ) select *from onlyLanguage ol order by ol.id ASC");
        $total=count($announcementList);
        $per_page = 16;
        $current_page = $request->input("page") ?? 1;

        $starting_point = ($current_page * $per_page) - $per_page;

        $announcementList = array_slice($announcementList, $starting_point, $per_page, true);

        $announcementList = new Paginator($announcementList, $total, $per_page, $current_page, [
            'path' => $request->url(),
            'query' => $request->query(),
        ]);
        }catch(Exception $ex){
            abort(500);
        }
        return view('public.announcement.index')
        ->with('announcementList',$announcementList);
    }
    public function detail($title){
        try{
        $announcementTitle = Str::title(str_replace('-', ' ', $title));
        $lang_code = app()->getLocale();
        $index = strrpos($title,"-");
        $id = substr($title,$index+1);
        $announcement = DB::select("with onlyEnglish as (
            SELECT * FROM news b where b.type='Announcement' and b.id= '$id' and b.language = 'en' and b.status = 'Active' order by b.id ASC LIMIT 1
             ),
             onlyLanguage as (
             SELECT ol.* FROM onlyEnglish ol where  ol.id not in (select b.parent_id from news b  where b.language = '$lang_code')
             union
             select * from news bn where bn.type='Announcement' and bn.id='$id' and bn.language = '$lang_code' and bn.status = 'Active'
             ) select *from onlyLanguage ol order by ol.id ASC LIMIT 1");
        if($announcement == null){
            abort(404);
        }
        $relatedAnnouncement =DB::select("with onlyEnglish as (
            SELECT * FROM news b where bn.type='Announcement' and b.id !='$id' and b.language = 'en' and b.status = 'Active' order by b.id ASC LIMIT 3
             ),
             onlyLanguage as (
             SELECT ol.* FROM onlyEnglish ol where  ol.id not in (select b.parent_id from news b  where b.language = '$lang_code')
             union
             select * from news bn where bn.type='Announcement' and bn.id !='$id' and  bn.language = '$lang_code' and bn.status = 'Active'
             ) select *from onlyLanguage ol order by ol.id ASC LIMIT 3");
        }catch(Exception $ex){
            abort(500);
        }
        return view('public.announcement.detail')
        ->with('announcement',$announcement)
        ->with('relatedAnnouncement',$relatedAnnouncement);
    }
}
