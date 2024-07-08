<div id="navigation">
    <!-- Navigation Menu-->
    <ul class="navigation-menu nav-light nav-right">
      <li class="has-submenu parent-parent-menu-item">
          <a href="javascript:void(0)">{{ __('About Us') }}</a
          ><span class="menu-arrow"></span>
          <ul class="submenu">
            <li>
              <ul>
                <li>
                  <a href="{{route('about-us')}}" class="sub-menu-item">
                      {{ __('Who We Are') }}
                  </a>
                </li>
                <li>
                  <a href="{{route('board-director')}}" class="sub-menu-item">
                      {{ __('Board Of Directors') }}
                  </a>
                </li>
                <li>
                  <a href="{{route('executive-management')}}" class="sub-menu-item">
                      {{ __('Executive Managements') }}
                  </a>
                </li>
                <li>
                  <a href="{{route('annual-report')}}" class="sub-menu-item">
                      {{ __('Annual Report') }}

                  </a>
                </li>
                <li>
                  <a href="{{route('branches')}}" class="sub-menu-item">
                      {{ __('Branches') }}

                    </a>
                </li>
                <li>
                  <a href="{{route('csr')}}" class="sub-menu-item">
                      {{ __('Corporate Social Responsibility') }}
                  </a>
                </li>
              </ul>
            </li>
          </ul>
        </li>
      <li class="has-submenu parent-parent-menu-item">
        <a href="javascript:void(0)">{{ __('Product & Service') }}</a
        ><span class="menu-arrow"></span>
        <ul class="submenu megamenu">
        @foreach ($productCategory as $category )
        <li>
            <ul>
              <li class="megamenu-head">
                <strong>{{$category}}</strong>
                <hr class="m-0" />
              </li>
             @foreach ($products as $product)
             @if($product->subtype == $category)
             <li>
                <a href="{{route('product-detail',['id'=>$product->parent_id])}}" class="sub-menu-item"
                  >{{$product->title}}</a
                >
              </li>
              @endif
             @endforeach
            </ul>
          </li>
        @endforeach
        </ul>
      </li>
      <li class="has-submenu parent-parent-menu-item">
        <a href="javascript:void(0)">{{ __('Digital Banking') }} </a
        ><span class="menu-arrow"></span>
        <ul class="submenu">
          <li>
            <ul>
             @foreach ($digitalBankings as $digitalBanking )
             <li>
                <a href="{{route('digital-banking-detail',['id'=>$digitalBanking->parent_id])}}" class="sub-menu-item">
                  {{$digitalBanking->title}}
                </a>
              </li>
             @endforeach
            </ul>
          </li>
        </ul>
      </li>

      <!--
      <li>
        <a href="page-about.html" class="sub-menu-item">About Us</a>
      </li> -->
      <li class="has-submenu parent-parent-menu-item">
          <a href="javascript:void(0)">{{ __('Information') }}</a
          ><span class="menu-arrow"></span>
          <ul class="submenu">
            <li>
              <ul>
                <li>
                  <a href="{{route('contact-us')}}" class="sub-menu-item"
                  >{{ __('Contact Us') }}</a
                >
                </li>
                <li>
                  <a href="{{route('vacancy')}}" class="sub-menu-item"
              >{{ __('Vacancy') }}</a
            >
                </li>
                <li>
                  <a href="{{route('exchange-rate')}}" class="sub-menu-item">
                      {{ __('Exchange Rate') }}
                    </a>
                </li>
                <li>
                  <a href="{{route('loan-calculator')}}" class="sub-menu-item">
                      {{ __('Loan Calculator') }}
                    </a>
                </li>

                <li>
                  <a href="{{route('news')}}" class="sub-menu-item">
                      {{ __('News') }}
                    </a>
                </li>
                <li>
                  <a href="{{route('announcement')}}" class="sub-menu-item">
                      {{ __('Announcement') }}
                    </a>
                </li>
                <li>
                  <a href="{{route('gallery')}}" class="sub-menu-item">
                      {{ __('Media') }}
                    </a>
                </li>
                <li>
                  <a href="{{route('faq')}}" class="sub-menu-item">
                      {{ __('FAQ') }}
                    </a>
                </li>
              </ul>
            </li>
          </ul>
        </li>
        <li class="has-submenu parent-parent-menu-item">
          @if(App::getLocale() == "en")
          <a href="javascript:void(0)">
              EN
          </a>
          @elseif(App::getLocale() == "am")
          <a href="javascript:void(0)">
              አማ
          </a>
          @elseif(App::getLocale() == "om")
          <a href="javascript:void(0)">
              OM
          </a>
          @endif
          <span class="menu-arrow"></span>
          <ul class="submenu">
            <li>
              <ul>
                @foreach ($languages as $lang )
                <li>
                    <a href="{{route('localize',['locale'=>$lang->code])}}" class="sub-menu-item"
                    >{{$lang->name}}</a
                  >
                  </li>
                @endforeach
              </ul>
            </li>
          </ul>
        </li>

    </ul>
    <!--end navigation menu-->
  </div>
  <!--end navigation-->
