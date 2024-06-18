<!DOCTYPE html>
<html lang="en">
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
           <li class="list-inline-item text-white"> |</li>
           <li class="list-inline-item mb-0">
            <a href="https://www.facebook.com/profile.php?id=100095438919373" class="rounded icon-sm header-icon"
              ><i data-feather="facebook" class="fea icon-sm" style="color:#fff"></i
            ></a>
          </li>

          <li class="list-inline-item mb-0">
            <a href="https://www.linkedin.com/company/103106321/admin/feed/posts/" class="rounded icon-sm header-icon"
              ><i data-feather="linkedin" class="fea icon-sm" style="color:#fff"></i
            ></a>
          </li>
          <li class="list-inline-item mb-0">
            <a href="https://t.me/siketbnk" class="rounded icon-sm header-icon"
              ><i data-feather="send" class="fea icon-sm" style="color:#fff"></i
            ></a>
          </li>
          <li class="list-inline-item text-white"> |</li>

            <li class="list-inline-item">
              <a href="{{route('vacancy')}}"><span class="mdi mdi-briefcase-account-outline" style="font-size: 16"> Vacancy</span>
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

        <div id="navigation">
          <!-- Navigation Menu-->
          <ul class="navigation-menu nav-light nav-right">
            <li class="has-submenu parent-parent-menu-item">
                <a href="javascript:void(0)">About Us </a
                ><span class="menu-arrow"></span>
                <ul class="submenu">
                  <li>
                    <ul>
                      <li>
                        <a href="{{route('about-us')}}" class="sub-menu-item">
                          Who We Are
                        </a>
                      </li>
                      <li>
                        <a href="{{route('board-director')}}" class="sub-menu-item">
                          Board Of Directors
                        </a>
                      </li>
                      <li>
                        <a href="{{route('executive-management')}}" class="sub-menu-item">
                          Executive Managements
                        </a>
                      </li>
                      <li>
                        <a href="{{route('annual-report')}}" class="sub-menu-item">
                          Annual Report
                        </a>
                      </li>
                      <li>
                        <a href="{{route('branches')}}" class="sub-menu-item">
                           Branches
                          </a>
                      </li>
                      <li>
                        <a href="/coming-soon" class="sub-menu-item">
                            Corporate Social Responsibility
                        </a>
                      </li>
                    </ul>
                  </li>
                </ul>
              </li>
            <li class="has-submenu parent-parent-menu-item">
              <a href="javascript:void(0)">Product & Service</a
              ><span class="menu-arrow"></span>
              <ul class="submenu megamenu">
                <li>
                  <ul>
                    <li class="megamenu-head">
                      <strong>Saving Accounts</strong>
                      <hr class="m-0" />
                    </li>
                    <li>
                      <a href="/coming-soon" class="sub-menu-item"
                        >Savings Account</a
                      >
                    </li>
                    <li>
                      <a href="/coming-soon" class="sub-menu-item"
                        >Fixed Time Account</a
                      >
                    </li>
                    <li>
                      <a href="/coming-soon" class="sub-menu-item"
                        >Current Account
                      </a>
                    </li>
                  </ul>
                </li>
                <li>
                  <ul>
                    <li class="megamenu-head">
                      Special Accounts
                      <hr class="m-0" />
                    </li>
                    <li>
                      <a href="/coming-soon" class="sub-menu-item"
                        >Special Saving Account</a
                      >
                    </li>
                    <li>
                        <a href="/coming-soon" class="sub-menu-item">
                          Diaspora Account
                        </a>
                      </li>
                    <li>
                      <a
                        href="/coming-soon"
                        class="sub-menu-item"
                        >Women Saving Account</a
                      >
                    </li>
                    <li>
                      <a href="/coming-soon" class="sub-menu-item"
                        >Elder Saving Account
                      </a>
                    </li>
                  </ul>
                </li>
                <li>
                  <ul>
                    <li class="megamenu-head">
                      Business Accounts
                      <hr class="m-0" />
                    </li>
                    <li>
                      <a href="/coming-soon" class="sub-menu-item"
                        >Salary Account</a
                      >
                    </li>
                    <li>
                      <a
                        href="/coming-soon"
                        class="sub-menu-item"
                        >Investment Account</a
                      >
                    </li>
                  </ul>
                </li>
                <li>
                    <ul>
                      <li class="megamenu-head">
                       Interest Free Banking
                        <hr class="m-0" />
                      </li>
                      <li>
                        <a href="/coming-soon" class="sub-menu-item"
                          >IFB Saving</a
                        >
                      </li>
                      <li>
                        <a href="/coming-soon" class="sub-menu-item"
                          >IFB Current</a
                        >
                      </li>
                    </ul>
                  </li>
                <li>
                  <ul>
                    <li class="megamenu-head">
                      Loan and Advance
                      <hr class="m-0" />
                    </li>
                    <li>
                      <a href="/coming-soon" class="sub-menu-item"
                        >Loans</a
                      >
                    </li>
                    <li>
                      <a href="/coming-soon" class="sub-menu-item"
                        >OverDraft</a
                      >
                    </li>
                  </ul>
                </li>
              </ul>
            </li>
            <li class="has-submenu parent-parent-menu-item">
              <a href="javascript:void(0)">Digital Banking </a
              ><span class="menu-arrow"></span>
              <ul class="submenu">
                <li>
                  <ul>

                    <li>
                      <a href="/coming-soon" class="sub-menu-item">
                        Mobile Banking
                      </a>
                    </li>
                    <li>
                      <a href="/coming-soon" class="sub-menu-item">
                        Agency Banking
                      </a>
                    </li>
                    <li>
                      <a href="/coming-soon" class="sub-menu-item">
                        Internet Banking
                      </a>
                    </li>
                    <li>
                      <a href="/coming-soon" class="sub-menu-item">
                        USSD
                      </a>
                    </li>

                    <li>
                      <a href="/coming-soon" class="sub-menu-item"> POS </a>
                    </li>
                  </ul>
                </li>
              </ul>
            </li>

            <!--
            <li>
              <a href="page-about.html" class="sub-menu-item">About Us</a>
            </li> -->
            <li class="has-submenu parent-parent-menu-item">
                <a href="javascript:void(0)">Information</a
                ><span class="menu-arrow"></span>
                <ul class="submenu">
                  <li>
                    <ul>
                      <li>
                        <a href="{{route('contact-us')}}" class="sub-menu-item"
                        >Contact Us</a
                      >
                      </li>
                      <li>
                        <a href="{{route('vacancy')}}" class="sub-menu-item"
                    >Vacancy</a
                  >
                      </li>
                      <li>
                        <a href="{{route('exchange-rate')}}" class="sub-menu-item">
                           Exchange Rate
                          </a>
                      </li>
                      <li>
                        <a href="{{route('loan-calculator')}}" class="sub-menu-item">
                            Loan Calculator
                          </a>
                      </li>

                      <li>
                        <a href="{{route('news')}}" class="sub-menu-item">
                            News
                          </a>
                      </li>
                      <li>
                        <a href="{{route('announcement')}}" class="sub-menu-item">
                            Announcement
                          </a>
                      </li>
                      <li>
                        <a href="{{route('gallery')}}" class="sub-menu-item">
                            Media
                          </a>
                      </li>
                      <li>
                        <a href="{{route('faq')}}" class="sub-menu-item">
                            FAQ
                          </a>
                      </li>
                    </ul>
                  </li>
                </ul>
              </li>

            <li class="has-submenu parent-parent-menu-item text-info">
              <a href="javascript:void(0)">ENG</a
              >
            </li>
          </ul>
          <!--end navigation menu-->
        </div>
        <!--end navigation-->
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
                    <h1 class="heading mb-4 text-center">Subscribe to Our Newsletter
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
                                placeholder="Your Email :" required>
                            <button type="submit" class="btn rounded-pill btn-primary">Subscribe</button>
                        </form>

                    </div>
                    <!-- end form -->
                </div>
            </div>
        </div>
        <!-- end row -->
    </div>
    <!-- end container -->
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
              </ul>
            </div>
          </div>
          <!--end col-->

          <div class="col-lg-2 col-md-4 col-12 mt-4 mt-sm-0 pt-2 pt-sm-0">
            <h4 class="text-light footer-head">Company</h4>
            <ul class="list-unstyled footer-list mt-4">
              <li>
                <a href="{{route('about-us')}}" class="text-foot fs-6"
                  ><i class="mdi mdi-chevron-right"></i> About Us</a
                >
              </li>
              <li>
                <a href="/coming-soon" class="text-foot fs-6"
                  ><i class="mdi mdi-chevron-right"></i> Services</a
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
            <h4 class="text-light footer-head">Usefull Links</h4>
            <ul class="list-unstyled footer-list mt-4">
              <li>
                <a href="/coming-soon" class="text-foot fs-6"
                  ><i class="mdi mdi-chevron-right"></i> Internet Banking</a
                >
              </li>
              <li>
                <a href="/coming-soon" class="text-foot fs-6"
                  ><i class="mdi mdi-chevron-right"></i> Mobile Banking</a
                >
              </li>
              <li>
                <a href="/coming-soon" class="text-foot fs-6"
                  ><i class="mdi mdi-chevron-right"></i> Diaspora Banking
                </a>
              </li>
              <li>
                <a href="/coming-soon" class="text-foot fs-6"
                  ><i class="mdi mdi-chevron-right"></i> Agency Banking</a
                >
              </li>
              <li>
                <a href="/coming-soon" class="text-foot fs-6"
                  ><i class="mdi mdi-chevron-right"></i> Interest Free Banking</a
                >
              </li>
            </ul>
          </div>
          <!--end col-->

          <div class="col-lg-3 col-md-4 col-12 mt-4 mt-sm-0 pt-2 pt-sm-0">
            <h4 class="text-light fw-normal footer-head mb-4">Others</h4>
            <ul class="list-unstyled footer-list">
              <li>
                <a href="{{route('exchange-rate')}}" class="text-foot fs-6"
                  ><i class="mdi mdi-chevron-right"></i> Exchange Rate</a
                >
              </li>
              <li class="fs-6">
                <a href="{{route('loan-calculator')}}" class="text-foot fs-6"
                  > <i class="mdi mdi-chevron-right"></i> Loan Calculator</a>
              </li>
              <li class="fs-6"> <a href="/coming-soon" class="text-foot fs-6"
                ><i class="mdi mdi-chevron-right"></i> ATM</a></li>
              <li class="fs-6">
                <a href="{{route('branches')}}" class="text-foot fs-6"
                ><i class="mdi mdi-chevron-right"></i> Branches</a>
              </li>
              <li class="fs-6">
                <a href="{{route('faq')}}" class="text-foot fs-6"
                ><i class="mdi mdi-chevron-right"></i> FAQ</a>
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

  </body>

</html>
