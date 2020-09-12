<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Dokumen extends Model
{
    protected $table = 'std_dokumen';
    protected $fillable = ['tipe','nama_dokumen','kode_dokumen'];
}
