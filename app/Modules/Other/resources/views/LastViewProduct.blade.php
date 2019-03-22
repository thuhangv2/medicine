@if (!empty($arrProductsLastView))
            <div class="brands_products"><!--brands_products-->
              <h2>{{ trans('language.products_last_view') }}</h2>
              <div class="products-lasView">
                <ul class="nav nav-pills nav-stacked">
                  @foreach ($arrProductsLastView as $product_lastView)
                    <li>
                      <div class="row">
                        <div class="col-xs-4"><a href="{{ $product_lastView->getUrl() }}"><img src="{{ asset($product_lastView->getThumb()) }}" alt="{{ $product_lastView->name }}" /></a></div>
                        <div class="col-xs-8"><a href="{{ $product_lastView->getUrl() }}">{{ $product_lastView->name}}</a><span class="last-view">({{ $product_lastView['timelastview'] }})</span></div>
                      </div>
                    </li>
                  @endforeach
                </ul>
              </div>
            </div><!--/brands_products-->
@endif
