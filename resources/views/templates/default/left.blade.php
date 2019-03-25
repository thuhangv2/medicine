<!--main left-->
<div class="col-sm-3">
   @section('left')
            <div class="left-sidebar">
              <h2>{{ trans('language.category') }}</h2>
              <div class="panel-group category-products" id="accordian">
                <!--category-productsr-->
              @foreach ($categories as $key =>  $category)
                @if (count($category->getChildrens($category->id))>0)
                <div class="panel panel-default">
                  <div class="panel-heading">
                    <h4 class="panel-title">
                      <a data-toggle="collapse" data-parent="#accordian" href="#{{ $key }}">
                        <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                        {{ $category->name }}
                      </a>
                    </h4>
                  </div>
                  <div id="{{ $key }}" class="panel-collapse collapse">
                    <div class="panel-body">
                      <ul>
                        @foreach ($category->getChildrens($category->id) as $cateChild)
                            <li>
                                <a href="{{ $cateChild->getUrl() }}">{{ $cateChild->name }}</a>
                            </li>
                        @endforeach
                      </ul>
                    </div>
                  </div>
                </div>
                @else
                  <div class="panel panel-default">
                    <div class="panel-heading">
                      <h4 class="panel-title"><a href="{{ $category->getUrl() }}">{{ $category->name }}</a></h4>
                    </div>
                  </div>
               @endif
            @endforeach
              </div><!--/category-products-->

              <div class="brands_products"><!--brands_products-->
                <h2>{{ trans('language.brands') }}</h2>
                <div class="brands-name">
                  <ul class="nav nav-pills nav-stacked">
                    @foreach ($brands as $brand)
                      <li><a href="{{ $brand->getUrl() }}"> <span class="pull-right">({{ $brand->products()->count() }})</span>{{ $brand->name }}</a></li>
                    @endforeach
                  </ul>
                </div>
              </div><!--/brands_products-->


      <!--Module left -->
          @isset ($layouts['left'])
              @foreach ( $layouts['left']  as $layout)
                @if ($layout->page == null ||  $layout->page =='*' || $layout->page =='' || (isset($layout_page) && in_array($layout_page, $layout->page) ) )
                  @if ($layout->type =='html')
                    {!! $layout->content !!}
                  @elseif($layout->type =='view')
                    @include($theme.'.blockView.'.$layout->content)
                  @elseif($layout->type =='module')
                    {!! (new $layout->content)->render() !!}
                  @endif
                @endif
              @endforeach
          @endisset
        <!--//Module left -->

      </div>
    @show
</div>
<!--//main left-->
