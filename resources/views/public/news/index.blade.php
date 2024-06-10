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
                                <h3 class="title-pager mb-0">News </h3>
                            </div>
                            <ul class="page-next text-center mt-4 pt-2">
                                <li><a href="/" class="text-dark fs-6">Home</a></li>
                                <li>
                                    <span class="text-primary fs-6">News</span>
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
      <div class="row justify-content-center">
        <div class="col-12">
          <div class="section-title text-center mb-4 pb-2">
            <h4 class="para-desc mx-auto text-muted mb-0">
              Stay update with our latest news
            </h4>
          </div>
        </div>
        <!--end col-->
      </div>
      <!--end row-->

      <div class="row">
        @foreach ($newsList as $news )
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
                    href="{{route('news-detail',['title'=>Str::slug($news->title)])}}"
                    class="h5 title text-dark d-block mb-0"
                    >{{$news->title}}</a
                  >
                  <p class="text-muted mt-2 mb-0">
                    {{Str::substr($news->description,0, 200)}}. . .
                  </p>
                  <div class="read-more fs-6 mt-3">
                    <a href="{{route('news-detail',['title'=>Str::slug($news->title)])}}" class="text-dark"> Read More</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- end col -->
        @endforeach
        <div class="col-12 mt-5 pagination">
         {!!$newsList->links()!!}
        </div>
      </div>
      <!-- end row -->
    </div>
    <!-- end container -->
  </section>
  <!-- Blog End -->
@endsection
