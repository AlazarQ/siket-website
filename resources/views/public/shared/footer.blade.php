<!-- Footer Start -->
<footer class="footer bg-dark">
    <div class="container">
      <div class="row">
        <div class="col-lg-4 col-12 mb-0 mb-md-4 pb-0 pb-md-2">
          <a href="/" class="logo-footer">
            <img src="{{asset('assets/public/images/logo.jpg')}}" class="l-dark" alt="" width="100"   style="border-radius: 10px;"/>
          </a>
          <p class="mt-4 text-white-50">Follow Us</p>

          <div class="mt-3">
            <ul class="list-unstyled footer-icon social mb-0">
              <li class="list-inline-item mb-0">
                <a href="https://www.facebook.com/profile.php?id=100095438919373" class="rounded icon-sm"
                  ><i data-feather="facebook" class="fea icon-sm"></i
                ></a>
              </li>

              <li class="list-inline-item mb-0">
                <a href="https://www.linkedin.com/company/103106321/admin/feed/posts/" class="rounded icon-sm"
                  ><i data-feather="linkedin" class="fea icon-sm"></i
                ></a>
              </li>
              <li class="list-inline-item mb-0">
                <a href="https://t.me/siketbnk" class="rounded icon-sm"
                  ><i data-feather="send" class="fea icon-sm"></i
                ></a>
              </li>
              <li class="list-inline-item mb-0">
                <a href="#" class="rounded icon-sm"
                  ><i data-feather="youtube" class="fea icon-sm"></i
                ></a>
              </li>
              <li class="list-inline-item mb-0">
                <a href="#" class="rounded icon-sm"
                  ><span class="mdi mdi-whatsapp" style="font-size: 20px;"></span>
                </a>
              </li>
            </ul>
          </div>
        </div>
        <!--end col-->

        <div class="col-lg-2 col-md-4 col-12 mt-4 mt-sm-0 pt-2 pt-sm-0">
          <h4 class="text-light footer-head">{{__('Company')}}</h4>
          <ul class="list-unstyled footer-list mt-4">
            <li>
              <a href="{{route('about-us')}}" class="text-foot fs-6"
                ><i class="mdi mdi-chevron-right"></i> About Us</a
              >
            </li>
            <li>
              <a href="{{route('gallery')}}" class="text-foot fs-6"
                ><i class="mdi mdi-chevron-right"></i> Media</a
              >
            </li>
            <li>
              <a href="{{route('vacancy')}}" class="text-foot fs-6"
                ><i class="mdi mdi-chevron-right"></i> Vacancy</a
              >
            </li>
            <li>
              <a href="{{route('contact-us')}}" class="text-foot fs-6"
                ><i class="mdi mdi-chevron-right"></i> Contact</a
              >
            </li>
          </ul>
        </div>
        <!--end col-->

        <div class="col-lg-3 col-md-4 col-12 mt-4 mt-sm-0 pt-2 pt-sm-0">
          <h4 class="text-light footer-head">{{__('Usefull Links')}}</h4>
          <ul class="list-unstyled footer-list mt-4">
            @foreach ($footerLinks as $footer)

            <li>
                <a href="{{$footer->link_url}}" class="text-foot fs-6"
                  ><i class="mdi mdi-chevron-right"></i> {{$footer->link_name}}</a
                >
              </li>
            @endforeach
          </ul>
        </div>
        <!--end col-->

        <div class="col-lg-3 col-md-4 col-12 mt-4 mt-sm-0 pt-2 pt-sm-0">
          <h4 class="text-light fw-normal footer-head mb-4">{{__('Other')}}</h4>
          <ul class="list-unstyled footer-list">
            <li>
              <a href="{{route('exchange-rate')}}" class="text-foot fs-6"
                ><i class="mdi mdi-chevron-right"></i>{{__('Exchange Rate')}} </a
              >
            </li>
            <li class="fs-6">
              <a href="{{route('loan-calculator')}}" class="text-foot fs-6"
                > <i class="mdi mdi-chevron-right"></i>{{__('Loan Calculator')}} </a>
            </li>
            <li class="fs-6">
              <a href="{{route('branches')}}" class="text-foot fs-6"
              ><i class="mdi mdi-chevron-right"></i> {{__('Branches')}}</a>
            </li>
            <li class="fs-6">
              <a href="{{route('faq')}}" class="text-foot fs-6"
              ><i class="mdi mdi-chevron-right"></i>{{__('FAQ')}} </a>
            </li>
          </ul>
        </div>
        <!--end col-->
      </div>
      <!--end row-->
    </div>
    <!--end container-->
  </footer>
  <!--end footer-->
