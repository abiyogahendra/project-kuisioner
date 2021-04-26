// $(document).ready(function(){
//     $("#register-form").validate({
//         rules: {
//             nama_lengkap : {
//                 required: true,
//             },
//             jenkel : {
//                 required: true,
//             },
//             umur: {
//                 required: true,
//                 number: true,
//                 min: 17
//             },
//             email: {
//                 required: true,
//                 email: true
//             },
//             phone_number: {
//                 required: true,
//                 number: true,
//                 min: 18
//             },
//             pekerjaan : {
//                 required: true,
//             },
//             pengalaman : {
//                 required: true,
//             },
//         },
//         messages : {
//             name: {
//                 minlength: "Name should be at least 3 characters"
//             },
//             umur: {
//                 required: "Please enter your age",
//                 number: "Please enter your age as a numerical value",
//                 min: "You must be at least 17 years old"
//             },
//             email: {
//                 email: "The email should be in the format: abc@domain.tld"
//             },
//             weight: {
//                 required: "People with age over 50 have to enter their weight",
//                 number: "Please enter your weight as a numerical value"
//             }
//         }
//     });
// })

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