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
                                <h3 class="title-pager mb-0">Vacancy Detail</h3>
                            </div>
                            <ul class="page-next text-center mt-4 pt-2">
                                <li><a href="/" class="text-dark fs-6">Home</a></li>
                                <li><a href="{{route('vacancy')}}" class="text-dark fs-6">Vacancy</a></li>
                                <li>
                                    <span class="text-primary fs-6">Vacancy Detail</span>
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
                <div class="col-12">
                <h3>{{$vacancy[0]->vacancy_position}}</h3>
                <p class="d-flex">Deadline: <i class="mdi mdi-calendar-month d-block mb-0 ms-2"></i> <span class="px-2">{{Carbon\Carbon::parse($vacancy[0]->deadline)->toFormattedDateString()}}</span></p>
                <p class="badge bg-soft-primary text-uppercase text-primary py-2 px-3 rounded-pill mb-2">{{abs(ceil(Carbon\Carbon::now()->diffInDays(Carbon\Carbon::parse($vacancy[0]->deadline)))) <=1?abs(ceil(Carbon\Carbon::now()->diffInDays(Carbon\Carbon::parse($vacancy[0]->deadline))))." Day Left":abs(ceil(Carbon\Carbon::now()->diffInDays(Carbon\Carbon::parse($vacancy[0]->deadline))))." Days Left"}} </p>

                </div>
                <hr>
              <div class="col-12">
               {!!$vacancy[0]->vacancy_description!!}
              </div>
              @if($vacancy[0]->application_link != null)
              <div class="col-12 my-5">
               <a href="{{$vacancy[0]->application_link}}" class="btn btn-primary">Apply</a>
              </div>
              @endif
            </div>
            <!--end row-->
        </div>
        <!--end container-->
    </section>
    <!--end section-->
@endsection
