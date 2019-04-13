@extends('mail.layout')

@section('main')
                            <table class="inner-body" align="center" width="570" cellpadding="0" cellspacing="0">
                                <!-- Body content -->
                                <tr>
                                    <td>
                                        <b>{{ trans('language.contact_form.name') }}</b>: {{ $name??'' }}<br>
                                        <b>{{ trans('language.contact_form.email') }}</b>: {{ $email??'' }}<br>
                                        <b>{{ trans('language.contact_form.phone') }}</b>: {{ $phone??'' }}<br>
                                    </td>
                                </tr>
                            </table>
                            <hr>
                            <p style="text-align: center;">{{ trans('language.contact_form.content') }}:<br>
                            <table class="inner-body" align="center" width="570" cellpadding="0" cellspacing="0" border="0">
                                <tr>
                                    <td>{!! $content !!}</td>
                                </tr>
                            </table>
@endsection
