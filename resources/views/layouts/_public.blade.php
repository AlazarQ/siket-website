<!DOCTYPE html>
<html lang="{{App::getLocale()}}">
  <head>
    <meta charset="utf-8" />
    <title>Siket Bank | Welcome To Siket Bank</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta
      name="description"
      content="Premium Bootstrap 5 Landing Page Template"
    />
    <meta
      name="keywords"
      content="Siket Bank, Bank In Ethiopia, Bank In Addis Ababa, Banks"
    />
    <meta name="website" content="https://siketbank.com" />
    <meta name="email" content="siketbank.com" />

    <!-- FAVICON -->
    <link rel="shortcut icon" href="{{asset('assets/public/images/favicon.png')}}">
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
            <a href="https://www.facebook.com/profile.php?id=100095438919373" class="rounded icon-sm header-icon"
              ><i data-feather="facebook" class="fea icon-sm" style="color:#fff"></i
            ></a>
          </li>

          <li class="list-inline-item mb-0  hidden-sm">
            <a href="https://www.linkedin.com/company/103106321/admin/feed/posts/" class="rounded icon-sm header-icon"
              ><i data-feather="linkedin" class="fea icon-sm" style="color:#fff"></i
            ></a>
          </li>
          <li class="list-inline-item mb-0  hidden-sm">
            <a href="https://t.me/siketbnk" class="rounded icon-sm header-icon"
              ><i data-feather="send" class="fea icon-sm" style="color:#fff"></i
            ></a>
          </li>
          <li class="list-inline-item mb-0  hidden-sm">
            <a href="#" class="rounded icon-sm header-icon"
              ><i data-feather="youtube" class="fea icon-sm" style="color:#fff"></i
            ></a>
          </li>
          <li class="list-inline-item mb-0  hidden-sm" style="position:relative;top:-4px;">
            <a href="#" class="rounded icon-sm header-icon"
              ><span class="mdi mdi-whatsapp" style="font-size: 14px"></span>
            </a>
          </li>
          <li class="list-inline-item text-white  hidden-sm"> |</li>

            <li class="list-inline-item  hidden-sm">
              <a href="{{route('vacancy')}}"><span class="mdi mdi-briefcase-account-outline" style="font-size: 16"> {{ __('Vacancy') }}</span>
              </a>
            </li>


          </ul>

        </div>

      </section>

      <div class="container">
        <!-- Logo container-->
        <a class="logo" href="/">
          <span class="logo-light-mode">
            <img src="{{asset('assets/public/images/logo.jpg')}}" class="l-dark" alt="" width="100" />
            <img src="{{asset('assets/public/images/logo.jpg')}}" class="l-light" alt="" width="100" />
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

        <ul class="buy-button list-inline mb-0">
          <li class="list-inline-item search-icon mb-0">
            <div class="dropdown">
              <button
                type="button"
                class="btn btn-link text-decoration-none dropdown-toggle mb-0 p-0"
                data-bs-toggle="dropdown"
                aria-haspopup="true"
                aria-expanded="false"
              >
                <i
                  class="uil uil-search h5 text-dark nav-light-icon-dark mb-0"
                ></i>
                <i
                  class="uil uil-search h5 text-white nav-light-icon-white mb-0"
                ></i>
              </button>
              <div
                class="dropdown-menu dd-menu dropdown-menu-end bg-white shadow rounded border-0 mt-4 py-0"
                style="width: 300px"
              >
                <form class="p-4">
                  <input
                    type="text"
                    id="text"
                    name="name"
                    class="form-control border bg-white"
                    placeholder="Search..."
                  />
                </form>
              </div>
            </div>
          </li>
        </ul>


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
