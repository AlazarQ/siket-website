@extends('layouts._public');
@section('body')
<section class="section">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12">
                <div class="section-title text-center mb-4 pb-2">
                    <h3 class="title text-capitalize mb-4">Our Gallery</h3>
                </div>
            </div>
            <!--end col-->
        </div>
        <!--end row-->

        <div class="row">
            <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                <div class="team-member teams text-center position-relative overflow-hidden mb-4 shadow rounded">
                    <div class="member-pic position-relative">
                        <img src="{{asset('assets/public/images/gallery/adwa-branch.jpg')}}" class="img-fluid d-block mx-auto obj-cover h-100" alt="img">
                    </div>
                </div>
            </div>
            <!--end col-->

            <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                <div class="team-member teams text-center position-relative overflow-hidden mb-4 shadow rounded">
                    <div class="member-pic position-relative">
                        <img src="{{asset('assets/public/images/gallery/ceremony.jpg')}}" class="img-fluid d-block mx-auto h-100 obj-cover" alt="img">
                    </div>

                </div>
            </div>
            <!--end col-->

            <div class="col-lg-4 col-md-6 col-12 mt-4 pt-2">
                <div class="team-member teams text-center position-relative overflow-hidden mb-4 shadow rounded ">
                    <div class="member-pic position-relative">
                        <img src="{{asset('assets/public/images/gallery/share-holders.jpg')}}" class="img-fluid d-block mx-auto  obj-cover h-100" alt="img">

                    </div>
                </div>
            </div>
            <!--end col-->

        </div>
        <!--end row-->
    </div>
    <!--end container-->
</section>
@endsection
