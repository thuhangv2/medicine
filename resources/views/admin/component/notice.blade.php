@php
  $newOrders = \App\Models\ShopOrder::where('status',1)->orderBy('id','desc');
  $totalNewOrders = $newOrders->count();
  $orders = $newOrders->limit(10)->get();
@endphp
          <!-- Notifications: style can be found in dropdown.less -->
          <li class="dropdown notifications-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-bell-o"></i>
              <span class="label label-warning">{{$totalNewOrders}}</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have {{$totalNewOrders}} new orders</li>
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                  @foreach ($orders as $order)
                    <li>
                      <a href="{{route('admin_order.detail',['id'=>$order->id])}}">
                        <i class="fa fa-shopping-cart text-green"></i> #{{$order->id}} - Date: {{$order->created_at}}
                      </a>
                    </li>                      
                  @endforeach
                </ul>
              </li>
              <li class="footer"><a href="{{route('admin_order.index')}}?order_status=1">View all</a></li>
            </ul>
          </li>
