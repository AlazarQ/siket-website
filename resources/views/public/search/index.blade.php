@extends('layouts._public');
@section('body')
    <!-- Start Home -->
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
    <section class="section bg-light" id="features">
        <div class="container">
            <div class="row">
                @forelse ($searchResult as $search )
                <a href="{{route('search-detail',['id'=>$search->id])}}" target="_blank" style="color:black;">
                    <div class="col-lg-12 col-md-12 col-12 mt-4 pt-2">
                    <div class="d-flex features feature-primary core-feature rounded shadow p-4 bg-white">
                        <div class="icons text-center">
                            <i class="mdi mdi-file-chart d-block mb-0"></i>
                        </div>
                        <div class="flex-1 ms-3">
                            <h6 class="text-primary"></h6>
                            <h5 class="title pt-2">{{$search->title}}</h5>
                        </div>
                    </div>
                </div>
                <!-- end col --></a>
                @empty
                <h2>Search Not Found</h2>
                @endforelse

            </div>
            <!--end row-->
        </div>
        <!--end container-->
    </section>
    <!--end section-->
@endsection
