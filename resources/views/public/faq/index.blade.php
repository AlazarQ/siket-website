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
                @foreach ($faqs as $faq)
                         <div class="accordion-item rounded mt-3">
                            @if($loop->index == 0)
                    <h2 class="accordion-header" id="heading{{$loop->index}}">
                        <button class="accordion-button border-0 bg-light" type="button"
                            data-bs-toggle="collapse" data-bs-target="#collapse{{$loop->index}}"
                            aria-expanded="true" aria-controls="collapse{{$loop->index}}">
                            {{$faq->question}}
                        </button>
                    </h2>
                    <div id="collapse{{$loop->index}}" class="accordion-collapse border-0 collapse show"
                        aria-labelledby="heading{{$loop->index}}" data-bs-parent="#faq">
                        <div class="accordion-body">
                            {!!$faq->answer!!}
                        </div>
                    </div>
                    @else
                    <h2 class="accordion-header" id="heading{{$loop->index}}">
                        <button class="accordion-button border-0 bg-light collapsed" type="button"
                            data-bs-toggle="collapse" data-bs-target="#collapse{{$loop->index}}"
                            aria-expanded="true" aria-controls="collapse{{$loop->index}}">
                            {{$faq->question}}
                        </button>
                    </h2>
                    <div id="collapse{{$loop->index}}" class="accordion-collapse border-0 collapse"
                        aria-labelledby="heading{{$loop->index}}" data-bs-parent="#faq">
                        <div class="accordion-body">
                            {!!$faq->answer!!}
                        </div>
                    </div>
                    @endif
                </div>
                @endforeach
            </div>
        </div>
    </div>
</div>
</section>
@endsection
