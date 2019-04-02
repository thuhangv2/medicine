<aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

        <!-- Sidebar user panel (optional) -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="{{ Admin::user()->avatar }}" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p>{{ Admin::user()->name }}</p>
                <!-- Status -->
                <a href="#"><i class="fa fa-circle text-success"></i> {{ trans('admin.online') }}</a>
            </div>
        </div>

        <!-- search form (Optional) -->
        <!--<form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
            </div>
        </form>-->
        <!-- /.search form -->

        <!-- Sidebar Menu -->
        <ul class="sidebar-menu">
            <li class="header">{{ trans('admin.menu') }}</li>

            @each('admin::partials.menu', Admin::menu(), 'item')

        </ul>

<style type="text/css">
#summary li {
    font-size: 11px;
    color: #9d9d9d;
    padding: 5px 10px;
    border-bottom: 1px dotted #373737;
}
#summary ul, #summary li {
    padding: 0;
    margin: 0;
    list-style: none;
}
#summary {
    border-radius: 2px;
    color: #808b9c;
    background: #2e3a47;
    margin: 15px 10px;
    padding: 5px 0;
}
#summary div:first-child {
    margin-bottom: 4px;
}
#summary li {
    font-size: 11px;
    color: #9d9d9d;
    padding: 5px 10px;
    border-bottom: 1px dotted #373737;
}
#summary .progress {
    height: 3px;
    margin-bottom: 0;
}

.progress {
    overflow: hidden;
    height: 18px;
    margin-bottom: 18px;
    background-color: #f5f5f5;
    border-radius: 3px;
    -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,.1);
    box-shadow: inset 0 1px 2px rgba(0,0,0,.1);
}
</style>
@php
    $totalOrder = \App\Models\ShopOrder::count();
    $totalProcessing = \App\Models\ShopOrder::where('status',1)->count();
    $totalDone = \App\Models\ShopOrder::where('status',4)->count();
    $totalNew = \App\Models\ShopOrder::where('status',0)->count();
    $percentProcessing = floor($totalProcessing * 100/$totalOrder);
    $percentDone = floor($totalDone/$totalOrder * 100);
    $percentNew = floor($totalNew/$totalOrder * 100);
    $percentOther = 100- $percentProcessing - $percentDone - $percentNew;
@endphp

<div id="summary">
<ul>
<li>
<div>Orders Completed <span class="pull-right">{{ $percentProcessing }}%</span></div>
<div class="progress">
<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: {{ $percentProcessing }}%"> <span class="sr-only">{{ $percentProcessing }}%</span></div>
</div>
</li>
<li>
<div>Orders Processing <span class="pull-right">{{ $percentDone }}%</span></div>
<div class="progress">
<div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: {{ $percentDone }}%"> <span class="sr-only">{{ $percentDone }}%</span></div>
</div>
</li>
<li>
<div>Orders New <span class="pull-right">{{ $percentNew }}%</span></div>
<div class="progress">
<div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: {{ $percentNew }}%"> <span class="sr-only">{{ $percentNew }}%</span></div>
</div>
</li>
<li>
<div>Other Statuses <span class="pull-right">{{ $percentOther }}%</span></div>
<div class="progress">
<div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: {{ $percentOther }}%"> <span class="sr-only">{{ $percentOther }}%</span></div>
</div>
</li>
</ul>
</div>

        <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
</aside>
