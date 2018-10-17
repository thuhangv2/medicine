<style>
    .table-bordered>thead>tr>th, .table-bordered>tbody>tr>th, .table-bordered>tfoot>tr>th, .table-bordered>thead>tr>td, .table-bordered>tbody>tr>td, .table-bordered>tfoot>tr>td,.table>thead:first-child>tr:first-child>th {
    border: 1px solid #d0bcbc;
}
</style>

<div class="container box">
    <div class="box-header with-border">
        <h3 class="box-title"><span class="glyphicon glyphicon-list-alt"></span> {{ $title }}</h3>
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
        @foreach ($datas as $data)
        <tr>
          <th>{{ $data['title'] }}:</th><td><a href="#" class="editable editable-click {{ ($data['disabled'])?'editable-disabled':'' }} {{ ($data['required'])?'fied-required':'no-required' }}" data-name="{{ $data['field'] }}" data-type="{{ $data['type'] }}" data-pk="{{ $data['key'] }}" data-url="{{ $data['url'] }}" data-title="{{ $data['title'] }}" >{{ $data['value'] }}</a></td>
        </tr>
        @endforeach
      </table>
    </div>
</div>


<script type="text/javascript">
$(document).ready(function() {
        $('.no-required').editable({});
        $('.fied-required').editable({
        validate: function(value) {
            if (value == '') {
                return 'Không được để trống';
            }
        }
    });
});



</script>
