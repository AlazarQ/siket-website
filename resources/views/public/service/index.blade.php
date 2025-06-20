@extends('layouts._public')
@section('body')
    <!-- Start Home -->
    <section class="bg-default page-next-level" style="background: url(images/bg/bg-page.png) center no-repeat;margin-top: 50px;">
        <div class="home-center">
            <div class="home-desc-center">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-12">
                            <div class="text-center pt-4">
                                <h3 class="title-pager mb-0">{{__('Product & Service')}} </h3>
                            </div>
                            <ul class="page-next text-center mt-4 pt-2">
                                <li><a href="/" class="text-dark fs-6">{{__('Home')}}</a></li>
                                <li>
                                    <span class="text-primary fs-6">{{__('Product & Service')}}</span>
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
   <!-- Blog Start -->
   <section class="section bg-light"  data-aos="fade-up" data-aos-duration="2000">
    <div class="container">
      <div class="row">
        @foreach ($productList as $product )
        <div class="col-lg-4 col-md-6 mb-4 pt-2">
            <div
              class="card blog blog-primary shadow rounded overflow-hidden border-0 h-100"
            >
              <div class="card-img image position-relative overflow-hidden">
                <div
                  class="position-relative overflow-hidden mx-4 mt-4 rounded"
                >
                  <img
                    src="{{asset($product->file)}}"
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

                  <a
                    href="{{route('product-detail',['title'=>Str::slug($product->title)."-".$product->parent_id])}}"
                    class="h5 title text-dark d-block mb-0"
                    >{{$product->title}}</a
                  >

                  <div class="read-more fs-6 mt-3">
                    <a href="{{route('product-detail',['title'=>Str::slug($product->title)."-".$product->parent_id])}}" class="text-dark">{{__("Read More")}}</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- end col -->
        @endforeach
        <div class="col-12 mt-5 pagination">
        </div>
      </div>
      <!-- end row -->
    </div>
    <!-- end container -->
  </section>
  <!-- Blog End -->
@endsection
