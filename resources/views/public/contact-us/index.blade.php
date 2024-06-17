@extends('layouts._public');
@section('body')
<section class="bg-default page-next-level" style="background: url(images/bg/bg-page.png) center no-repeat;margin-top: 50px;">
    <div class="home-center">
        <div class="home-desc-center">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-12">
                        <div class="text-center">
                            <h3 class="title-pager mb-0">Get In Touch !</h3>
                        </div>
                        <ul class="page-next text-center mt-4 pt-2">
                            <li><a href="/" class="text-dark fs-6">Home</a></li>
                            <li>
                                <span class="text-primary fs-6">Contact Us</span>
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
  <!-- Start Contact -->
  <section class="section">
    <div class="container">
        <div class="row mb-4 pb-3">
            <div class="col-md-4">
                <div class="card border-0 text-center features feature-primary">
                    <div class="icons text-center mx-auto text-primary">
                        <i class="mdi mdi-phone d-block rounded-pill h5 mb-0"></i>
                    </div>
                    <div class="content mt-4">
                        <h5 class="fw-bold">Phone</h5>
                        <p class="mb-0 text-muted"><span class="fw-bold">Phone :</span> 8342</p>
                    </div>
                </div>
            </div>
            <!--end col-->

            <div class="col-md-4 mt-4 mt-sm-0 pt-2 pt-sm-0">
                <div class="card border-0 text-center features feature-primary">
                    <div class="icons text-center mx-auto text-primary">
                        <i class="mdi mdi-email d-block rounded-pill h5 mb-0"></i>
                    </div>
                    <div class="content mt-4">
                        <h5 class="fw-bold">Email</h5>
                        <p class="mb-0 text-muted"><span class="fw-bold">E-mail :</span> info@siketbank.com</p>
                    </div>
                </div>
            </div>
            <!--end col-->

            <div class="col-md-4 mt-4 mt-sm-0 pt-2 pt-sm-0">
                <div class="card border-0 text-center features feature-primary">
                    <div class="icons text-center mx-auto text-primary">
                        <i class="mdi mdi-map-marker d-block rounded-pill h5 mb-0"></i>
                    </div>
                    <div class="content mt-4">
                        <h5 class="fw-bold">Location</h5>
                        <p class="mb-0 text-muted"><span class="fw-bold">Address :</span> Churchill Road, In front of Haron Tower, Addis Ababa, Ethiopia</p>

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
 <!-- contact START -->
 <section class="section bg-light">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-sm-12 col-lg-10 mx-auto pt-2 pt-sm-0">
                <div class="card shadow rounded border-0 p-2">
                    <div class="card-body">
                        <div class="primary-form mt-3">
                            <form method="post" id="myForm" name="myForm contact-us-form" action="/contact-us">
                                @csrf
                                <p class="mb-0" id="error-msg"></p>
                                <div id="simple-msg"></div>
                                <div class="row">
                                    @if(\Session::has('status'))
                                    <div class="col-12 mb-3">
                                        <div class="alert alert-success" role="alert">
                                            <h4 class="">Your message has been successfully received. Our team will review it and get back to you shortly.
                                            </h4>
                                     </div>
                                    </div>
                                    <hr>
                                    @endif
                                    <div class="col-12 mb-3">
                                        <h4 class="">Drop us a message</h4>

                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label fs-6 mt-3 mb-1">Your Name <span
                                                class="text-danger">*</span></label>
                                        <div class="form-icon position-relative">
                                            <i class="mdi mdi-account icon-sm icons"></i>
                                            <input name="name" id="name" type="text" class="form-control ps-5 fs-6"
                                                placeholder="Name :" required>
                                        </div>
                                        @error('name')
                                        <div class="input-error">{{ $message }}</div>
                                        @enderror
                                    </div>

                                    <div class="col-md-6">

                                        <label class="form-label fs-6 mt-3 mb-1">Your Email <span
                                                class="text-danger">*</span></label>
                                        <div class="form-icon position-relative">
                                            <i class="mdi mdi-email-outline icon-sm icons"></i>
                                            <input name="email" id="email" type="email"
                                                class="form-control ps-5 fs-6" placeholder="Email :" required>
                                        </div>
                                        @error('email')
                                        <div class="input-error">{{ $message }}</div>
                                        @enderror
                                    </div>
                                    <!--end col-->

                                    <div class="col-12">
                                        <label class="form-label fs-6 mt-3 mb-1">Subject</label>
                                        <div class="form-icon position-relative">
                                            <i class="mdi mdi-book-outline icon-sm icons"></i>
                                            <input name="subject" id="subject" class="form-control ps-5 fs-6 py-2"
                                                placeholder="subject :" required>
                                        </div>
                                        @error('subject')
                                        <div class="input-error">{{ $message }}</div>
                                        @enderror
                                    </div>
                                    <!--end col-->

                                    <div class="col-12">
                                        <label class="form-label fs-6 mt-3 mb-1">Message <span
                                                class="text-danger">*</span></label>
                                        <div class="form-icon position-relative">
                                            <i class="mdi mdi-message-outline icon-sm icons"></i>
                                            <textarea name="message" id="message" rows="4"
                                                class="form-control ps-5 fs-6" placeholder="Message :" required></textarea>
                                        </div>
                                        @error('message')
                                        <div class="input-error">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <!-- end row -->
                                <div class="row">
                                    <div class="col-12 fs-6 mt-3">
                                        <button type="submit" id="submit" name="send" class="btn btn-primary">Send
                                            Message</button>
                                    </div>
                                    <!--end col-->
                                </div>
                                <!--end row-->
                            </form>
                            <!-- end form -->

                        </div>
                        <!--end primary-form-->
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
<section>
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d828.363670796884!2d38.75099463981461!3d9.028701559144874!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x164b85f10a2ac927%3A0x79fab42eb762b62b!2sAddis%20Credit%20%26%20Saving%20Institution%20S.C!5e0!3m2!1sen!2set!4v1716208883474!5m2!1sen!2set" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
</section>
<!-- End contact -->
@endsection
