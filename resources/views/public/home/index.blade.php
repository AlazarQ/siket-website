@extends('layouts._public')
@section('css')
<link href="{{asset('assets/public/css/aos.css')}}" rel="stylesheet" />
@endsection
@section('body')
<!-- Slider main container -->
<div class="swiper">
  <!-- Additional required wrapper -->
  <div class="swiper-wrapper">
    <!-- Slides -->
    @foreach($banners as $banner)
    <div class="swiper-slide">
         <!-- Hero Start -->
   <section
   class="bg-home zoom-image d-flex align-items-center position-relative"
   id="home"
 >
   <div class="bg-overlay image-wrap" id="hero-images" style="background: url({{asset($banner->file)}});background-position: center center;background-size: cover;background-repeat: no-repeat;"></div>
   <div class="bg-overlay bg-gradient"></div>
   <div class="container">
     <div class="row justify-content-center mt-5">
       <div class="col-lg-6 col-12">
         <div class="title-heading text-start">
          <h1 class="heading text-white mb-4">{{$banner->title}}</h1>
          <h1 class="heading text-white mb-4"></h1>

          <a href="/about-us" class="btn btn-primary pt-2 mt-4">{{ __('Learn More') }}</a>
         </div>
       </div>
       <!-- end col -->
     </div>
     <!-- end row -->
   </div>
   <!-- end container -->
 </section>
 <!--end section-->
    <!-- Hero End -->
    </div>
  @endforeach
  </div>
  <!-- If we need navigation buttons -->
  <div class="swiper-button-prev"></div>
  <div class="swiper-button-next"></div>

</div>

   @if(count($aboutUs) != 0)
    <!-- About START -->
    <section class="section about-section" id="about">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6" data-aos="fade-down" data-aos-duration="1500">
                    <div class="about-img position-relative">
                        <img src="{{asset($aboutUs[0]->file)}}" class="img-fluid rounded shadow" alt="">
                    </div>
                </div>
                <!--end col-->

                <div class="col-md-6 mt-4 mt-sm-0 pt-2 pt-sm-0" data-aos="fade-up" data-aos-duration="1500">
                    <div class="section-title ms-lg-4 mb-0">
                        <span class="badge bg-soft-primary text-uppercase text-primary py-2 px-3 rounded-pill mb-2">{{ __('About Us') }}</span>
                        {!!Str::substr($aboutUs[0]->description,0, 320)!!}. . .

                        <div class="mt-3">
                            <a href="{{route('about-us')}}" class="btn btn-primary">{{ __('Read More') }}</a>
                        </div>
                    </div>
                </div>
                <!--end col-->
            </div>
            <!--end row-->
        </div>
        <!--end container-->
    </section>
    <!--end section-->
    <!-- About END -->
    @endif
    <section class="section bg-light" id="features" data-aos="fade-up" data-aos-duration="1000">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12">
                    <div class="section-title text-center mb-4 pb-2">
                        <h3 class="title text-capitalize mb-4">{{Carbon\Carbon::now()->toFormattedDateString()}} {{ __('Exchange Rate') }} </h3>
                    </div>
                </div>
                <!--end col-->
            </div>
            <table class="table table-striped table-responsive">
                <thead>
                  <tr>
                    <th scope="col">{{ __('Currency') }}</th>
                    <th scope="col">{{ __('Buying') }}</th>
                    <th scope="col">{{ __('Selling') }}</th>
                  </tr>
                </thead>
                <tbody>
                    @foreach ($exchangeRates as $exchangeRate )

                  <tr>
                    <th scope="row">
                        <div class="d-flex">
                            <img
                            src="{{asset($exchangeRate->file)}}"
                            class="img-fluid"
                            width="100"
                            alt=""
                            style="width: 50px;object-fit: cover;border-radius: 100%;height: 50px;"
                          />
                          <div class="p-3">
                            {{$exchangeRate->currency}}
                          </div>
                        </div>

                    </th>
                    <td class="py-3">{{$exchangeRate->buying}}</td>
                    <td class="py-3">{{$exchangeRate->selling}}</td>
                  </tr>
                @endforeach
                </tbody>
              </table>
        </div>
        <!--end container-->
      </section>
      <!--end section-->
    <!-- Counter START -->
    <section
      class="section counter bg-counter"
      data-jarallax='{"speed": 0.5}'
    >
      <div class="bg-overlay bg-black" style="background-color: #586e6c !important;"></div>
      <div class="container">
        <div class="row" id="counter">
          <div class="col-lg-4 col-6">
            <div class="counter-content text-center">
              <i class="mdi mdi-bank text-light fs-3"></i>
              <div class="content overflow-hidden d-block">
                <h4 class="text-light py-2 mb-0">
                  <span class="counter-value" data-target="{{$branchCount}}">{{$branchCount-$branchCount}}</span>+
                </h4>

                <p class="counter-name text-light mb-0">{{__('Branches')}}</p>
              </div>
            </div>
          </div>
          <!--end col-->

          <div class="col-lg-4 col-6">
            <div class="counter-content text-center">
              <i class="mdi mdi-wallet-outline text-light fs-3"></i>
              <div class="content overflow-hidden d-block">
                <h4 class="text-light py-2 mb-0">
                  <span class="counter-value" data-target="{{$atmCount}}">{{$atmCount-$atmCount}}</span>+
                </h4>
                <p class="counter-name text-light mb-0">{{__('ATMs')}}</p>
              </div>
            </div>
          </div>
          <!--end col-->

          <div class="col-lg-4 col-6 mt-4 mt-sm-0">
            <div class="counter-content text-center">
              <i class="mdi mdi-account-group text-light fs-3"></i>
              <div class="content overflow-hidden d-block">
                <h4 class="text-light py-2 mb-0">
                  <span class="counter-value" data-target="{{$employeeCount}}">{{$employeeCount-$employeeCount}}</span>+
                </h4>
                <p class="counter-name text-light mb-0">{{__('Employees')}}</p>
              </div>
            </div>
          </div>
          <!--end col-->
        </div>
        <!--end row-->
      </div>
      <!--end counter-->
    </section>
    <!--end section-->
    <!-- Counter END -->
        <!-- Services START -->
        <section class="section" id="services">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                        <a href="/coming-soon">
                        <div class="services bg-white text-center p-4">
                            <div class="icon text-primary">
                                <i
                                    class="mdi mdi-account h3 text-center justify-content-center align-items-center d-flex mx-auto rounded-circle"></i>
                            </div>
                            <div class="content mt-3">
                                <h5 class="text-dark mt-2">{{__('Open Account')}}</h5>

                            </div>
                        </div>
                    </a>
                    </div>
                    <!--end col-->
                    <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                        <a href="{{route('loan-calculator')}}" target="_blank">
                        <div class="services bg-white text-center p-4">
                            <div class="icon text-primary">
                                <i
                                    class="mdi mdi-calculator h4 text-center justify-content-center align-items-center d-flex mx-auto rounded-circle"></i>
                            </div>
                            <div class="content mt-3">
                                <h5 class="text-dark mt-2">{{__('Loan Calculator')}}</h5>

                            </div>
                        </div>
                        </a>
                    </div>
                    <!--end col-->
                    <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                        <a href="{{route('contact-us')}}">
                        <div class="services bg-white text-center p-4">
                            <div class="icon text-primary">
                                <i
                                    class="mdi mdi-phone h4 text-center justify-content-center align-items-center d-flex mx-auto rounded-circle"></i>
                            </div>
                            <div class="content mt-3">
                                <h5 class="text-dark mt-2">{{__('Contact Us')}}</h5>

                            </div>
                        </div>
                        </a>
                    </div>


                </div>
                <!--end row-->
            </div>
            <!--end container-->
        </section>
        <!--end section-->
   <!-- Blog Start -->
   <section class="section bg-light"  data-aos="fade-up" data-aos-duration="2000">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-12">
          <div class="section-title text-center mb-4 pb-2">
            <h3 class="title text-capitalize mb-4">{{__('News')}}</h3>

            <p class="para-desc mx-auto text-muted mb-0">
                {{__('Stay update with our latest news')}}
            </p>
          </div>
        </div>
        <!--end col-->
      </div>
      <!--end row-->

      <div class="row">
        @foreach ($newsList as $news)
        <div class="col-lg-4 col-md-6 mt-4 pt-2">
            <div
              class="card blog blog-primary shadow rounded overflow-hidden border-0 h-100"
            >
              <div class="card-img image position-relative overflow-hidden">
                <div
                  class="position-relative overflow-hidden mx-4 mt-4 rounded"
                >
                  <img
                    src="{{asset($news->file)}}"
                    class="img-fluid blog-image"
                    alt=""
                  />
                  <div class="bg">
                    <div class="bg-overlay bg-gradient"></div>
                  </div>
                </div>
              </div>
              <div class="card-body content p-0">
                <div class="p-4">
                  <ul class="post-meta list-unstyled list-inline mb-3">
                      <li class="list-inline-item"><i class="mdi mdi-calendar-check me-2"></i>{{Carbon\Carbon::parse($news->date_created)->toFormattedDateString()}}</li>
                  </ul>
                  <a
                    href="{{route('news-detail',['title'=>Str::slug($news->title)."-".$news->id])}}"
                    class="h5 title text-dark d-block mb-0"
                    >{{$news->title}}</a
                  >
                  <p class="text-muted mt-2 mb-0">
                    {!!Str::substr($news->description,0, 200)!!}. . .
                  </p>
                  <div class="read-more fs-6 mt-3">
                    <a href="{{route('news-detail',['title'=>Str::slug($news->title)."-".$news->id])}}" class="text-dark"> {{__('Read More')}}</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- end col -->
        @endforeach
      </div>
      <!-- end row -->
    </div>
    <!-- end container -->
  </section>
  <!-- Blog End -->
@endsection
@section('scripts')
<script src="{{asset('assets/public/js/aos.js')}}"></script>
<script>
    AOS.init();
</script>
@endsection
