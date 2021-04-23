<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;

class IndexController extends Controller
{
    function IndexRegistration(){
        return view('registration.registration');
    }
}