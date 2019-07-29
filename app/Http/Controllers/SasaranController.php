<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Sasaran;
use App\Dokumen_bapem_laporan;
use App\Dokumen_bapem_pemberian;
use Yajra\Datatables\Datatables;
use Session;


class SasaranController extends Controller
{
	
    public function index()
    {	
    	$data_sasaran =\App\Sasaran::all();
    	return view('sasaran.index',['data_sasaran' => $data_sasaran]);
    }

    public function create()
    {
    	return view('sasaran.create');
    }

    public function store(Request $request)
    {     
        $input = $request->all();
        $request->merge([
                'listbapem_id' => Session::get('bpm_id')
            ]);
        Sasaran::create($request->all());
        return redirect()->back()->with('message', 'Sasaran Berhasil Disimpan!');
    }

    public function show($id, Request $request)
    {
       
        $dok_laporan = \DB::table('dokumen_bapem_laporan')
                    ->join('std_dokumen','std_dokumen.kode_dokumen','=','dokumen_bapem_laporan.kode_dokumen')
                    ->select('*','dokumen_bapem_laporan.id as lap_id')
                    ->get()->where("sasaran_id", $id);
        // $dok_laporan =\App\Dokumen_bapem_laporan::all();
        $dokumen_pemberian = \DB::table('dokumen_bapem_pemberian')
                    ->join('std_dokumen','std_dokumen.kode_dokumen','=','dokumen_bapem_pemberian.kode_dokumen')
                    ->get()->where("user_id", $request->user()->id);
        $sasaran = Sasaran::findOrFail($id);
        return view('sasaran.show', compact('sasaran','dok_laporan','dokumen_pemberian'));
    }

    public function edit($id)
    {
        $sasaran = \App\Sasaran::find($id);
        return view('sasaran/edit',['sasaran' => $sasaran]);
    }

    public function update(Request $request)
    {
        $sasaran = Sasaran::find($request->sasaranid);
        $sasaran->update($request->all()); 

        return redirect()->back()->with('message','Sasaran Berhasil di Ubah.');
    }

    public function destroy($id)
    {
        $sasaran = Sasaran::findOrFail($id);
        $sasaran->delete();
        return redirect()->back()->with(['message' => 'Sasaran Berhasil Dihapus']);
    }
}
