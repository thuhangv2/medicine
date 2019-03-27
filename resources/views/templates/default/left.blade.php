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


      <!--Module left -->
          @isset ($layouts['left'])
              @foreach ( $layouts['left']  as $layout)
                @if ($layout->page == null ||  $layout->page =='*' || $layout->page =='' || (isset($layout_page) && in_array($layout_page, $layout->page) ) )
                  @if ($layout->type =='html')
                    {!! $layout->text !!}
                  @elseif($layout->type =='view')
                    @if (view()->exists('blockView.'.$layout->text))
                     @include('blockView.'.$layout->text)
                    @endif
                  @elseif($layout->type =='module')
                    {!! (new $layout->text)->render() !!}
                  @endif
                @endif
              @endforeach
          @endisset
      <!--//Module left -->

      </div>
    @show
</div>
<!--//main left-->
