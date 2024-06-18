@extends('layouts._public');
@section('body')
<section class="section py-5 my-5" id="portfolio" style="padding-top: 100px !important;">
    <div class="container">
        <div id="grid" class="row">
            @foreach ($districts as $district )
            <div class="col-12">
                  <h4>{{$district->name}} District Branches</h4>
            </div>
            @foreach ($district->branches as $branch)
            <div class="col-6 col-md-3 col-lg-2 picture-item" data-groups='["research"]'>
                <div class="position-relative portfolio-standard overflow-hidden rounded h-100">
                    <a href="https://maps.google.com/?q={{$branch->lang_lat}}" style="text-decoration: none;color:#abcf39;">
                    <div class="content bg-light p-3 text-center mb-2">
                        <div class="icons text-center mx-auto">
                            <i class="mdi mdi-map-marker-circle d-block mb-0" style="font-size: 40px;"></i>
                        </div>
                        <h6 class="work-title mb-0"><a  href="https://maps.google.com/?q={{$branch->lang_lat}}" class="text-dark fw-bold">{{$branch->name}} Branch</a></h6>
                    </div>
                </a>
                </div>
            </div>
            @endforeach

            <!--end col-->
            @endforeach
        </div>
        <!-- end row -->
        <div class="col-12 mt-5 pagination">
            {!!$districts->links()!!}
           </div>
    </div>
    <!--end container-->
</section>
@endsection
