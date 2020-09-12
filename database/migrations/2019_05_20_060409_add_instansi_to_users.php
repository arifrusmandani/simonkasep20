<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddInstansiToUsers extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->string('instansi')->after('remember_token');
            $table->text('alamat')->after('instansi');
            $table->string('provinsi')->after('alamat');
            $table->string('kabkot')->after('provinsi');
            $table->string('kecamatan')->after('kabkot');
            $table->string('npwp')->after('kecamatan');
            $table->string('foto')->after('npwp');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('users', function (Blueprint $table) {
            //
        });
    }
}
