<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePropiedad extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('propiedad', function (Blueprint $table) {
            $table->increments('id');
            $table->timestamps();
			 
			$table->integer('publicado')->length(1)->default(1);
			/* Formato correcto/*  $table->boolean('publicado')->default(1);  */
			$table->string('titulo',100)->nullable();
			$table->string('descripcion',3000)->nullable();
			$table->string('imagen')->nullable();
			
			$table->integer('tipooperacion_id')->nullable(); /* autollena ok */
			$table->integer('tipopropiedad_id')->nullable(); /* autollena ok */
			
			$table->double('precio_compra')->nullable();		
			$table->double('precio_alquiler')->nullable();
			
			$table->string('calle',100)->nullable();
            $table->integer('altura')->length(5);
			$table->string('piso',100)->nullable();
			$table->string('maps',100)->nullable();	
            $table->string('map_latitude')->nullable();	
            $table->string('map_longitude')->nullable();	
			
			$table->integer('barrio_propiedad_id')->nullable(); /* autollena ok */
			$table->integer('localidad_propiedad_id')->nullable(); /* autollena ok */
			$table->integer('provincia_propiedad_id')->nullable(); /* autollena ok */

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('propiedad');
    }
}
