@extends('layouts._public');
@section('body')
<section class="bg-default page-next-level" style="background: url(images/bg/bg-page.png) center no-repeat;margin-top: 50px;">
    <div class="home-center">
        <div class="home-desc-center">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-12">
                        <div class="text-center">
                            <h3 class="title-pager mb-0">Frequently Asked Questions</h3>
                        </div>
                        <ul class="page-next text-center mt-4 pt-2">
                            <li><a href="/" class="text-dark fs-6">Home</a></li>
                            <li>
                                <span class="text-primary fs-6">FAQ
                                </span>
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
<section class="section bg-light">
<div class="container">
    <div class="row">
        <div class="col-12">
            <div class="accordion mt-4 pt-2" id="faq">
                <div class="accordion-item rounded">
                    <h2 class="accordion-header" id="headingOne">
                        <button class="accordion-button border-0 bg-light" type="button"
                            data-bs-toggle="collapse" data-bs-target="#collapseOne"
                            aria-expanded="true" aria-controls="collapseOne">
                            What types of services does Siket Bank have?
                        </button>
                    </h2>
                    <div id="collapseOne" class="accordion-collapse border-0 collapse show"
                        aria-labelledby="headingOne" data-bs-parent="#faq">
                        <div class="accordion-body">
                            <ul>
                                <li>Saving Services</li>
                                <li>Loan Services</li>
                                <li>Micro Insurance Services </li>
                                <li>Mobile & Agent Banking services</li>
                                <li>Third Part fund administration</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="accordion-item rounded mt-2">
                    <h2 class="accordion-header" id="headingTwo">
                        <button class="accordion-button border-0 bg-light collapsed"
                            type="button" data-bs-toggle="collapse"
                            data-bs-target="#collapseTwo" aria-expanded="false"
                            aria-controls="collapseTwo">
                            Where is Siket Bank's head office located?
                        </button>
                    </h2>
                    <div id="collapseTwo" class="accordion-collapse border-0 collapse"
                        aria-labelledby="headingTwo" data-bs-parent="#faq">
                        <div class="accordion-body">
                            Churchill Road, Infront of Haron Tower, Addis Ababa, Ethiopia
                        </div>
                    </div>
                </div>

                <div class="accordion-item rounded mt-2">
                    <h2 class="accordion-header" id="headingThree">
                        <button class="accordion-button border-0 bg-light collapsed"
                            type="button" data-bs-toggle="collapse"
                            data-bs-target="#collapseThree" aria-expanded="false"
                            aria-controls="collapseThree">
                            How many branches does Siket Bank have currently?
                        </button>
                    </h2>
                    <div id="collapseThree" class="accordion-collapse border-0 collapse"
                        aria-labelledby="headingThree" data-bs-parent="#faq">
                        <div class="accordion-body">
                            152
                        </div>
                    </div>
                </div>

                <div class="accordion-item rounded mt-2">
                    <h2 class="accordion-header" id="headingFour">
                        <button class="accordion-button border-0 bg-light collapsed"
                            type="button" data-bs-toggle="collapse"
                            data-bs-target="#collapseFour" aria-expanded="false"
                            aria-controls="collapseFour">
                            What is the Siket Bank contact center number?
                        </button>
                    </h2>
                    <div id="collapseFour" class="accordion-collapse border-0 collapse"
                        aria-labelledby="headingFour" data-bs-parent="#faq">
                        <div class="accordion-body">
                            8342
                        </div>
                    </div>
                </div>
                <div class="accordion-item rounded mt-2">
                    <h2 class="accordion-header" id="headingFive">
                        <button class="accordion-button border-0 bg-light collapsed"
                            type="button" data-bs-toggle="collapse"
                            data-bs-target="#collapseFive" aria-expanded="false"
                            aria-controls="collapseFive">
                            Which are the branches of Siket Bank that provide Faida ID registration services?
                        </button>
                    </h2>
                    <div id="collapseFive" class="accordion-collapse border-0 collapse"
                        aria-labelledby="headingFive" data-bs-parent="#faq">
                        <div class="accordion-body">
                           <ul>
                            <li>Lideta Coordination Office</li>
                            <li>Kazanchis Hilton Branch</li>
                            <li>Sheger Menafesha Branch</li>
                            <li>Merkato Efoyita Branch</li>
                           </ul>
                        </div>
                    </div>
                </div>
                <div class="accordion-item rounded mt-2">
                    <h2 class="accordion-header" id="headingSix">
                        <button class="accordion-button border-0 bg-light collapsed"
                            type="button" data-bs-toggle="collapse"
                            data-bs-target="#collapseSix" aria-expanded="false"
                            aria-controls="collapseSix">
                            What are the requirements for registering a national ID card?
                        </button>
                    </h2>
                    <div id="collapseSix" class="accordion-collapse border-0 collapse"
                        aria-labelledby="headingSix" data-bs-parent="#faq">
                        <div class="accordion-body">
                           <ul>
                            <li>Kebele ID card</li>
                            <li>Driving License</li>
                            <li>Passport or any document that expresses your identity</li>
                           </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</section>
@endsection
