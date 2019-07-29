<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sasaran extends Model
{
    protected $table = 'sasaran';
    protected $fillable = ['listbapem_id','tipe_bapem','penerima_bapem','area_bapem','sasaran','satuan','rupiah_bapem'];

    public function user()
    {
    	return $this->belongsTo(User::class);
    }
}
