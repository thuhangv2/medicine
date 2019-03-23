<!--main left-->
<div class="col-sm-3">
   @section('left')
            <div class="left-sidebar">
              <h2>{{ trans('language.category') }}</h2>
              <div class="panel-group category-products" id="accordian">
                <!--category-productsr-->
              @foreach ($categories as $key =>  $category)
                @if (count($category->getChildrens($category->id))>0)
                <div class="panel panel-default">
                  <div class="panel-heading">
                    <h4 class="panel-title">
                      <a data-toggle="collapse" data-parent="#accordian" href="#{{ $key }}">
                        <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                        {{ $category->name }}
                      </a>
                    </h4>
                  </div>
                  <div id="{{ $key }}" class="panel-collapse collapse">
                    <div class="panel-body">
                      <ul>
                        @foreach ($category->getChildrens($category->id) as $cateChild)
                            <li>
                                <a href="{{ $cateChild->getUrl() }}">{{ $cateChild->name }}</a>
                            </li>
                        @endforeach
                      </ul>
                    </div>
                  </div>
                </div>
                @else
                  <div class="panel panel-default">
                    <div class="panel-heading">
                      <h4 class="panel-title"><a href="{{ $category->getUrl() }}">{{ $category->name }}</a></h4>
                    </div>
                  </div>
               @endif
            @endforeach
              </div><!--/category-products-->

              <div class="brands_products"><!--brands_products-->
                <h2>{{ trans('language.brands') }}</h2>
                <div class="brands-name">
                  <ul class="nav nav-pills nav-stacked">
                    @foreach ($brands as $brand)
                      <li><a href="{{ $brand->getUrl() }}"> <span class="pull-right">({{ $brand->products()->count() }})</span>{{ $brand->name }}</a></li>
                    @endforeach
                  </ul>
                </div>
              </div><!--/brands_products-->

  @if (!empty($products_special))
              <div class="brands_products"><!--brands_products-->
                <h2>{{ trans('language.products_special') }}</h2>
                <div class="products-name">
                  <ul class="nav nav-pills nav-stacked">
                    @foreach ($products_special as $key => $product_special)
                      <li>
                        <div class="product-image-wrapper product-single">
                          <div class="single-products product-box-{{ $key }}">
                              <div class="productinfo text-center">
                                <a href="{{ $product_special->product->getUrl() }}"><img src="{{ asset($product_special->product->getThumb()) }}" alt="{{ $product_special->product->name }}" /></a>
                                {!! $product_special->product->showPrice() !!}
                                <a href="{{ $product_special->product->getUrl() }}"><p>{{ $product_special->product->name }}</p></a>
                              </div>
                          @if ($product_special->product->price != $product_special->product->getPrice())
                          <img src="{{ asset($theme_asset.'/images/home/sale.png') }}" class="new" alt="" />
                          @elseif($product_special->product->type == 1)
                          <img src="{{ asset($theme_asset.'/images/home/new.png') }}" class="new" alt="" />
                          @endif
                          </div>
                        </div>
                      </li>
                    @endforeach
                  </ul>
                </div>
              </div><!--/brands_products-->
  @endif



<!--Module left -->
  @isset ($layouts['left'])
      @foreach ( $layouts['left']  as $element)
        @if ($element->page == null ||  $element->page =='*' || (isset($layout_page) && $element->page == $layout_page) )
          @if ($element->type =='html' || $element->type =='block')
            {!! $element->content !!}
          @elseif($element->type =='view')
            @include($theme.'.'.$element->content)
          @elseif($element->type =='module')
            {!! (new $element->content)->render() !!}
          @endif
        @endif
      @endforeach
  @endisset
<!--Module left -->

            </div>
    @show
</div>
<!--//main left-->
