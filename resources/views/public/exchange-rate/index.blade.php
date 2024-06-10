@extends('layouts._public');
@section('body')
    <!-- Feature START -->
    <section class="section bg-light" id="features" data-aos="fade-up" data-aos-duration="1000">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-md-10">
              <div class="section-title text-center mb-4 pb-2">
                <h4 class="title mb-4">April 24,2024 Exchange Rate</h4>
              </div>
            </div>
          </div>

          <div class="row">
            <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
              <div
                class="d-flex features feature-primary core-feature rounded shadow p-1 bg-white"
              >
                <div class="icons text-center mx-2">
                  <img
                    src="{{asset('assets/public/images/exchange/2560px-Flag_of_the_United_States.svg.png')}}"
                    class="img-fluid"
                    width="100"
                    alt=""
                  />
                </div>
                <div class="flex-1">
                  <h6 class="text-primary">Currency</h6>
                  <h5 class="title">USD</h5>
                </div>
              </div>
            </div>
            <!-- end col -->
            <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
              <div
                class="d-flex features feature-primary core-feature rounded shadow p-1 bg-white"
              >
                <div class="flex-1 ms-3">
                  <h6 class="text-primary">Buying</h6>
                  <h5 class="title">56.8323</h5>
                </div>
              </div>
            </div>
            <!-- end col -->

            <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
              <div
                class="d-flex features feature-primary core-feature rounded shadow p-1 bg-white"
              >
                <div class="flex-1 ms-3">
                  <h6 class="text-primary">Selling</h6>
                  <h5 class="title">57.9689</h5>
                </div>
              </div>
            </div>
            <!-- end col -->
          </div>
          <div class="row">
            <div class="col-lg-4 col-md-6 col-12 mt-4">
              <div
                class="d-flex features feature-primary core-feature rounded shadow p-1 bg-white"
              >
                <div class="icons text-center mx-2">
                  <img
                    src="{{asset('assets/public/images/exchange/Flag_of_Europe.svg.png')}}"
                    class="img-fluid"
                    width="100"
                    alt=""
                  />
                </div>
                <div class="flex-1">
                  <h6 class="text-primary btn-primary">Currency</h6>
                  <h5 class="title">EUR</h5>
                </div>
              </div>
            </div>
            <!-- end col -->
            <div class="col-lg-4 col-md-6 col-12 mt-4">
              <div
                class="d-flex features feature-primary core-feature rounded shadow p-1 bg-white"
              >
                <div class="flex-1 ms-3">
                  <h6 class="text-primary">Buying</h6>
                  <h5 class="title">56.8323</h5>
                </div>
              </div>
            </div>
            <!-- end col -->

            <div class="col-lg-4 col-md-6 col-12 mt-4">
              <div
                class="d-flex features feature-primary core-feature rounded shadow p-1 bg-white"
              >
                <div class="flex-1 ms-3">
                  <h6 class="text-primary">Selling</h6>
                  <h5 class="title">57.9689</h5>
                </div>
              </div>
            </div>
            <!-- end col -->
          </div>
          <div class="row">
            <div class="col-lg-4 col-md-6 col-12 mt-4">
              <div
                class="d-flex features feature-primary core-feature rounded shadow p-1 bg-white"
              >
                <div class="icons text-center mx-2">
                  <img
                    src="{{asset('assets/public/images/exchange/Flag_of_the_United_Arab_Emirates.svg.webp')}}"
                    class="img-fluid"
                    width="100"
                    alt=""
                  />
                </div>
                <div class="flex-1">
                  <h6 class="text-primary">Currency</h6>
                  <h5 class="title">AED</h5>
                </div>
              </div>
            </div>
            <!-- end col -->
            <div class="col-lg-4 col-md-6 col-12 mt-4">
              <div
                class="d-flex features feature-primary core-feature rounded shadow p-1 bg-white"
              >
                <div class="flex-1 ms-3">
                  <h6 class="text-primary">Buying</h6>
                  <h5 class="title">56.8323</h5>
                </div>
              </div>
            </div>
            <!-- end col -->

            <div class="col-lg-4 col-md-6 col-12 mt-4">
              <div
                class="d-flex features feature-primary core-feature rounded shadow p-1 bg-white"
              >
                <div class="flex-1 ms-3">
                  <h6 class="text-primary">Selling</h6>
                  <h5 class="title">57.9689</h5>
                </div>
              </div>
            </div>
            <!-- end col -->
          </div>
          <!--end row-->
        </div>
        <!--end container-->
      </section>
      <!--end section-->
      <!--Feature END -->
@endsection
