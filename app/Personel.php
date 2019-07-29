<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Personel extends Model
{
    protected $table = 'personel_bapem';
    protected $fillable = ['listbapem_id','peran','nama','nik','nip','hp','email','jabatan','instansi','alamat','provinsi','kabkot','kecamatan','foto'];

    public function listbapem()
    {
    	return $this->belongsTo(Listbapem::class);
    }
}
