@extends('layouts._public');
@section('body')
<section class="bg-default page-next-level" style="background: url(images/bg/bg-page.png) center no-repeat;margin-top: 50px;">
    <div class="home-center">
        <div class="home-desc-center">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-12">
                        <div class="text-center">
                            <h3 class="title-pager mb-0">Media Gallery</h3>
                        </div>
                        <ul class="page-next text-center mt-4 pt-2">
                            <li><a href="/" class="text-dark fs-6">Home</a></li>
                            <li>
                                <span class="text-primary fs-6">Media Gallery</span>
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
<section class="section my-5" id="portfolio">
    <div class="container">
        <div id="grid" class="row g-3 row-cols-lg-3 row-cols-md-2 row-cols-sm-2 row-cols-1">
            @foreach ($medias as $media )
            <div class="col picture-item" data-groups='["accounting"]'>
                <div class="position-relative portfolio-standard overflow-hidden rounded">
                    <div class="position-relative port-image">
                        <img src="{{asset($media->file)}}" class="img-fluid shadow" alt="work-image">
                        <div class="overlay-work"></div>
                        <div class="icon text-center">
                            <a href="{{asset($media->file)}}"
                                class="btn btn-icon btn-pills btn-lg lightbox text-primary bg-white border-white"><i
                                    class="mdi mdi-arrow-expand-all"></i></a>
                        </div>
                    </div>
                    <div class="content bg-light p-3 text-center mb-2">
                        <h5 class="work-title mb-0"><span class="text-dark">{{$media->title}}</span></h5>
                    </div>
                </div>
            </div>
            <!--end col-->
            @endforeach
        </div>
        <!-- end row -->
    </div>
    <!--end container-->
</section>
@endsection
@section('scriptTop')
<script src="{{asset('assets/public/js/shuffle.min.js')}}"></script>
<script src="{{asset('assets/public/js/tobii.min.js')}}"></script>
@endsection
