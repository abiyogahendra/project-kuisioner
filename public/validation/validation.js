function ValidationPerPage(id){
    var $inputs = $('#form-'+ id +' :input:radio:checked');
    var data = "";
    var data = "id_page="+ id + " " + $.map($('#form-'+ id +' :input:radio:checked'), function(elem, idx) {
      return "&"+$(elem).attr("name")+"="+ $(elem).val();
    }).join('');
    // var data = $.map($('#form-'+ id +'input:radio:checked'), function(elem, idx) {
        //     return $(elem).attr("name")+":"+ $(elem).val();
        // });
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    $.ajax({
        url : 'validation-question',
        data : data,
        type : 'post',
        dataType : 'json',
        success : function(respon){

        }
    });

}