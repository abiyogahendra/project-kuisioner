$(document).ready(function(){
    $("#register-form").validate({
        rules: {
            nama_lengkap : {
                required: true,
            },
            jenkel : {
                required: true,
            },
            umur: {
                required: true,
                number: true,
                min: 17
            },
            email: {
                required: true,
                email: true
            },
            phone_number: {
                required: true,
                number: true,
                min: 18
            },
            pekerjaan : {
                required: true,
            },
            pengalaman : {
                required: true,
            },
        },
        messages : {
            name: {
                minlength: "Name should be at least 3 characters"
            },
            umur: {
                required: "Please enter your age",
                number: "Please enter your age as a numerical value",
                min: "You must be at least 17 years old"
            },
            email: {
                email: "The email should be in the format: abc@domain.tld"
            },
            weight: {
                required: "People with age over 50 have to enter their weight",
                number: "Please enter your weight as a numerical value"
            }
        }
    });
})

function InputDataRegistration(){
    
    $.ajax({
        url : 'input-registrasi',
        data : {
            _token : dataToken,
            nama    : $("input[name=nama_lengkap]").val(),
            jenkel    : $("input[name=jenkel]:checked").val(),
            umur    : $("input[name=umur]").val(),
            email    : $("input[name=email]").val(),
            phone_number    : $("input[name=phone_number]").val(),
            pekerjaan    : $("input[name=pekerjaan]:selected").val(),
            pengalaman    : $("input[name=pengalaman]").val(),
        },
        type : 'post',
        dataType : 'json',
        success : function(respon){

        }
    })
}