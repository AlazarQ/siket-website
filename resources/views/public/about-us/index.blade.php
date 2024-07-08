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
                                <h3 class="title-pager mb-0"> About Siket Bank </h3>
                            </div>
                            <ul class="page-next text-center mt-4 pt-2">
                                <li><a href="/" class="text-dark fs-6">Home</a></li>
                                <li>
                                    <span class="text-primary fs-6">About Us</span>
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
        <!--About START -->
        <section class="section about-section">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-5 col-md-5">
                        <div class="about-img position-relative">
                            <img src="{{asset($aboutUs[0]->file)}}" width="300" class="img-fluid mx-auto rounded d-block" alt="">
                        </div>
                    </div>
                    <!--end col-->

                    <div class="col-lg-7 col-md-7">
                        <div class="about-content ms-lg-4 mt-4 mt-sm-0 pt-2 pt-sm-0">

                            {!!$aboutUs[0]->description!!}

                        </div>
                    </div>
                    <!--end col-->
                </div>
                <!--end row-->
            </div>
            <!--end container-->
        </section>
        <!--end section-->
        <section class="section bg-light" id="services">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12">
                        <div class="section-title text-center mb-4 pb-2">
                            <h3 class="title text-capitalize mb-4">CORE VALUES:</h3>
                        </div>
                    </div>
                    <!--end col-->
                </div>
                <!--end row-->
                <div class="row">
                    <div class="col mb-3">
                        <div class="services bg-white text-center p-4">
                            <div class="icon text-primary">
                                <i
                                    class="mdi h3 text-center justify-content-center align-items-center d-flex mx-auto rounded-circle">S</i>
                            </div>
                            <div class="content mt-3">
                                <h5 class="text-dark mt-2">Successfulness</h5>

                            </div>
                        </div>
                    </div>
                    <!--end col-->
                    <div class="col mb-3">
                        <div class="services bg-white text-center p-4">
                            <div class="icon text-primary">
                                <i
                                    class="mdi h3 text-center justify-content-center align-items-center d-flex mx-auto rounded-circle">I</i>
                            </div>
                            <div class="content mt-3">
                                <h5 class="text-dark mt-2">Integrity</h5>

                            </div>
                        </div>
                    </div>
                    <!--end col-->
                    <div class="col mb-3">
                        <div class="services bg-white text-center p-4">
                            <div class="icon text-primary">
                                <i
                                    class="mdi h3 text-center justify-content-center align-items-center d-flex mx-auto rounded-circle">K</i>
                            </div>
                            <div class="content mt-3">
                                <h5 class="text-dark mt-2">Knowledgeable</h5>

                            </div>
                        </div>
                    </div>
                    <!--end col-->
                    <div class="col mb-3">
                        <div class="services bg-white text-center p-4">
                            <div class="icon text-primary">
                                <i
                                    class="mdi h3 text-center justify-content-center align-items-center d-flex mx-auto rounded-circle">E</i>
                            </div>
                            <div class="content mt-3">
                                <h5 class="text-dark mt-2">Empowerment</h5>

                            </div>
                        </div>
                    </div>
                    <!--end col-->
                    <div class="col mb-3">
                        <div class="services bg-white text-center p-4">
                            <div class="icon text-primary">
                                <i
                                    class="mdi h3 text-center justify-content-center align-items-center d-flex mx-auto rounded-circle">T</i>
                            </div>
                            <div class="content mt-3">
                                <h5 class="text-dark mt-2">Timeliness</h5>

                            </div>
                        </div>
                    </div>
                    <!--end col-->


                </div>
                <!--end row-->
            </div>
            <!--end container-->
        </section>

        <!--About END -->
@endsection
