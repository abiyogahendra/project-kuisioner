<?php

namespace App\Http\Controllers;
use App\Http\Requests\Registration;

use App\Http\Controllers\Controller;

class RegistrationController extends Controller
{
    function InputRegistration(Registration $request){
        dd($request);
    }
}