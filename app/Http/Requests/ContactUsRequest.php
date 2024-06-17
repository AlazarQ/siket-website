<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ContactUsRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules()
    {
        return [
            'name'=>'required',
            'email'=>'required|email',
            'subject'=>'required',
            'message'=>'required',

        ];
    }
    public function messages()
    {
        return [
            'name.required'=>'Please insert your name',
            'email.required'=>'Please insert your email',
            'email.email'=>'Please insert valid email',
            'subject.required'=>'Please insert subject',
            'message.required'=>'Please insert message',

        ];
    }
}
