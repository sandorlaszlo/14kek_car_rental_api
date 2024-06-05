<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Rental extends Model
{
    use HasFactory;

    public $timestamps = false;

    protected $fillable = [
        "carId",
        "customerName",
        "fromDate",
        "days",
        "pricePerDay",
        "abroad",
    ];

    public function car(): BelongsTo
    {
        return $this->belongsTo(Car::class, 'carId', 'id');
    }
}
