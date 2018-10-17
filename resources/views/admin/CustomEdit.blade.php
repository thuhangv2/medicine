<style>
    .table-bordered>thead>tr>th, .table-bordered>tbody>tr>th, .table-bordered>tfoot>tr>th, .table-bordered>thead>tr>td, .table-bordered>tbody>tr>td, .table-bordered>tfoot>tr>td,.table>thead:first-child>tr:first-child>th {
    border: 1px solid #d0bcbc;
}
</style>

<div class="container box">
    <div class="box-header with-border">
        <h3 class="box-title"> </h3>
        <div class="box-tools">
        </div>
    </div>
    <div>
       <table class="table box table-bordered">
        @foreach ($datas as $data)
        <tr>
          <th style="width: 200px;">{!! trans(htmlentities($data['title'])) !!}:</th>
          <td>
            <a href="#" class="{{ !empty($data['disabled'])?'editable-disabled':'' }} {{ ($data['required'])?'fied-required':'no-required' }}" data-name="{{ $data['field'] }}" data-type="{{ $data['type'] }}" data-pk="{{ $data['key'] }}" data-source ="{{ $data['source'] }}" data-url="{{ $data['url'] }}" data-title="{!! trans(htmlentities($data['title'])) !!}" data-value="{{ $data['value'] }}"></a>
          </td>
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
                return '{{  trans('language.admin.not_empty') }}';
            }
        }
    });
});



</script>
