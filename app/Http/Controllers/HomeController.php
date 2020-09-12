<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Session;
use Alert;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        if(Session::has('tahunaktif')){
        $tahunaktif = Session::get('tahunaktif');
        }
        else{

          Session(['tahunaktif'=>'2018']);
          Session::save();
        }
        // dd(session()->all());
        $tahunaktif = Session::get('tahunaktif');
        
        return view('home', compact('tahunaktif'));
    }

    public function edit_tahun()
    {
        $tahunaktif = Session::get('tahunaktif');
        return view ('home_edit_tahun',compact('tahunaktif'));
    }

    public function simpan_tahun(Request $request)
    {
        Session(['tahunaktif'=>$request->tahun_terpilih]);

        Session::save();

        return redirect('home')->with(['message' => 'Tahun Berhasil Disimpan' ]);
    }
    
}
