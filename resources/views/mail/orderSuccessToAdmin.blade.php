@extends('email.layout')

@section('main')
                            <table class="inner-body" align="center" width="570" cellpadding="0" cellspacing="0">
                                <!-- Body content -->
                                <tr>
                                    <td>
                                        <b>{{ trans('language.email.order.order_id') }}</b>: {{ $id }}<br>
                                        <b>{{ trans('language.email.order.toname') }}</b>: {{ $toname }}<br>
                                        <b>{{ trans('language.email.order.address') }}</b>: {{ $address1.' '.$address2 }}<br>
                                        <b>{{ trans('language.email.order.phone') }}</b>: {{ $phone }}<br>
                                        <b>{{ trans('language.email.order.note') }}</b>: {{ $comment }}
                                    </td>
                                </tr>
                            </table>
                            <hr>
                            <p style="text-align: center;">{{ trans('language.email.order.order_detail') }}:<br>
                            ===================================<br></p>
                            <table class="inner-body" align="center" width="570" cellpadding="0" cellspacing="0" border="1">
                                <tr>
                                    <td>{{ trans('language.email.order.sort') }}</td>
                                    <td>{{ trans('language.email.order.sku') }}</td>
                                    <td>{{ trans('language.email.order.name') }}</td>
                                    <td>{{ trans('language.email.order.note') }}</td>
                                    <td>{{ trans('language.email.order.qty') }}</td>
                                    <td>{{ trans('language.email.order.total') }}</td>
                                </tr>
                                @foreach ($details as $key => $detail)
                                <tr>
                                    <td>{{ $key }}</td>
                                    <td>{{ $detail['sku'] }}</td>
                                    <td>{{ $detail['name'] }}</td>
                                    <td>{{ \Helper::currencyRender($detail['price']) }}</td>
                                    <td>{{ number_format($detail['qty']) }}</td>
                                    <td align="right">{{ \Helper::currencyRender($detail['total_price']) }}</td>
                                </tr>
                                @endforeach
                                <tr>
                                    <td colspan="2"></td>
                                    <td colspan="2" style="font-weight: bold;">{{ trans('language.email.order.sub_total') }}</td>
                                    <td colspan="2" align="right">{{ \Helper::currencyRender($subtotal) }}</td>
                                </tr>
                                <tr>
                                    <td colspan="2"></td>
                                    <td colspan="2" style="font-weight: bold;">{{ trans('language.email.order.shipping_fee') }}</td>
                                    <td colspan="2" align="right">{{ \Helper::currencyRender($shipping) }}</td>
                                </tr>
                                <tr>
                                    <td colspan="2"></td>
                                    <td colspan="2" style="font-weight: bold;">{{ trans('language.email.order.discount') }}</td>
                                    <td colspan="2" align="right">{{ \Helper::currencyRender($discount) }}</td>
                                </tr>
                                <tr>
                                    <td colspan="2"></td>
                                    <td colspan="2" style="font-weight: bold;">{{ trans('language.email.order.order_total') }}</td>
                                    <td colspan="2" align="right">{{ \Helper::currencyRender($total) }}</td>
                                </tr>
                            </table>
@endsection
