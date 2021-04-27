<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;

class ValidationQuestionController extends Controller
{
    function ValidationController(Request $request){
        $data = [];
        $i = 0;

        $d = $request->toArray();
        
        // dd($d['id_page']);
        
        $q_id = DB::table('question')
            ->join('category','question.id_category','category.id_category')
            ->join('page','category.id_page','page.id_page')
            ->where('page.id_page',$d['id_page'])
            ->select([
                'question.id_question'
            ])
            ->get();

        dd($q_id);


        return view('registration.registration');
    }
}