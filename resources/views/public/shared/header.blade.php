<div id="navigation">
    <!-- Navigation Menu-->
    <ul class="navigation-menu nav-light nav-right pt-2">
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
        <div class="submenu megamenu px-3 py-3">
            <div class="accordion" id="megamenu-accordion">
                @foreach ($productCategory as $category)
                @if($loop->index == 0)
                <div class="accordion-item mb-3">
                  <h2 class="accordion-header" id="heading{{$loop->index}}">
                    <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse{{$loop->index}}" aria-expanded="true" aria-controls="collapse{{$loop->index}}">
                     {{$category}}
                    </button>
                  </h2>
                  @foreach ($products as $product)
                  @if($product->subtype == $category)
                  <div id="collapse{{$loop->parent->index}}" class="accordion-collapse collapse show" aria-labelledby="heading{{$loop->parent->index}}" data-bs-parent="#megamenu-accordion">
                    <div class="accordion-body">
                        <a href="{{route('product-detail',['title'=>Str::slug($product->title)."-".$product->parent_id])}}" class="sub-menu-item"
                            ><i class="mdi mdi-arrow-right-bold-circle"></i> {{$product->title}}</a
                          >                    </div>
                  </div>
                  @endif
                  @endforeach
                </div>
                @else
                <div class="accordion-item mb-3">
                    <h2 class="accordion-header" id="headingTwo">
                      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse{{$loop->index}}" aria-expanded="false" aria-controls="collapse{{$loop->index}}">
                        {{$category}}
                      </button>
                    </h2>
                    @foreach ($products as $product)
                    @if($product->subtype == $category)
                    <div id="collapse{{$loop->parent->index}}" class="accordion-collapse collapse" aria-labelledby="heading{{$loop->parent->index}}" data-bs-parent="#megamenu-accordion">
                      <div class="accordion-body">
                        <a href="{{route('product-detail',['title'=>Str::slug($product->title)."-".$product->parent_id])}}" class="sub-menu-item"
                            ><i class="mdi mdi-arrow-right-bold-circle"></i> {{$product->title}}</a
                          >                      </div>
                    </div>
                    @endif
                    @endforeach
                  </div>
                @endif
                @endforeach
              </div>
            <div class="d-flex align-items-start gap-3 w-100" id="megamenu-tab">
                <div class="nav flex-column nav-pills me-3 sub-category-container" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                    @foreach ($productCategory as $category)
                    @if($loop->index == 0)
                  <button class="nav-link active text-start" id="v-{{$loop->index}}-tab" data-bs-toggle="pill" data-bs-target="#v-pills-{{$loop->index}}" type="button" role="tab" aria-controls="v-pills-{{$loop->index}}" aria-selected="true">{{$category}}</button>
                   @else
                   <button class="nav-link text-start" id="v-{{$loop->index}}-tab" data-bs-toggle="pill" data-bs-target="#v-pills-{{$loop->index}}" type="button" role="tab" aria-controls="v-pills-{{$loop->index}}" aria-selected="true">{{$category}}</button>
                    @endif
                  @endforeach

                </div>
                <div class="tab-content w-100" id="v-pills-tabContent">
                    @foreach ($productCategory as $category)
                    @if($loop->index == 0)
                    <div class="tab-pane fade show active" id="v-pills-{{$loop->index}}" role="tabpanel" aria-labelledby="v-pills-{{$loop->index}}-tab">
                        <div class="row">
                            @foreach ($products as $product)
                            @if($product->subtype == $category)

                            <div class="col-12 col-md-6 col-lg-4 mb-2">
                                <a href="{{route('product-detail',['title'=>Str::slug($product->title)."-".$product->parent_id])}}" class="sub-menu-item"
                                    ><i class="mdi mdi-arrow-right-bold-circle"></i> {{$product->title}}</a
                                  >
                            </div>
                            @endif
                            @endforeach
                        </div>
                        </div>
                    @else
                    <div class="tab-pane fade" id="v-pills-{{$loop->index}}" role="tabpanel" aria-labelledby="v-pills-{{$loop->index}}-tab">
                        <div class="row">
                            @foreach ($products as $product)
                            @if($product->subtype == $category)

                            <div class="col-12 col-md-6 col-lg-4 mb-2">
                                <a href="{{route('product-detail',['title'=>Str::slug($product->title)."-".$product->parent_id])}}" class="sub-menu-item"
                                    ><i class="mdi mdi-arrow-right-bold-circle"></i> {{$product->title}}</a
                                  >
                            </div>
                            @endif
                            @endforeach
                        </div>
                        </div>
                    @endif
                 @endforeach


                </div>
              </div>
        </div>
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
                    <a href="{{route('atm')}}" class="sub-menu-item">
                        {{ __('ATM') }}
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
                <li>
                 
                  <a href="{{route('terms-and-tariff')}}" class="sub-menu-item">
                      {{ __('Terms and Tariff') }}
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
