@extends('layouts._public');
@section('body')
<section class="bg-default page-next-level" style="background: url(images/bg/bg-page.png) center no-repeat;margin-top: 50px;">
    <div class="home-center">
        <div class="home-desc-center">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-12">
                        <div class="text-center pt-4">
                            <h3 class="title-pager mb-0">{{__("Search Result")}}</h3>
                        </div>
                        <ul class="page-next text-center mt-4 pt-2">
                            <li><a href="/" class="text-dark fs-6">{{__("Home")}}</a></li>
                            <li>
                                <span class="text-primary fs-6">{{__("Search Result")}}</span>
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
        <!--Service START -->
        <section class="section about-section">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-5 col-md-5">
                        <div class="about-img position-relative">
                            <img src="{{asset($search->file)}}" width="300" class="img-fluid mx-auto rounded d-block" alt="">
                        </div>
                    </div>
                    <!--end col-->

                    <div class="col-lg-7 col-md-7">
                        <div class="about-content ms-lg-4 mt-4 mt-sm-0 pt-2 pt-sm-0">

                            {!!$search->content!!}

                        </div>
                    </div>
                    <!--end col-->
                </div>
                <!--end row-->
            </div>
            <!--end container-->
        </section>
        <!--end section-->


        <!--Service END -->
@endsection
