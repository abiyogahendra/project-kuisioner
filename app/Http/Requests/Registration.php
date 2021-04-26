<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class Registration extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            //
            'nama' => 'required',
            'jenkel' => 'required|in:Laki - Laki,Perempuan',
            'umur' => 'required|numeric|min:17',
            'email' => 'required|email',
            'phone_number' => 'required|numeric',
            'pekerjaan' => 'required|in:Guru,Dosen,Mahasiswa,Tutor,Lainnya',
            'pengalaman' => 'required|in:1,2,3',
        ];
    }
    public function messages(){
        return [
            'nama.required' => 'Name Is Required',
            'jenkel.required' => 'Gender Is Required',
            'jenkel.in:Laki - Laki,Perempuan' => 'Choice One',
            'umur.required' => 'Age Is Required',
            'umur.greater than:17' => 'Must Be Over 17 years old',
            'email.required' => 'Email Is Required',
            'email.email' => 'Must Be E-Mail',
            'phone_number.required' => 'Phone Number Is Required',
            'phone_number.number' => 'Must Be Number',
            'pekerjaan.required' => 'Job Is Required',
            'pekerjaan.in:1,2,3' => 'Choice One',
            'pengalaman.required' => 'Experience Is Required',
            'pengalaman.in:1,2,3' => 'Choice One',
        ];
    }
}
