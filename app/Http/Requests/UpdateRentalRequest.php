<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdateRentalRequest extends FormRequest
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
    public function rules(): array
    {
        return [
            "carId" => ["integer", "exists:cars,id"],
            "customerName" => ["string", "max:100"],
            "fromDate" => ["date"],
            "days" => ["integer"],
            "pricePerDay" => ["numeric"],
            "abroad" => ["boolean"],
        ];
    }
}
