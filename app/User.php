<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Spatie\Permission\Traits\HasRoles;

class User extends Authenticatable
{
    use Notifiable, HasRoles;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password','instansi','alamat','provinsi','kabkot','kecamatan','npwp','foto'
    ];



    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function listbapem()
    {
        // return $this->belongsTo('App\Listbapem','user_id','id');
        return $this->hasMany(Listbapem::class);
    }
    public function personel()
    {
        return $this->hasMany(Personel::class);
    }

    public function sasaran()
    {
        return $this->hasMany(Sasaran::class);
    }
}
