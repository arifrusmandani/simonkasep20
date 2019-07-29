<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Dokumen_bapem_pemberian extends Model
{
    protected $table = 'dokumen_bapem_pemberian';
    protected $fillable = [
    	'listbapem_id','kode_dokumen','catatan','file'];
}
