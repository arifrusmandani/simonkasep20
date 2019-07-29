<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;


class ProkabkotController extends Controller
{
    public function kabkot_terpilih($pro)
    {
      $kabkot = DB::table("pro_kabkot")->where("propinsi",$pro)->orderby("kabupaten")->pluck("kabupaten","kabupaten")->all();
      return json_encode($kabkot);
    }
}
