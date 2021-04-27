function InputDataRegistration(){
    var pekerjaan = document.getElementById("pekerjaan");
    $('.alert').addClass('hide-dulu');
    $.ajax({
        url : 'input-registrasi',
        data : {
            _token : dataToken,
            nama    : $("input[name=nama]").val(),
            jenkel    : $("input[name=jenkel]:checked").val(),
            umur    : $("input[name=umur]").val(),
            email    : $("input[name=email]").val(),
            phone_number    : $("input[name=phone_number]").val(),
            pekerjaan    : pekerjaan.value,
            pengalaman    : $('input[name=pengalaman]:checked').val(),
        },
        type : 'post',
        dataType : 'json',
        success : function(respon){
            if(respon.code == 200){
                $.ajax({
                    url : 'question',
                    type : 'get',
                    dataType : 'html',
                    success : function(html){
                        $('registration-form').addClass('hide-dulu');
                        if (!$(".page-1").length){
                             $('.data-masuk').after(html);
                        }
                        $('.data-masuk').addClass('hiden-page');
                        $('.page-1').removeClass('hiden-page');
                    },
                })
            }
        },
        error : function(data){
            var a = data.responseJSON.errors;
            // console.log(a);
            $.each(a, function(index, value){
                // console.log(index)
                $(' [name=' + index + ']').closest('.inputan').find(".alert").text(value).removeClass('hide-dulu');
            })
        }
    })
}