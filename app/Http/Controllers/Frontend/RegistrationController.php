<?php

namespace App\Http\Controllers\Frontend;
use App\Http\Requests\Registration;

use App\Http\Controllers\Controller;

class RegistrationController extends Controller
{
    function InputRegistration(Registration $request){
        return response()->json([
            'code'  => 200
        ]);
    }
}