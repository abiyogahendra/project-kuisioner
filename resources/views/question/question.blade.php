

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
                @foreach($data_page as $d=>$a)
                <fieldset>
                    <legend><h3>{{$a['name']}}</h3></legend>
                    <form method="POST" class="question-form" id="form-{{$a['id_page']}}">
                        @foreach($data_category as $s)
                            @if($s['id_page'] == $a['id_page'])
                                <fieldset>
                                    <legend><h5>{{$s['name']}}</h5></legend>
                                    <div class="form-group">
                                        <div class="form-radio inputan">
                                            @foreach($data_question as $d)
                                                @if($d['id_category'] == $s['id'])
                                                    <label>{{$d['question']}}</label>
                                                    <div class="form-radio-group">            
                                                        <label>
                                                            <input type="radio" value="1" name="{{$d['id']}}" Required>
                                                            <span class="label"></span>1
                                                        </label>
                                                        <label>
                                                            <input type="radio" value="2" name="{{$d['id']}}" Required>
                                                            <span class="label"></span>2
                                                        </label>
                                                        <label>
                                                            <input type="radio" value="3" name="{{$d['id']}}" Required>
                                                            <span class="label"></span>3
                                                        </label>
                                                        <label>
                                                            <input type="radio" value="4" name="{{$d['id']}}" Required>
                                                            <span class="label"></span>4
                                                        </label>
                                                        <label>
                                                            <input type="radio" value="5" name="{{$d['id']}}" Required>
                                                            <span class="label"></span>5
                                                        </label>
                                                    </div>
                                                    <div class="alert alert-danger hide-dulu" role="alert"> </div>
                                                @endif
                                            @endforeach
                                        </div>
                                        <div class="row justify-content-center">
                                            <div class="col-6">
                                                <hr>
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>
                                @endif
                        @endforeach
                        <div class="form-submit">
                            <input class="submit" type="button" value="Lanjut" onclick="ValidationPerPage('{{$a['id_page']}}')">
                        </div>
                    </form>
                </fieldset>
                @endforeach
        </div>

    </div>
@endsection()

@section('custom-script')
    <script src="{{asset('registration/js/inputdata.js')}}"></script>
@endsection()