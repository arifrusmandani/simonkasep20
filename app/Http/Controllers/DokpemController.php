<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Dokumen_bapem_pemberian;
use Session;
use Storage;

class DokpemController extends Controller
{
    //
    public function store(Request $request)
    {
        $this->validate($request,[
            'file' => 'required|file|max:6000'
        ]);
        $file = $request->file('file');
        $tahun = \Carbon\Carbon::now()->format('Y');
        $pecah = substr($tahun, 2);

        $name = $pecah .'_'.Session::get('bpm_id').'_'.$request->kode_dokumen . '.' . $file->getClientOriginalExtension();

        $path = $file->move('files', $name);

    	// $request->merge([
    	// 	'listbapem_id' => Session::get('bpm_id')
    	// ]);
    	Dokumen_bapem_pemberian::create([
            'listbapem_id' => Session::get('bpm_id'),
            'kode_dokumen' => $request->kode_dokumen,
            'catatan' => $request->catatan,
            'file' => $name
        ]);
    	return redirect()->back()->with('message', 'Dokumen Berhasil Ditambahkan!');
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
            'listbapem_id' => Session::get('bpm_id'),
            'kode_dokumen' => $request->kode_dokumen,
            'catatan' => $request->catatan,
            ];
 
        if ($request->file('file')){
            $file = $request->file('file');
            $tahun = \Carbon\Carbon::now()->format('Y');
            $pecah = substr($tahun, 2);
           
            $name = $pecah.'_'.Session::get('bpm_id').'_'.$request->kode_dokumen.'.'.$file->getClientOriginalExtension();
            $path = $file->move('files', $name);
            $data_to_update['file']=$name;
        }
 
        $dokpem = Dokumen_bapem_pemberian::findOrFail($request->mydokpem_id);
        $dokpem->update($data_to_update);
        return redirect()->back()->with('message','Dokumen Berhasil Diubah.');
    }

    public function destroy($id)
    {
    	$dokpem = Dokumen_bapem_pemberian::findOrFail($id);
        $dokpem->delete();

        return back()->with('message','Dokumen Berhasil Dihapus!');
    }
}
