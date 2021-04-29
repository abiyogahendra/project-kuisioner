<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\Registration;
use Illuminate\Http\Request;
use App\Models\User;
use Auth;

use App\Http\Controllers\Controller;

class DashboardAdminController extends Controller{
    function DashboardIndex(){
        return view('admin.dashboard');
    }
    
}