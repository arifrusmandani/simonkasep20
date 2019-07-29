<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Dokumen extends Model
{
    protected $table = 'Std_dokumen';
    protected $fillable = ['tipe','nama_dokumen','kode_dokumen'];
}
