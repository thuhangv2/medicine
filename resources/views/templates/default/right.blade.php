<!--Module right -->
  @isset ($layouts['right'])
      @foreach ( $layouts['right']  as $element)
        @if ($element->page == null ||  $element->page =='*' || (isset($layout_page) && $element->page == $layout_page) )
          @if ($element->type =='html' || $element->type =='block')
            {!! $element->content !!}
          @elseif($element->type =='view')
            @include($theme.'.'.$element->content)
          @elseif($element->type =='module')
            {!! (new $element->content)->render() !!}
          @endif
        @endif
      @endforeach
  @endisset
<!--Module right -->
