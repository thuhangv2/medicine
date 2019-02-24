<section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">{{ $title }}</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
             <table id="example2" class="table table-bordered table-hover">
                <thead>
                <tr>
                  <th>{{ trans('language.templates.name') }}</th>
                  <th>{{ trans('language.templates.auth') }}</th>
                  <th>{{ trans('language.templates.email') }}</th>
                  <th>{{ trans('language.templates.website') }}</th>
                  <th>{{ trans('language.templates.status') }}</th>
                </tr>
                </thead>
                <tbody>
                  @foreach ($templates as $key => $template)
                    <tr>
                     <td>{{ $template['config']['name']??'' }}</td>
                     <td>{{ $template['config']['auth']??'' }}</td>
                     <td>{{ $template['config']['email']??'' }}</td>
                     <td>{{ $template['config']['website']??'' }}</td>
                      <td>{!! ($templateCurrent != $key)?'':'<span onClick="enableExtension($(this),\''.$key.'\');" title="'.trans('language.extensions.enable').'" type="button" class="btn btn-flat btn-primary"><i class="fa fa-paper-plane"></i>Enable</span>' !!}</td>
                    </tr>
                  @endforeach
                </tbody>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    <div>
</div>
</section>
<script type="text/javascript">
  function enableExtension(obj,key) {
      obj.button('loading');
      $.ajax({
        type: 'POST',
        dataType:'json',
        url: '{{ route('enableExtension') }}',
        data: {
          "_token": "{{ csrf_token() }}",
          "key":key,
        },
        success: function (response) {
          console.log(response);
          if(parseInt(response.error) ==0){
              location.reload();
          }else{
              obj.button('reset');
              alert(response.msg);
          }
        }
      });

  }
  function disableExtension(obj,key) {
      obj.button('loading');
      $.ajax({
        type: 'POST',
        dataType:'json',
        url: '{{ route('disableExtension') }}',
        data: {
          "_token": "{{ csrf_token() }}",
          "key":key,
        },
        success: function (response) {
          console.log(response);
          if(parseInt(response.error) ==0){
              location.reload();
          }else{
              obj.button('reset');
              alert(response.msg);
          }
        }
      });
  }
  function installExtension(obj,key) {
      obj.button('loading');
      $.ajax({
        type: 'POST',
        dataType:'json',
        url: '{{ route('installExtension') }}',
        data: {
          "_token": "{{ csrf_token() }}",
          "key":key,
        },
        success: function (response) {
          console.log(response);
          if(parseInt(response.error) ==0){
              location.reload();
          }else{
              obj.button('reset');
              alert(response.msg);
          }
        }
      });
  }
  function uninstallExtension(obj,key) {
    var checkstr =  confirm('are you sure you want to uninstall this?');
      if(checkstr == true){
            obj.button('loading');
            $.ajax({
              type: 'POST',
              dataType:'json',
              url: '{{ route('uninstallExtension') }}',
              data: {
                "_token": "{{ csrf_token() }}",
                "key":key,
              },
              success: function (response) {
                console.log(response);
                if(parseInt(response.error) ==0){
                    location.reload();
                }else{
                    obj.button('reset');
                    alert(response.msg);
                }
              }
            });
      }else{
      return false;
      }
  }
</script>
