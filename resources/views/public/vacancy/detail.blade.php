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
                <h3>{{$vacancy->vacancy_position}}</h3>
                <p class="d-flex">Deadline: <i class="mdi mdi-calendar-month d-block mb-0 ms-2"></i> <span class="px-2">{{$vacancy->deadline}}</span></p>
                </div>
                <hr>
              <div class="col-12">
               {!!$vacancy->vacancy_description!!}
              </div>
              @if($vacancy->application_link != null)
              <div class="col-12 my-5">
               <a href="{{$vacancy->application_link}}" class="btn btn-primary">Apply</a>
              </div>
              @endif
            </div>
            <!--end row-->
        </div>
        <!--end container-->
    </section>
    <!--end section-->
@endsection
