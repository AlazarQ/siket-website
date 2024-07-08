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
                                <h3 class="title-pager mb-0">Vacancy</h3>
                            </div>
                            <ul class="page-next text-center mt-4 pt-2">
                                <li><a href="/" class="text-dark fs-6">Home</a></li>
                                <li>
                                    <span class="text-primary fs-6">Vacancy</span>
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
                @forelse ($vacancies as $vacancy)
                <a href="{{route('vacancy-detail',['position'=>Str::slug($vacancy->vacancy_position),'id'=>$vacancy->id])}}" target="_blank" style="color:black;">
                    <div class="col-lg-12 col-md-12 col-12 mt-4 pt-2">
                    <div class="d-flex features feature-primary core-feature rounded shadow p-4 bg-white">
                        <div class="icons text-center">
                            <i class="mdi mdi-briefcase-account d-block mb-0"></i>
                        </div>
                        <div class="flex-1 ms-3">
                            <h6 class="text-primary"></h6>
                            <h5 class="title">{{$vacancy->vacancy_position}}</h5>
                            <p>Deadline: {{Carbon\Carbon::parse($vacancy->deadline)->toFormattedDateString()}}</p>
                            <p class="badge bg-soft-primary text-uppercase text-primary py-2 px-3 rounded-pill mb-2">{{abs(ceil(Carbon\Carbon::now()->diffInDays(Carbon\Carbon::parse($vacancy->deadline)))) <=1?abs(ceil(Carbon\Carbon::now()->diffInDays(Carbon\Carbon::parse($vacancy->deadline))))." Day Left":abs(ceil(Carbon\Carbon::now()->diffInDays(Carbon\Carbon::parse($vacancy->deadline))))." Days Left"}} </p>
                        </div>
                    </div>
                </div>
                <!-- end col --></a>
                @empty
                <h3>No Vacancy Listed</h3>
                @endforelse ($vacancies as $vacancy )



            </div>
            <!--end row-->
        </div>
        <!--end container-->
    </section>
    <!--end section-->
@endsection
