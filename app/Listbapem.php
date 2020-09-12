<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Listbapem extends Model
{
    protected $table = 'listbapem';
    protected $fillable = [
    	'user_id','type_bapem','tahun','nama_bapem','jml_sasaran','nilai'
    ];

    public function user()
    {
    	// return $this->hasMany('App\User','user_id')->count();
    	return $this->belongsTo(User::class);
    }
}
