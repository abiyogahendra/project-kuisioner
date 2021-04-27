function ValidationPerPage(id){
    $('.alert').addClass('hide-dulu');
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
        success : function(d){
            if(d.code == 200){
                console.log(id);
                console.log(d.code);
                console.log(d.next_page);
                $('.page-' + id + '').addClass('hiden-page');
                $('.page-' + d.next_page + '').removeClass('hiden-page');
            }else{
                Swal.fire({
                    title: 'Kirim Data ??',
                    text: "Kuisioner Sudah Selesai !!",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Send'
                }).then((result) => {
                    if (result.isConfirmed) {
                        var data = "input:"+ id + " " 
                                    + $.map($('.question-form:input:radio:checked'), function(elem, idx) {
                                    return "&"+$(elem).attr("name")+"="+ $(elem).val();
                          }).join('')
                        $.ajax({
                            url : 'submit-data',
                            data : data,
                            type : 'post',
                            dataType : 'json',
                            success : function(d){

                            }
                        })
                    }
                })
            }
        },
        error : function(err){
            var a = err.responseJSON.errors;
            // console.log(a);
            $.each(a, function(index, value){
                // console.log(index)
                $(' [name=' + index + ']').closest('.inputan').find(".alert").removeClass('hide-dulu');
            })
        }
    });
}
function BackPage(id){
    var back_page = id - 1;

    if(back_page == 0){
        $('.page-' + id + '').addClass('hiden-page');
        $('.data-masuk').removeClass('hiden-page');

    }else{
        $('.page-' + id + '').addClass('hiden-page');
        $('.page-' + back_page + '').removeClass('hiden-page');
    }

    // $.ajaxSetup({
    //     headers: {
    //         'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    //     }
    // });
    // $.ajax({
    //     url : 'back-page-check',
    //     data : {
    //         id_page : id
    //     },
    //     type : 'post',
    //     dataType : 'json',
    //     success : function(d){
    //         if(d.code == 200){
    //             console.log(id);
    //             console.log(d.code);
    //             console.log(d.next_page);
    //             $('.page-' + id + '').addClass('hiden-page');
    //             $('.page-' + d.next_page + '').removeClass('hiden-page');
    //         }else{
    //         }
    //     },
    // })
}