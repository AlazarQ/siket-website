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
                            <img src="{{asset('assets/public/images/about/logo.jpg')}}" width="300" class="img-fluid mx-auto rounded d-block" alt="">
                        </div>
                    </div>
                    <!--end col-->

                    <div class="col-lg-7 col-md-7">
                        <div class="about-content ms-lg-4 mt-4 mt-sm-0 pt-2 pt-sm-0">
                            <h4 class="head">Welcome to your financial partner, every step of the way.</h4>
                            <p class="text-muted">
                                At Siket bank, we believe that our customers are more than just account numbers; you are the foundation of our success. Our dedicated team of professionals is here to ensure that every interaction you have with us is positive, helpful, and tailored to your needs.
                            </p>

                            <p class="text-muted">
                                We have invested in training our staff to provide top-notch service, whether you're visiting us in person, calling our customer service line, or engaging with us online. Our goal is to exceed your expectations every time, providing you with the support and guidance you need to navigate your financial journey. Your satisfaction is our highest priority, and we are committed to building lasting relationships based on trust, respect, and understanding.
                            </p>
                            <p class="text-muted">
                                Thank you for choosing our bank. We are dedicated to serving you with the excellence and care you deserve. Together, we can achieve great things. Here's to a future of continued success and exceptional service.
                            </p>
                            <div class="feature-content mt-3">
                                <h4 class="head mb-4">Our Vision</h4>
                                <div class="feat-description">
                                    <p class="text-muted">To be model financial service company in Ethiopia by 2028.</p>
                                </div>
                            </div>
                            <div class="feature-content mt-3">
                                <h4 class="head mb-4">Our Mission</h4>
                                <div class="feat-description">
                                    <p class="text-muted">To provide quality banking and microfinance services using modern technology and skilled employees.</p>
                                </div>
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
