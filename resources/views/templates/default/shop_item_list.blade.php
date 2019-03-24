@extends($theme.'.shop_layout')

@section('main')
<div class="row">
        <div class="container">
                <h2 class="title text-center">{{ $title }}</h2>
{{--  --}}
                </div>
            </div>
@endsection

@section('breadcrumb')
    <div class="breadcrumbs">
        <ol class="breadcrumb">
          <li><a href="{{ route('home') }}">Home</a></li>
          <li class="active">{{ $title }}</li>
        </ol>
      </div>
@endsection
