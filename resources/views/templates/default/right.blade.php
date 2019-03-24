<!--Module right -->
  @isset ($layouts['right'])
      @foreach ( $layouts['right']  as $layout)
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
<!--Module right -->
