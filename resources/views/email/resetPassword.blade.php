@extends('email.layout')

@section('main')
                    <p style="font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left">{!! trans('email.reset_password.text1') !!}</p>

                    <table class="action" align="center" width="100%" cellpadding="0" cellspacing="0" style="font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;margin:30px auto;padding:0;text-align:center;width:100%">
                      <tbody><tr>
                        <td align="center" style="font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box">
                          <table width="100%" border="0" cellpadding="0" cellspacing="0" style="font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box">
                            <tbody><tr>
                              <td align="center" style="font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box">
                                <table border="0" cellpadding="0" cellspacing="0" style="font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box">
                                  <tbody><tr>
                                    <td style="font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box">
                                      <a href="{{ $data['reset_link'] }}" class="button button-primary" style="font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-radius:3px;color:#fff;display:inline-block;text-decoration:none;background-color:#3097d1;border-top:10px solid #3097d1;border-right:18px solid #3097d1;border-bottom:10px solid #3097d1;border-left:18px solid #3097d1" target="_blank">{{ trans('email.reset_password.reset_button') }}</a>
                                    </td>
                                  </tr>
                                </tbody>
                              </table>
                              </td>
                            </tr>
                          </tbody>
                        </table>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                    <p style="font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;font-size:16px;line-height:1.5em;margin-top:0;text-align:left">
                      {!! trans('email.reset_password.text2',['site_admin'=>$data['site_admin']]) !!}
                    </p>

                    <table class="subcopy" width="100%" cellpadding="0" cellspacing="0" style="font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;border-top:1px solid #edeff2;margin-top:25px;padding-top:25px">
                    <tbody><tr>
                      <td style="font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box">
                        <p style="font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#74787e;line-height:1.5em;margin-top:0;text-align:left;font-size:12px">{!! trans('email.reset_password.text3',['reset_button'=>trans('email.reset_password.reset_button')]) !!}: <a href="{{ $data['reset_link'] }}" style="font-family:Avenir,Helvetica,sans-serif;box-sizing:border-box;color:#3869d4" target="_blank">{{ $data['reset_link'] }}</a></p>
                          </td>
                        </tr>
                      </tbody>
                    </table>
@endsection
