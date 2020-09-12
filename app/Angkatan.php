<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Angkatan extends Model
{
    protected $table = 'angkatan';
    protected $fillable = ['sasaran_id','angkatan','tgl_mulai','tgl_selesai','target_sasaran','capaian_sasaran','nilai','tuk','tuk_alamat'];
}
