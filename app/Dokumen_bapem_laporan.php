<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Dokumen_bapem_laporan extends Model
{
    protected $table = 'dokumen_bapem_laporan';
    protected $fillable = [
    	'sasaran_id','kode_dokumen','volume','satuan','catatan','file'];
}
