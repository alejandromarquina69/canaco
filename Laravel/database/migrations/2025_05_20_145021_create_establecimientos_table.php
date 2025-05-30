<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
    {
        Schema::create('establecimientos', function (Blueprint $table) {
            $table->id();
            $table->string('nombre_comercial');
            $table->string('rfc');
            $table->string('calle');
            $table->string('numero');
            $table->string('cruzamiento_1')->nullable();
            $table->string('cruzamiento_2')->nullable();
            $table->string('colonia');
            $table->string('codigo_postal');
            $table->string('responsable_nombre');
            $table->string('responsable_telefono');
            $table->string('responsable_correo');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('establecimientos');
    }
};

