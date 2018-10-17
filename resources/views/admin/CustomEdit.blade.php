
<style>
    .table-bordered>thead>tr>th, .table-bordered>tbody>tr>th, .table-bordered>tfoot>tr>th, .table-bordered>thead>tr>td, .table-bordered>tbody>tr>td, .table-bordered>tfoot>tr>td,.table>thead:first-child>tr:first-child>th {
    border: 1px solid #d0bcbc;
}
</style>

<div class="container box">
    <div class="box-header with-border">
        <h3 class="box-title"><span class="glyphicon glyphicon-list-alt"></span> Chi tiết đơn hàng #{{ $order->id }}</h3>
        <div class="box-tools">
            <div class="btn-group pull-right" style="margin-right: 10px">
                <a href="{{ URL::previous() }}" class="btn btn-sm btn-default"><i class="fa fa-list"></i>&nbsp;List</a>
            </div>
            <div class="btn-group pull-right" style="margin-right: 10px">
                <a class="btn btn-sm btn-default form-history-back"><i class="fa fa-arrow-left"></i>&nbsp;Back</a>
            </div>
        </div>
    </div>
    <div>
       <table class="table box table-bordered">
        <tr>
          <th>Thông tin người nhận:</th><td><a href="#" class="updateInfoRequired" data-name="toname" data-type="text" data-pk="{{ $order->id }}" data-url="{{ route("order_update") }}" data-title="Thông tin người nhận" >{{ $order->toname }}</a></td>
        </tr>
        <tr>
          <th>Số điện thoại:</th><td><a href="#" class="updateInfoRequired" data-name="phone" data-type="text" data-pk="{{ $order->id }}" data-url="{{ route("order_update") }}" data-title="Nhập số điện thoại" >{{ $order->phone }}</a></td>
        </tr>
        <tr>
          <th>Email:</th><td>{{ empty($order->customer->email)?'N/A':$order->customer->email}}</td>
        </tr>
        <tr>
          <th>Địa chỉ nhà:</th><td><a href="#" class="updateInfoRequired" data-name="address1" data-type="text" data-pk="{{ $order->id }}" data-url="{{ route("order_update") }}" data-title="Địa chỉ 1" >{{ $order->address1 }}</a></td>
        </tr>
                <tr>
          <th>Quận/huyện, TP:</th><td><a href="#" class="updateInfoRequired" data-name="address2" data-type="text" data-pk="{{ $order->id }}" data-url="{{ route("order_update") }}" data-title="Địa chỉ 2" >{{ $order->address2 }}</a></td>
        </tr>

      </table>
    </div>
</div>


<script type="text/javascript">

$(document).ready(function() {
    $('.updateInfo').editable({});

    $(".updatePrice").on("shown", function(e, editable) {
      var value = $(this).text().replace(/,/g, "");
      editable.input.$input.val(parseInt(value));
    });
    $('.updateStatus').editable({
        validate: function(value) {
            if (value == '') {
                return 'Không được để trống';
            }
        }
    });
        $('.updateInfoRequired').editable({
        validate: function(value) {
            if (value == '') {
                return 'Không được để trống';
            }
        }
    });
    $('.updatePrice').editable({
    ajaxOptions: {
    type: 'post',
    dataType: 'json'
    },
    validate: function(value) {
        if (value == '') {
            return 'Không được để trống';
        }
        if (!$.isNumeric(value)) {
            return 'Chỉ được dùng số';
        }
    },

        success: function(response, newValue) {
            // var rs = JSON.parse(response);
            console.log(response);
            var rs = response;
            if(rs.stt ==1){
                $('.data-shipping').html(rs.msg.shipping);
                $('.data-received').html(rs.msg.received);
                $('.data-total').html(rs.msg.total);
                $('.data-shipping').html(rs.msg.shipping);
                $('.data-discount').html(rs.msg.discount);
                $('.data-balance').remove();
                $('#update-status').before(rs.msg.balance);
                $('.payment_status').html(rs.msg.payment_status);
            }
    }
    });
});



</script>
