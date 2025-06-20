<!DOCTYPE html>
<html lang="{{App::getLocale()}}">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    {!! SEOMeta::generate() !!}
    {!! OpenGraph::generate() !!}
    {!! Twitter::generate() !!}
    <meta name="website" content="https://siketbank.com" />
    <meta name="email" content="siketbank.com" />
<!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-JXEPE63K1L"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-JXEPE63K1L');
</script>
    <!-- FAVICON -->
    <link rel="icon" href="{{asset('favicon.ico')}}">
    <!-- BOOTSTRAP -->
    <link href="{{asset('assets/public/css/bootstrap.min.css')}}" rel="stylesheet" type="text/css" />
    <!-- ICON -->
    <link href="{{asset('assets/public/css/materialdesignicons.min.css')}}" rel="stylesheet" />
    <!-- SLIDER-->
    <link rel="stylesheet" href="{{asset('assets/public/css/tiny-slider.css')}}" type="text/css" />
    <link rel="stylesheet" href="{{asset('assets/public/css/tobii.min.css')}}" />
    <!-- Custom Css -->
    <link href="{{asset('assets/public/css/style.min.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('assets/public/css/colors/default.css')}}" rel="stylesheet" id="color-opt" />
    <link href="{{asset('assets/public/css/swiper-bundle.min.css')}}" rel="stylesheet" />

    @yield('css')
    @yield('reCaptcha')
  </head>

  <body>

    <!-- Navbar STart -->
    <header id="topnav" class="defaultscroll sticky">
      <section class="bg-white d-flex" id="prim-nav">
        <div class="container text-end ">
          <ul class="list-unstyled social list-inline m-0">
            <li class="list-inline-item">
              <a href="tel:8342"><span class="mdi mdi-phone" style="font-size: 16">8342</span>
              </a>
            </li>
            <li class="list-inline-item text-white">|</li>
            <li class="list-inline-item">
              <a href="#"><span class="mdi mdi-email" style="font-size: 16"> info@siketbank.com</span>
              </a>
            </li>
           <li class="list-inline-item text-white   hidden-sm"> |</li>
           <li class="list-inline-item mb-0  hidden-sm">
            <a href="https://www.facebook.com/profile.php?id=100095438919373" class="rounded icon-sm header-icon" style="background-color: #3b5998;"
              ><i data-feather="facebook" class="fea icon-sm" style="color:#fff"></i
            ></a>
          </li>

          <li class="list-inline-item mb-0  hidden-sm">
            <a href="https://www.linkedin.com/company/103106321/admin/feed/posts/" class="rounded icon-sm header-icon" style="background-color: #0077B5;"
              ><i data-feather="linkedin" class="fea icon-sm" style="color:#fff"></i
            ></a>
          </li>
          <li class="list-inline-item mb-0  hidden-sm">
            <a href="https://t.me/siketbnk" class="rounded icon-sm header-icon" style="background-color: #0088cc;"
              ><i data-feather="send" class="fea icon-sm" style="color:#fff"></i
            ></a>
          </li>
          <li class="list-inline-item mb-0  hidden-sm" >
            <a href="https://x.com/SiketBank" class="rounded icon-sm header-icon" style="background-color: #fff;position:relative;top:3px"
              ><img src="{{asset('assets/public/images/footer/twitter.png')}}" class="p-3" alt=""></a>
          </li>

          <li class="list-inline-item text-white  hidden-sm"> |</li>

            <li class="list-inline-item  hidden-sm">
              <a href="{{route('vacancy')}}"><span class="mdi mdi-briefcase-account-outline" style="font-size: 16"> {{ __('Vacancy') }}</span>
              </a>
            </li>
            <li class="list-inline-item">
                <button type="button" class="btn btn-primary" id="search-btn">
                    <span class="mdi mdi-magnify" style="font-size: 16"> <span class="hidden-sm">{{ __('Search') }}</span></span>
                </button>
              </li>
              <div class="row d-none" id="search-container">
                <div class="col-lg-4 col-md-6 col-sm-12" style="margin-left: auto;">
                        <form class="py-1" action="/search" method="GET">

                            <div class="input-group">
                                <input
                                type="text"
                                id="text"
                                name="term"
                                class="form-control border bg-white"
                                placeholder="Search..."
                                style="height:40px;"
                              />
                              <div class="input-group-append">
                                <button type="button" class="btn btn-primary" id="close-search-btn" style="height: 40px;">
                                    <span class="mdi mdi-close-circle" style="font-size: 20px;position: relative;top:-5px;"></span>
                                </button>

                              </div>
                              </div>
                        </form>
                </div>
              </div>


          </ul>

        </div>

      </section>

      <div class="container">
        <!-- Logo container-->
        <a class="logo" href="/">
          <span class="logo-light-mode">
            <img src="{{asset('assets/public/images/siketbank-logo.png')}}" class="l-dark" alt="" width="150" />
            <img src="{{asset('assets/public/images/siketbank-logo.png')}}" class="l-light" alt="" width="150" />
          </span>
        </a>
        <!-- End Logo container-->
        <div class="menu-extras">
          <div class="menu-item">
            <!-- Mobile menu toggle-->
            <a class="navbar-toggle" id="isToggle" onclick="toggleMenu()">
              <div class="lines">
                <span></span>
                <span></span>
                <span></span>
              </div>
            </a>
            <!-- End mobile menu toggle-->
          </div>
        </div>




       {{App\Http\Controllers\Public\HeaderController::header();}}

      </div>
      <!--end container-->
    </header>
    <!--end header-->
    <!-- Navbar End -->
    @yield('body')
    <div class="container">
        <div class="row align-items-center py-5">
            <div class="col-lg-12 col-md-12 col-sm-12 text-start">
                <div class="title-heading">
                    <h1 class="heading mb-4 text-center">{{__('Subscribe to Our Newsletter')}}
                    </h1>
                    @if(\Session::has('exist'))

                    <div class="col-12 mb-3">
                        <div class="alert alert-info" role="alert">
                            <p class="text-center">You have already subscribed to our newsletter.
                            </p>
                     </div>
                    </div>

                    @endif
                    @if(\Session::has('status'))

                    <div class="col-12 mb-3">
                        <div class="alert alert-success" role="alert">
                            <p class="text-center">Thank you for subscribing!
                            </p>
                     </div>
                    </div>

                    @endif
                    <div class="subcribe-form mt-4 pt-2 col-lg-6 col-12 mt-4 pt-2 mx-auto">
                        <form class="ms-0" method="POST" action="/subscription">
                            @csrf
                            <input type="email" id="email2" name="email" class="rounded-pill bg-white-50 border"
                                placeholder="{{__('Your Email')}}" required>
                            <button type="submit" class="btn rounded-pill btn-primary">{{__('Subscribe')}}</button>
                        </form>

                    </div>
                    <!-- end form -->
                </div>
            </div>
        </div>
        <!-- end row -->
    </div>
    <!-- end container -->
    {{App\Http\Controllers\Public\FooterController::footer();}}

    <!-- Back to top -->
    <a href="#" class="back-to-top rounded-pill text-center" id="back-to-top">
      <i class="mdi mdi-chevron-up d-block"> </i>
    </a>
    <!-- Back to top -->
     @yield('scriptTop')
    <!-- javascript -->
    <script src="{{asset('assets/public/js/bootstrap.bundle.min.js')}}"></script>
    <!-- SLIDER -->
    <script src="{{asset('assets/public/js/tiny-slider.js')}}"></script>
    <script src="{{asset('assets/public/js/tiny-slider-init.js')}}"></script>

    <!-- PARALLAX -->
    <script src="{{asset('assets/public/js/parallax.js')}}"></script>
    <!-- BACKGROUND -->
    <script src="{{asset('assets/public/js/easy_background.js')}}"></script>
    <script src="{{asset('assets/public/js/feather.min.js')}}"></script>

    <script src="{{asset('assets/public/js/app.js')}}"></script>
    <!-- Main Js -->
    <script src="{{asset('assets/public/js/plugins.init.js')}}"></script>


    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script src="{{asset('assets/public/js/custom.js')}}"></script>
    <script src="{{asset('assets/public/js/swiper-bundle.min.js')}}"></script>
     @yield('scripts')
     <script>
        const swiper = new Swiper('.swiper', {
  // Optional parameters
  direction: 'horizontal',
  loop: true,

  // If we need pagination


  // Navigation arrows
  navigation: {
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev',
  },

  // And if we need scrollbar
  scrollbar: {
    el: '.swiper-scrollbar',
  },
  autoplay: {
    delay: 8000,
  },

});
     </script>
     <script>
        $(document).ready(function(){
            $("#search-btn").click(function(){
                if($("#search-container").css('display') == 'none'){
                    $("#search-container").removeClass("d-none");
                }else{
                    $("#search-container").addClass("d-none");

                }
            });
            $("#close-search-btn").click(function(){
                $("#search-container").addClass("d-none");
            });
            close-search-btn
        })
     </script>
<!--Start of Tawk.to Script-->
<script type="text/javascript">
    var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
    (function(){
    var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
    s1.async=true;
    s1.src='https://embed.tawk.to/6683caf8eaf3bd8d4d171cf1/1i1pd1nel';
    s1.charset='UTF-8';
    s1.setAttribute('crossorigin','*');
    s0.parentNode.insertBefore(s1,s0);
    })();
    </script>
    <!--End of Tawk.to Script-->
  </body>

</html>
