<?php

namespace App\Http\Controllers\Public;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Media;
use DB;
use Artesaos\SEOTools\Facades\SEOMeta;
use Artesaos\SEOTools\Facades\OpenGraph;
use Artesaos\SEOTools\Facades\TwitterCard;
class GalleryController extends Controller
{
    //
    public function index(){
        try{
        SEOMeta::setTitle("Siket Bank Gallery | Explore Our Visual Highlights");
        SEOMeta::setDescription("Discover Siket Bank's gallery showcasing visual highlights, events, and milestones. Explore our achievements and community engagements through captivating images");
        SEOMeta::setCanonical('https://siketbank.com/gallery');
        SEOMeta::addKeyword(['Siket Bank gallery', 'bank events','bank photos','Siket Bank images']);
        OpenGraph::setDescription("Discover Siket Bank's gallery showcasing visual highlights, events, and milestones. Explore our achievements and community engagements through captivating images");
        OpenGraph::setTitle("Siket Bank Gallery | Explore Our Visual Highlights");
        OpenGraph::setUrl('https://siketbank.com/gallery');
        OpenGraph::addProperty('type', 'gallery');
        TwitterCard::setTitle("Siket Bank Gallery | Explore Our Visual Highlights");
        TwitterCard::setDescription("Discover Siket Bank's gallery showcasing visual highlights, events, and milestones. Explore our achievements and community engagements through captivating images");
        TwitterCard::setUrl('https://siketbank.com/gallery');

        $lang_code = app()->getLocale();
        $medias = DB::select("with onlyEnglish as (
            SELECT * FROM media b where b.language = 'en' and b.status = 'Active' order by b.id ASC
             ),
             onlyLanguage as (
             SELECT ol.* FROM onlyEnglish ol where  ol.id not in (select b.parent_id from media b  where b.language = '$lang_code')
             union
             select * from media bn where bn.language = '$lang_code' and bn.status = 'Active'
             ) select *from onlyLanguage ol order by ol.id ASC");
        }catch(Exception $ex){
            abort(500);
        }
        return view('public.gallery.index')
        ->with('medias',$medias);
    }
}
