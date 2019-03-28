  @php
    $categories = (new \App\Models\ShopCategory)->getFullCategories()
  @endphp
  @if ($categories->count())
              <h2>{{ trans('language.category') }}</h2>
              <div class="panel-group category-products" id="accordian">
                <!--category-productsr-->
              @foreach ($categories[0] as $key =>  $category)
                @if ($categories[$category->id]->count())
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
                        @foreach ($categories[$category->id] as $cateChild)
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
  @endif
