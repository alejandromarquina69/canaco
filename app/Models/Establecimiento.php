<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Establecimiento extends Model
{
    use HasFactory;

protected $fillable = [
    'nombre_comercial',
    'rfc',
    'calle',
    'numero',
    'cruzamiento_1',
    'cruzamiento_2',
    'colonia',
    'codigo_postal',
    'responsable_nombre',
    'responsable_telefono',
    'responsable_correo'
];

}
