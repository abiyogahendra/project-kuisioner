
@extends('master.master')

@section('content')
    <div class="signup-content">
        <div class="signup-img">
            <img src="{{asset('registration/images/form-img.jpg')}}" alt="">
            <div class="signup-img-content">
                <h2>Register now </h2>
                <p>while seats are available !</p>
            </div>
        </div>
        <div class="signup-form">
            <form method="POST" class="register-form" id="register-form">
                <div class="form-group">
                    <div class="form-input inputan">
                        <label for="first_name" class="required">Nama Lengkap</label>
                        <input type="text" name="nama" id="first_name" />
                        <div class="alert alert-danger hide-dulu " role="alert"> </div>
                    </div>
                    <div class="form-radio inputan">
                        <div class="label-flex">
                            <label for="payment">Jenis Kelamin</label>
                        </div>
                        <div class="form-radio-group">            
                                <label>
                                    <input type="radio" value="Laki - Laki" name="jenkel"/>
                                    <span class="label"></span> Laki - Laki
                                </label>
                                <label>
                                    <input type="radio" value="Perempuan" name="jenkel" />
                                    <span class="label"></span> Perempuan
                                </label>
                        </div>
                        <div class="alert alert-danger hide-dulu" role="alert"></div>
                    </div>
                    <div class="form-input inputan">
                        <label for="company" class="required">Umur</label>
                        <input type="number" name="umur" id="company" />
                        <div class="alert alert-danger hide-dulu" role="alert"> </div>
                    </div>
                    <div class="form-input inputan">
                        <label for="email" class="required">Email</label>
                        <input type="text" name="email" id="email" />
                        <div class="alert alert-danger hide-dulu" role="alert"> </div>
                    </div>
                    <div class="form-input inputan">
                        <label for="phone_number" class="required">Phone number</label>
                        <input type="text" name="phone_number" id="phone_number" />
                        <div class="alert alert-danger hide-dulu" role="alert"> </div>
                    </div>
                    <div class="form-select inputan">
                        <div class="form-group mb-2"> <label for="form_kota">Pilih Pekerjaan</label> 
                            <select class="form-control js-example-basic-single" name="pekerjaan" id="pekerjaan" required="required" data-error="Masukkan Kota !!" >
                                <option selected>Pilih Pekerjaan</option>
                                <option value="Guru">Guru</option>
                                <option value="Dosen">Dosen</option>
                                <option value="Mahasiswa">Mahasiswa</option>
                                <option value="Tutor">Tutor</option>
                                <option value="Lainnya">Lainnya</option>
                            </select>
                        </div>
                        <div class="alert alert-danger hide-dulu" role="alert"> </div>
                    </div>
                    <div class="form-radio inputan">
                        <div class="label-flex">
                            <label for="payment">Pengalaman Kerja</label>
                        </div>
                        <div class="form-radio-group">            
                                <label for="opt1" class="radio">
                                    <input type="radio" value="1" name="pengalaman" id="opt1" class="hidden"/>
                                    <span class="label"></span> < 1 Tahun
                                </label>
                                <label for="opt2" class="radio">
                                    <input type="radio" value="2" name="pengalaman" id="opt2" class="hidden"/>
                                    <span class="label"></span> 1 - 5 Tahun
                                </label>
                                
                                <label for="opt3" class="radio">
                                    <input type="radio" value="3" name="pengalaman" id="opt3" class="hidden"/>
                                    <span class="label"></span> > 5 Tahun
                                </label>
                        </div>
                        <div class="alert alert-danger hide-dulu" role="alert"> </div>
                    </div>
                </div>
                <div class="form-submit">
                    <input class="submit" type="button" value="Lanjut" onclick="InputDataRegistration()">
                </div>
            </form>
        </div>
        <div class="data">
        
        
        </div>

    </div>
@endsection()

@section('custom-script')
    <script src="{{asset('registration/js/inputdata.js')}}"></script>
@endsection()