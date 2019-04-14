@extends('mail.layout')

@section('main')
                            <table class="inner-body" align="center" width="570" cellpadding="0" cellspacing="0">
                                <!-- Body content -->
                                <tr>
                                    <td>
                                        <b>Order ID</b>: {{$orderID}}<br>
                                        <b>Customer name</b>: {{$toname}}<br>
                                        <b>Address</b>: {{$address}}<br>
                                        <b>Phone</b>: {{$phone}}<br>
                                        <b>Order note</b>: {{$comment}}
                                    </td>
                                </tr>
                            </table>
                            <hr>
                            <p style="text-align: center;">Order detail:<br>
                            ===================================<br></p>
                            <table class="inner-body" align="center" width="570" cellpadding="0" cellspacing="0" border="1">
                                {{$orderDetail}}
                                <tr>
                                    <td colspan="2"></td>
                                    <td colspan="2" style="font-weight: bold;">Sub total</td>
                                    <td colspan="2" align="right">{{$subtotal}}</td>
                                </tr>
                                <tr>
                                    <td colspan="2"></td>
                                    <td colspan="2" style="font-weight: bold;">Shipping fee</td>
                                    <td colspan="2" align="right">{{$shipping}}</td>
                                </tr>
                                <tr>
                                    <td colspan="2"></td>
                                    <td colspan="2" style="font-weight: bold;">Discount</td>
                                    <td colspan="2" align="right">{{$discount}}</td>
                                </tr>
                                <tr>
                                    <td colspan="2"></td>
                                    <td colspan="2" style="font-weight: bold;">Total</td>
                                    <td colspan="2" align="right">{{$total}}</td>
                                </tr>
                            </table>
@endsection
