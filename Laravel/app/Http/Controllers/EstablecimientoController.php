<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Establecimiento;

class EstablecimientoController extends Controller
{
    public function store(Request $request)
    {
$request->validate([
    'nombre_comercial' => 'required',
    'rfc' => 'required',
    'calle' => 'required',
    'numero' => 'required',
    'cruzamiento_1' => 'nullable',
    'cruzamiento_2' => 'nullable',
    'colonia' => 'required',
    'codigo_postal' => 'required',
    'responsable_nombre' => 'required',
    'responsable_telefono' => 'required',
    'responsable_correo' => 'required|email',
]);

Establecimiento::create($request->all());
        return redirect('/registro-establecimiento')->with('success', 'Establecimiento registrado con éxito');
    }
}