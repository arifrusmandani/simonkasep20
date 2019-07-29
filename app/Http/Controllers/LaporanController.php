<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Dokumen_bapem_laporan;
use Storage;


class LaporanController extends Controller
{
    public function store(Request $request)
    {
        $file = $request->file('file');
        $tahun = \Carbon\Carbon::now()->format('Y');
        $pecah = substr($tahun, 2);

        $name = $pecah .'_'.$request->sasaran_id.'_'.$request->kode_dokumen . '.' . $file->getClientOriginalExtension();
        $path = $file->move('files', $name);

        Dokumen_bapem_laporan::create([
            'sasaran_id' => $request->sasaran_id,
            'kode_dokumen' => $request->kode_dokumen,
            'volume' => $request->volume,
            'satuan' => $request->satuan,
            'catatan' => $request->catatan,
            'file' => $name
        ]);
    	// Dokumen_bapem_laporan::create($request->all());
        return redirect()->back()->with('message', 'Laporan Berhasil Disimpan!');
    }

    public function update(Request $request)
    {
        $this->validate($request,[
        'file' => 'file|max:6000'
        ]);
        if ($request->file){
            Storage::delete($request->file);
        }

        $data_to_update = [
            'sasaran_id'    => $request->sasaran_id,
            'kode_dokumen'  => $request->kode_dokumen,
            'volume'        => $request->volume,
            'satuan'        => $request->satuan,
            'catatan'       => $request->catatan,
        ];

        if($request->file('file')){
            $file = $request->file('file');
            $tahun = \Carbon\Carbon::now()->format('Y');
            $pecah = substr($tahun, 2);
            $name = $pecah.'_'.$request->sasaran_id.'_'.$request->kode_dokumen.'.'.$file->getClientOriginalExtension();
            $path = $file->move('files', $name);
            $data_to_update['file'] = $name;
        }
        
    	$doklaporan = Dokumen_bapem_laporan::findOrFail($request->mylaporan_id);
        // $doklaporan->update($request->all());
        $doklaporan->update($data_to_update);
        return redirect()->back()->with('message','Dokumen Laporan Berhasil Diupdate!');
    }

    public function destroy($id)
    {
        $laporan = Dokumen_bapem_laporan::findOrFail($id);
        $laporan->delete();

        return back()->with('message','Dokumen Laporan Berhasil Dihapus!');
    }
}
