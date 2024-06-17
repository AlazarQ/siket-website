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
                                <h3 class="title-pager mb-0"> {{Carbon\Carbon::parse($exchangeRates[0]->date_created)->toFormattedDateString()}} Exchange Rate </h3>
                            </div>
                            <ul class="page-next text-center mt-4 pt-2">
                                <li><a href="/" class="text-dark fs-6">Home</a></li>
                                <li>
                                    <span class="text-primary fs-6">Exchange Rate</span>
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
    <!-- Feature START -->
    <section class="section bg-light" id="features" data-aos="fade-up" data-aos-duration="1000">
        <div class="container">
            <table class="table table-striped table-responsive">
                <thead>
                  <tr>
                    <th scope="col">Currency</th>
                    <th scope="col">Buying</th>
                    <th scope="col">Selling</th>
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
      <!--Feature END -->
@endsection
