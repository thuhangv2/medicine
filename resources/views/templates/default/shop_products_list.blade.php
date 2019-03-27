@extends($theme.'.shop_layout')
@section('banner')
@endsection

@section('center')
  <div class="features_items">
    <h2 class="title text-center">{{ $title }}</h2>
      @if (count($products) ==0)
        Not found content!
      @else
          @foreach ($products as  $key => $product)
          <div class="col-sm-4 col-xs-6">
              <div class="product-image-wrapper product-single">
                <div class="single-products">
                  <div class="productinfo text-center product-box-{{ $product->id }}">
                    <a href="{{ $product->getUrl() }}"><img src="{{ asset($product->getThumb()) }}" alt="{{ $product->name }}" /></a>

                    {!! $product->showPrice() !!}

                    <a href="{{ $product->getUrl() }}"><p>{{ $product->name }}</p></a>
                    <a  class="btn btn-default add-to-cart" onClick="addToCart({{ $product->id }},'default',$(this))"><i class="fa fa-shopping-cart"></i>{{trans('language.add_to_cart')}}</a>
                  </div>
                  @if ($product->price != $product->getPrice())
                  <img src="{{ asset($theme_asset.'/images/home/sale.png') }}" class="new" alt="" />
                  @elseif($product->type == 1)
                  <img src="{{ asset($theme_asset.'/images/home/new.png') }}" class="new" alt="" />
                  @endif
                </div>
                <div class="choose">
                  <ul class="nav nav-pills nav-justified">
                    <li><a  onClick="addToCart({{ $product->id }},'wishlist',$(this))"><i class="fa fa-plus-square"></i>{{trans('language.add_to_wishlist')}}</a></li>
                    <li><a  onClick="addToCart({{ $product->id }},'compare',$(this))"><i class="fa fa-plus-square"></i>{{trans('language.add_to_compare')}}</a></li>
                  </ul>
                </div>
              </div>
          </div>
          @endforeach
      @endif
<div style="clear: both; ">
    <ul class="pagination">
      {{ $products->links() }}
  </ul>
</div>

</div>
@endsection


@section('breadcrumb')
    <div class="breadcrumbs pull-left">
        <ol class="breadcrumb">
          <li><a href="{{ route('home') }}">Home</a></li>
          <li class="active">{{ $title }}</li>
        </ol>
      </div>
@endsection


@section('filter')
  <form action="" method="GET" id="filter_sort">
        <div class="pull-right">
        <div>
          <select class="custom-select" name="filter_sort">
            <option selected>{{ trans('language.filters.sort') }}</option>
            <option value="price_asc">{{ trans('language.filters.price_asc') }}</option>
            <option value="price_desc">{{ trans('language.filters.price_desc') }}</option>
            <option value="name_asc">{{ trans('language.filters.name_asc') }}</option>
            <option value="name_desc">{{ trans('language.filters.name_desc') }}</option>
            <option value="sort_asc">{{ trans('language.filters.sort_asc') }}</option>
            <option value="sort_desc">{{ trans('language.filters.sort_desc') }}</option>
            <option value="id_asc">{{ trans('language.filters.id_asc') }}</option>
            <option value="id_desc">{{ trans('language.filters.id_desc') }}</option>
          </select>
        </div>
      </div>
  </form>

@endsection

@push('styles')
@endpush
@push('scripts')
  <script type="text/javascript">
    $('[name="filter_sort"]').change(function(event) {
      $('#filter_sort').submit();
    });
  </script>
@endpush
