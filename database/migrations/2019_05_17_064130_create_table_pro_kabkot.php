<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableProKabkot extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pro_kabkot', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('idprop');
            $table->string('idkab');
            $table->string('kabupaten');
            $table->string('propinsi');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('pro_kabkot');
    }
}
