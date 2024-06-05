<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class RentalResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            "id" => $this->id,
            "carId" => $this->carId,
            "customerName" => $this->customerName,
            "fromDate" => $this->fromDate,
            "days" => $this->days,
            "pricePerDay" => $this->pricePerDay,
            "abroad" => $this->abroad,
            "car" => new CarResource($this->car),

        ];
    }
}
