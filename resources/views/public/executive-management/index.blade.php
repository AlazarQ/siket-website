@extends('layouts._public');
@section('body')
    <!-- Start Home -->
    <section class="bg-default page-next-level" style="background: url(images/bg/bg-page.png) center no-repeat;margin-top: 50px;">
        <div class="home-center">
            <div class="home-desc-center">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-12">
                            <div class="text-center">
                                <h3 class="title-pager mb-0">{{__("Executive Managements")}}</h3>
                            </div>
                            <ul class="page-next text-center mt-4 pt-2">
                                <li><a href="/" class="text-dark fs-6">{{__("Home")}}</a></li>
                                <li>
                                    <span class="text-primary fs-6">{{__("Executive Managements")}}
                                    </span>
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


    <!-- Team Start -->
    <section class="section bg-light">
        <div class="container">
            <!--end row-->
            <div class="row">
                @foreach ($managements as $management)
                @if($management->type == "president")
                <div class="col-lg-3 col-md-6 col-12 mt-2 mx-auto ">
                    <div class="team-member teams text-center position-relative overflow-hidden mb-4 shadow rounded ">
                        <div class="member-pic position-relative">
                            <img src="{{asset($management->file)}}" class="img-fluid d-block mx-auto team-image" alt="img">
                        </div>
                        <div class="member-detail position-relative bg-white p-2">
                            <h5 class="member-name mb-1"><span class="text-dark">{{$management->name}}</span></h5>
                            <span class="mt-0">{{$management->position}}</span>

                        </div>
                    </div>
                </div>
                @endif
                <!--end col-->
                @endforeach

            </div>
            <div class="row">
                @foreach ($managements as $management)
                @if($management->type == "excutive")
                <div class="col-lg-3 col-md-6 col-12 mt-2 h-100">
                    <div class="team-member teams text-center position-relative overflow-hidden mb-4 shadow rounded h-100">
                        <div class="member-pic position-relative">
                            <img src="{{asset($management->file)}}" class="img-fluid d-block mx-auto team-image" alt="img">
                        </div>
                        <div class="member-detail position-relative bg-white p-2">
                            <h5 class="member-name mb-1"><a href="{{route('directors',['id'=>$management->id])}}" class="text-dark">
                                {{$management->name}}</a></h5>
                            <span class="mt-0">{{$management->position}}</span>

                        </div>
                    </div>
                </div>
                @endif
               <!--end col-->
                @endforeach
            </div>
            <!--end row-->
            <div class="row">
                @foreach ($managements as $management)
                @if($management->type == "director")
                <div class="col-lg-3 col-md-6 col-12 mt-2 h-100">
                    <div class="team-member teams text-center position-relative overflow-hidden mb-4 shadow rounded h-100">
                        <div class="member-pic position-relative">
                            <img src="{{asset($management->file)}}" class="img-fluid d-block mx-auto team-image" alt="img">
                        </div>
                        <div class="member-detail position-relative bg-white p-2">
                            <h5 class="member-name mb-1"><a href="page-team-detail.html" class="text-dark">
                                {{$management->name}}</a></h5>
                            <span class="mt-0">{{$management->position}}</span>

                        </div>
                    </div>
                </div>
                @endif
               <!--end col-->
                @endforeach
            </div>
            <!--end row-->
        </div>
        <!--end container-->
    </section>
    <!--end section-->
    <!-- Team End -->
@endsection
