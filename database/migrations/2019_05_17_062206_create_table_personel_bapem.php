<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTablePersonelBapem extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('personel_bapem', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('user_id');
            $table->string('peran');
            $table->string('nama');
            $table->bigInteger('nik');
            $table->bigInteger('nip');
            $table->string('hp');
            $table->string('email')->unique();
            $table->string('jabatan');
            $table->string('instansi');
            $table->text('alamat');
            $table->string('provinsi');
            $table->string('kabkot');
            $table->string('kecamatan');
            $table->string('foto');
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
        Schema::dropIfExists('personel_bapem');
    }
}
