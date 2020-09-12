<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Dokumen_bapem_laporan extends Model
{
    protected $table = 'dokumen_bapem_laporan';
    protected $fillable = [
    	'angkatan_id','kode_dokumen','kwitansi','volume','satuan','catatan','file','status','keterangan'];
    protected $attributes = ['keterangan' => '-','status' => 'Belum Dicek'];
    protected $rules =[
        'catatan' => ['nullable']
    ];
}
