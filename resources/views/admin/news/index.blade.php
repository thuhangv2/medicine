@extends('layouts.adminApp')

@section('content')
    <div class="container">
        <div>
            <div class="panel-heading text-uppercase">Tin tức</div>

            <div class="panel-body">
                <router-view name="newsIndex"></router-view>
                <router-view></router-view>
            </div>
        </div>
    </div>
@endsection

