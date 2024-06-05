<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreRentalRequest;
use App\Http\Requests\UpdateRentalRequest;
use App\Http\Resources\RentalResource;
use App\Models\Rental;
use Illuminate\Http\Request;

class RentalController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // return Rental::all();
        //return Rental::with('car')->get();
        return RentalResource::collection(Rental::all());
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreRentalRequest $request)
    {
        $rental = Rental::create($request->all());
        return new RentalResource($rental);
    }

    /**
     * Display the specified resource.
     */
    public function show(Rental $rental)
    {
        return new RentalResource($rental);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateRentalRequest $request, Rental $rental)
    {
        $rental->update($request->all());
        return new RentalResource($rental);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Rental $rental)
    {
        $rental->delete();
        return response()->noContent();
    }
}
