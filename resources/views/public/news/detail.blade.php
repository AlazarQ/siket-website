@extends('layouts._public')
@section('body')
    <!-- Start Home -->
    <section class="bg-default page-next-level" style="background: url(images/bg/bg-page.png) center no-repeat;margin-top: 50px;">
        <div class="home-center">
            <div class="home-desc-center">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-12">
                            <div class="text-center pt-4">
                                <h3 class="title-pager mb-0">{{__('News')}}</h3>
                            </div>
                            <ul class="page-next text-center mt-4 pt-2">
                                <li><a href="/" class="text-dark fs-6">{{__('Home')}}</a></li>
                                <li><a href="/news" class="text-dark fs-6">{{__('News')}}</a></li>
                                <li>
                                    <span class="text-primary fs-6">{{__('News Detail')}}</span>
                                </li>
                            </ul>
                        </div>
                        <!--end col-->

                    </div>
                    <!--end row-->
                </div>
                <!--end container-->
            </div>
        </div>
    </section>
    <!--end section-->
    <!-- End Home -->

    <!-- Blog Start -->
    <section class="section" style="padding-top: 40px;">
        <div class="container">
            <div class="row">
                <!-- START BLOGS -->
                <div class="col-lg-8 col-md-8 mt-4 pt-2">
                    <div class="card blog blog-primary shadow rounded overflow-hidden border-0">
                        <div class="card-img image position-relative overflow-hidden">
                            <div class="p-4 pb-0">
                                <ul class="post-meta list-unstyled list-inline mb-3">
                                    <li class="list-inline-item"><i class="mdi mdi-calendar-check me-2"></i>{{Carbon\Carbon::parse($news[0]->date_created)->toFormattedDateString()}}</li>
                                </ul>
                                <h4 class="mb-3"><span class="post-title text-dark">{{$news[0]->title}}</span></h4>
                            </div>
                            <div class="position-relative overflow-hidden mx-4 mt-4 rounded">
                                <img src="{{asset($news[0]->file)}}" class="img-fluid news-detail-image" alt="">
                                <div class="bg">
                                    <div class="bg-overlay bg-gradient"></div>
                                </div>
                            </div>

                        </div>
                        <div class="card-body content p-0">
                            <div class="p-4">
                              <p class="text-muted">{!!$news[0]->description!!}</p>
                            </div>
                        </div>
                    </div>

                </div>
                <!--end col-->
                <!-- END BLOGS -->

                <!-- START SIDEBAR -->
                <div class="col-lg-4 col-md-4 col-12 mt-4 mt-sm-0 pt-2 pt-sm-0">
                    <!-- START SIDEBAR -->
                    <div class="sidebar p-4 bg-light rounded">


                        <!-- SOCIAL -->
                        <div class="widget mb-4">
                            <h5 class="pb-2 widget-title border-bottom">{{__("Follow Us")}}</h5>
                            <ul class="list-unstyled social-icon mt-3 mb-0">
                                <li class="list-inline-item mb-0"><a href="https://www.facebook.com/profile.php?id=100095438919373" class="icon-sm" style="background-color: #3b5998;"><span class="mdi mdi-facebook" style="font-size: 25px;"></span>
                                </a></li>
                                <li class="list-inline-item mb-0"><a href="https://www.linkedin.com/company/103106321/admin/feed/posts/" class="icon-sm" style="background-color: #0077B5;"><span class="mdi mdi-linkedin" style="font-size: 25px;"></span>
                                </a></li>
                                <li class="list-inline-item mb-0"><a href="https://t.me/siketbnk" class="icon-sm" style="background-color: #0088cc;"><span class="mdi mdi-send-circle" style="font-size: 25px;"></span>
                                </a></li>
                                <li class="list-inline-item mb-0"><a href="https://x.com/SiketBank" class="icon-sm" style="background-color: #fff;position:relative;top:7px"><img src="{{asset('assets/public/images/footer/twitter.png')}}" class="p-3" alt="">
                                </a></li>
                            </ul>
                        </div>
                        <!-- SOCIAL -->


                       @if(count($relatedNews) > 0)
                        <!-- RECENT POST -->
                        <div class="widget mb-4">
                            <h5 class="pb-2 widget-title border-bottom">Recent Post</h5>
                            <div class="mt-4">
                                @foreach ($relatedNews as $related )
                                <div class="clearfix post-recent">
                                    <div class="post-recent-thumb float-start"> <a href="{{route('news-detail',['title'=>Str::slug($related->title)."-".$related->id])}}"> <img alt="img"
                                                src="{{asset($related->file)}}" class="img-fluid rounded related-news-image"></a></div>
                                    <div class="post-recent-content float-start"><a href="{{route('news-detail',['title'=>Str::slug($related->title)."-".$related->id])}}">{{$related->title}}</a><span class="text-muted mt-2">{{Carbon\Carbon::parse($related->date_created)->toFormattedDateString()}}</span></div>
                                </div>
                                @endforeach
                            </div>
                        </div>
                        <!-- RECENT POST -->
                      @endif

                    </div>
                    <!-- END SIDEBAR -->
                </div>
                <!--end col-->
                <!-- END SIDEBAR -->
            </div>
            <!--end row-->
        </div>
        <!--end container-->
    </section>
    <!--end section-->
    <!-- Blog End -->
@endsection
