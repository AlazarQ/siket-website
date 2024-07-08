@extends('layouts._public')
@section('body')
    <!-- COMING SOON PAGE -->
    <section class="bg-home d-flex align-items-center"
        style="background-image: url({{asset('assets/public/images/bg/banner.jpg')}});">
        <div class="bg-overlay bg-black" style="opacity: 0.7;"></div>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8 col-md-12 text-center">
                    <div class="title-heading">
                        <a href="javascript:void(0)" class="logo h5"></a>
                        <div class="text-uppercase title-dark text-white mt-2 mb-4 fs-2 fw-bold coming-soon">(404) PAGE NOT FOUND
                        </div>
                        <p class="text-white para-desc mx-auto">We are sorry, but the page you are looking for cannot be found. </p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 text-center position-relative">
                    <a href="/" class="btn btn-primary mt-4 pt-2"><i class="mdi mdi-backup-restore me-2"></i> Go
                        Back Home</a>
                </div>
            </div>
        </div> <!-- end container -->
    </section>
    <!--section end-->
@endsection
