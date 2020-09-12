<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Angkatan;

class AngkatanController extends Controller
{
    public function store(Request $request){
        $uang = str_replace('.','',$request->nilai);

        Angkatan::create([
            'sasaran_id' => $request->sasaran_id,
            'angkatan' => $request->angkatan,
            'tgl_mulai' => $request->tgl_mulai,
            'tgl_selesai' => $request->tgl_selesai,
            'target_sasaran' => $request->target_sasaran,
            'capaian_sasaran' => $request->capaian_sasaran,
            'nilai' => $uang,
            'tuk' => $request->tuk,
            'tuk_alamat' => $request->tuk_alamat
        ]);
    	// Angkatan::create($request->all());
        return redirect()->back()->with('message', 'Angkatan Berhasil Ditambahkan.');
    }
    
    public function show($id, Request $request)
    {
        $dok_laporan = \DB::table('dokumen_bapem_laporan')
                    ->join('std_dokumen','std_dokumen.kode_dokumen','=','dokumen_bapem_laporan.kode_dokumen')
                    ->select('*','dokumen_bapem_laporan.id as lap_id')
                    ->get()->where("angkatan_id", $id);
        $detailangkatan = \DB::table('sasaran')
                    ->join('angkatan','angkatan.sasaran_id','=','sasaran.id')
                    ->get()->where("id",$id);
//        dd($detailangkatan);
        // $dok_laporan =\App\Dokumen_bapem_laporan::all();
        $angkatan = Angkatan::findOrFail($id);
        return view('angkatan.show', compact('angkatan','dok_laporan','detailangkatan'));
    }
    
    public function update(Request $request)
    {
        $angkatan = Angkatan::find($request->angkatanid);
        $angkatan->update($request->all()); 

        return redirect()->back()->with('message','Angkatan Sasaran Berhasil di Update.');
    }
    
    public function destroy($id)
    {
        $angkatan = Angkatan::findOrFail($id);
        $angkatan->delete();
        return redirect()->back()->with(['message' => 'Angkatan Berhasil Dihapus.']);
    }
}
