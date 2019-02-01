@extends($theme.'.shop_layout')
@section('banner')
@endsection
@section('main')
<section>
    <div class="container">
      <div class="row">
<h2 class="title text-center">{{ $title }}</h2>
@if (count($cart) ==0)
    <div class="col-md-12 text-danger">
        Cart empty!
    </div>
@else
    <style>
    .shipping_address td{
        padding: 3px !important;
    }
    .shipping_address textarea,.shipping_address input[type="text"]{
        width: 100%;
        padding: 7px !important;
    }
    .row_cart>td{
        vertical-align: middle !important;
    }
    input[type="number"]{
        text-align: center;
        padding:2px;
    }
</style>
<div class="table-responsive">
<table class="table box table-bordered">
    <thead>
      <tr  style="background: #eaebec">
        <th style="width: 50px;">No.</th>
        <th style="width: 100px;">{{ trans('language.product.sku') }}</th>
        <th>{{ trans('language.product.name') }}</th>
        <th>{{ trans('language.product.price') }}</th>
        <th >{{ trans('language.product.quantity') }}</th>
        <th>{{ trans('language.product.total_price') }}</th>
        <th>{{ trans('language.cart.delete') }}</th>
      </tr>
    </thead>
    <tbody>

    @foreach($cart as $item)
        @php
            $n = (isset($n)?$n:0);
            $n++;
            $product = App\Models\ShopProduct::find($item->id);
        @endphp
    <tr class="row_cart">
        <td >{{ $n }}</td>
        <td>{{ $product->sku }}</td>
        <td>
            {{ $product->getName() }}<br>
{{-- Process attributes --}}
            @if ($item->options->att)
            (
                @foreach ($item->options->att as $keyAtt => $att)
                    <b>{{ $attributesGroup[$keyAtt]['name'] }}</b>: <i>{{ $att }}</i> ;
                @endforeach
            )<br>
            @endif
{{-- //end Process attributes --}}
            <a href="{{$product->getUrl() }}"><img width="100" src="{{asset($product->getImage())}}" alt=""></a>
        </td>
        <td>{!! $product->showPrice() !!}</td>
        <td><input style="width: 70px;" type="number" onChange="updateCart('{{$item->rowId}}',{{ $item->id }});" class="item-qty" id="item-{{$item->id}}" name="qty-{{$item->id}}" value="{{$item->qty}}"><span class="text-danger item-qty-{{$item->id}}" style="display: none;"></span></td>
        <td align="right">{{\Helper::currencyRender($item->subtotal)}}</td>
        <td>
            <a onClick="return confirm('Confirm?')" title="Remove Item" alt="Remove Item" class="cart_quantity_delete" href="{{url("removeItem/$item->rowId")}}"><i class="fa fa-times"></i></a>
        </td>
    </tr>
    @endforeach
    </tbody>
    <tfoot>
        <tr  style="background: #eaebec">
            <td colspan="7">
                 <div class="pull-left">
                <button class="btn btn-default" type="button" style="cursor: pointer;padding:10px 30px" onClick="location.href='{{ url('/') }}'"><i class="fa fa-arrow-left"></i>{{ trans('language.cart.back') }}</button>
                </div>
                 <div class="pull-right">
                <a onClick="return confirm('Confirm ?')" href="{{route('clearCart')}}"><button class="btn" type="button" style="cursor: pointer;padding:10px 30px">{{ trans('language.cart.remove_all') }}</button></a>
                </div>
            </td>
        </tr>
    </tfoot>
  </table>
  </div>
<form class="shipping_address" id="form-order" role="form" method="POST" action="{{ route('postCheckout') }}">
<div class="row">
    <div class="col-md-6">
            {{ csrf_field() }}
            <table class="table  table-bordered table-responsive">
                <tr>
                    <td class="form-group{{ $errors->has('toname') ? ' has-error' : '' }}">
                        <label for="phone" class="control-label"><i class="fa fa-user"></i> {{ trans('language.cart.to_name') }}:</label> <input name="toname" type="text" placeholder="{{ trans('language.cart.to_name') }}" value="{{ (Auth::user() && !old('toname'))?Auth::user()->name: old('toname')}}">
                            @if($errors->has('toname'))
                                <span class="help-block">{{ $errors->first('toname') }}</span>
                            @endif
                        </td>
                    <td class="form-group{{ $errors->has('phone') ? ' has-error' : '' }}">
                        <label for="phone" class="control-label"><i class="fa fa-volume-control-phone"></i> {{ trans('language.cart.phone') }}:</label> <input name="phone" type="text" placeholder="{{ trans('language.cart.phone') }}" value="{{ (Auth::user() && !old('phone'))?Auth::user()->phone: old('phone')}}">
                            @if($errors->has('phone'))
                                <span class="help-block">{{ $errors->first('phone') }}</span>
                            @endif
                        </td>
                </tr>
                <tr>
                    <td colspan="2" class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                        <label for="email" class="control-label"><i class="fa fa-user"></i> {{ trans('language.cart.email') }}:</label> <input name="email" type="text" placeholder="{{ trans('language.cart.email') }}" value="{{ (Auth::user() && !old('email'))?Auth::user()->email: old('email')}}">
                            @if($errors->has('email'))
                                <span class="help-block">{{ $errors->first('email') }}</span>
                            @endif
                    </td>

                </tr>

                <tr>
                    <td class="form-group{{ $errors->has('address1') ? ' has-error' : '' }}"><label for="address1" class="control-label"><i class="fa fa-home"></i> {{ trans('language.cart.address1') }}:</label> <input name="address1" type="text" placeholder="{{ trans('language.cart.address1') }}" value="{{ (Auth::user() && !old('address1'))?Auth::user()->address1: old('address1')}}">
                            @if($errors->has('address1'))
                                <span class="help-block">{{ $errors->first('address1') }}</span>
                            @endif</td>
                    <td class="form-group{{ $errors->has('address2') ? ' has-error' : '' }}"><label for="address2" class="control-label"><i class="fa fa-university"></i> {{ trans('language.cart.address2') }}</label><input name="address2" type="text" placeholder="{{ trans('language.cart.address2') }}" value="{{ (Auth::user() && !old('address2'))?Auth::user()->address2: old('address2')}}">
                            @if($errors->has('address2'))
                                <span class="help-block">{{ $errors->first('address2') }}</span>
                            @endif</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <label  class="control-label"><i class="fa fa-file-image-o"></i> {{ trans('language.cart.note') }}:</label>
                        <textarea rows="5" name="comment" placeholder="{{ trans('language.cart.note') }}...."></textarea>
                    </td>

                </tr>
            </table>

    </div>
    <div class="col-md-6">



{{-- Total --}}
        <div class="row">
            <div class="col-md-12">
                <table class="table box table-bordered" id="showTotal">
                    @foreach ($dataTotal as $key => $element)
                    @if ($element['value'] !=0)

                     @if ($element['code']=='total')
                         <tr class="showTotal" style="background:#f5f3f3;font-weight: bold;">
                     @else
                        <tr class="showTotal">
                     @endif
                             <th>{!! $element['title'] !!}</th>
                            <td style="text-align: right" id="{{ $element['code'] }}">{{$element['text'] }}</td>
                        </tr>
                    @endif

                    @endforeach
                </table>




{{-- Payment method --}}
        <div class="row">
            <div class="col-md-12">
                    <div class="form-group">
                        <h3 class="control-label"><i class="fa fa-credit-card-alt"></i> {{ trans('language.cart.payment_method') }}:<br></h3>
                    </div>
                    <div class="form-group">
                            <div>
                                <label class="radio-inline">
                                 <img title="{{ $paymentMethod['title'] }}" alt="{{ $paymentMethod['title'] }}" src="{{ asset($paymentMethod['image']) }}" style="width: 120px;">
                                </label>
                            </div>
                    </div>
            </div>
        </div>
{{-- //Payment method --}}
            </div>
        </div>
{{-- End total --}}


        <div class="row">
            <div class="col-md-12 text-center">
                    <div class="pull-right">
                        <button class="btn btn-success" id="submit-order" type="button" style="cursor: pointer;padding:10px 30px"><i class="fa fa-check"></i> {{ trans('language.cart.confirm') }}</button>
                    </div>
            </div>
        </div>



    </div>
</div>
</form>
@endif
        </div>
    </div>
</section>
@endsection

@section('breadcrumb')
@endsection

@push('scripts')
@endpush
