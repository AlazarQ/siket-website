<div id="navigation">
    <!-- Navigation Menu-->
    <ul class="navigation-menu nav-light nav-right">
      <li class="has-submenu parent-parent-menu-item">
          <a href="javascript:void(0)">About Us </a
          ><span class="menu-arrow"></span>
          <ul class="submenu">
            <li>
              <ul>
                @foreach ($aboutUsLinks as $link)
                <li>
                    <a href="{{route('about-us')}}" class="sub-menu-item">
                      Who We Are
                    </a>
                </li>
                @endforeach
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
                  <a href="/coming-soon" class="sub-menu-item">
                      Announcement
                    </a>
                </li>
                <li>
                  <a href="{{route('gallery')}}" class="sub-menu-item">
                      Media
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
