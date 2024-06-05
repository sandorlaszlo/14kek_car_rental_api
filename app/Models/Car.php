<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Car extends Model
{
    use HasFactory;

    public $timestamps = false;

    protected $fillable = [
        'licenseNumber',
        'brandAndType',
    ];


    public function rentals(): HasMany
    {
        return $this->hasMany(Rental::class, 'carId', 'id');
    }
}
