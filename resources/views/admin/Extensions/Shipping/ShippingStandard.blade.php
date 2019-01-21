<section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">{{ trans('Extensions/Shipping/ShippingStandard.title') }}</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
             <table id="example2" class="table table-bordered table-hover">
                <thead>
                <tr>
                  <th width="40%">{{ trans('Extensions/Shipping/ShippingStandard.min_amount') }}</th>
                  <th width="40%">{{ trans('Extensions/Shipping/ShippingStandard.fee') }}</th>
                </tr>
                </thead>
                <tbody>
                  @foreach ($data as $key => $record)
                    <tr>
                      <td><a href="#" class="updateData" data-name="min_amount" data-type="text" data-pk="{{ $record['id'] }}" data-url="{{ route('processExtension',['group'=>'shipping','key'=>'ShippingStandard']) }}" data-title="{{ trans('Extensions/Shipping/ShippingStandard.min_amount') }}">{{ $record['min_amount'] }}</a></td>
                      <td><a href="#" class="updateData" data-name="fee" data-type="text" data-pk="{{ $record['id'] }}" data-url="{{ route('processExtension',['group'=>'shipping','key'=>'ShippingStandard']) }}" data-title="{{ trans('Extensions/Shipping/ShippingStandard.fee') }}">{{ $record['fee'] }}</a></td>
                    </tr>
                  @endforeach
                  <tr id="add-item"></tr>
                </tbody>
                <tfoot>
                  <tr>
                    <td colspan="4">
                          <button  type="button" class="btn btn-sm btn-success" id="add-item-button"  title="{{ trans('Extensions/Shipping/ShippingStandard.add_more') }}"><i class="fa fa-plus"></i> {{ trans('Extensions/Shipping/ShippingStandard.add_more') }}</button>
                    </td>
                  </tr>
                </tfoot>
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
$(document).ready(function() {
    $(".updateData").on("shown", function(e, editable) {
      var value = $(this).text().replace(/,/g, "");
      editable.input.$input.val(parseInt(value));
    });
    $('.updateData').editable({
    ajaxOptions: {
    type: 'put',
    dataType: 'json'
    },
    validate: function(value) {
        if (value == '') {
            return '{{  trans('language.admin.not_empty') }}';
        }
        if (!$.isNumeric(value)) {
            return '{{  trans('language.admin.only_numeric') }}';
        }
    }
    });

});

$('#add-item-button').click(function() {
  var checkForm = $('#addItem-form').length;
  if(checkForm){
              $.ajax({
                url:'{{ route('processExtension',['group'=>'shipping','key'=>'ShippingStandard']) }}',
                type:'post',
                dataType:'json',
                data:{
                  'action':'add-new',
                  'amount': $('#amount').val(),
                  'fee':$('#fee').val(),
                  '_token':'{{ csrf_token() }}'
                },
                success: function(result){
                    if(parseInt(result.error) ==0){
                        location.reload();
                    }else{
                        alert(result.msg);
                    }
                }
            });
        }else{
          var html = '<tr id="addItem-form"><td><input id="amount" type="number" size="4"></td><td><input id="fee" type="number" size="4"></td><td><span title="{{ trans('Extensions/Shipping/ShippingStandard.min_amount') }}" class="btn btn-flat btn-danger remove"><i class="fa fa-trash"></i></span></td></tr>';
          $('#add-item').before(html);
        }

});

</script>
