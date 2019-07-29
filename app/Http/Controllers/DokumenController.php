<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Dokumen;
use App\Listbapem;
use App\Dokumen_bapem_pemberian;

class DokumenController extends Controller
{
    public function index()
    {
    	$data_dokumen =\App\Dokumen::all();
        $dok_pemberian = \App\Dokumen_bapem_pemberian::all();
        $dokpem = \DB::table('dokumen_bapem_pemberian')
                    ->join('listbapem','listbapem.id','=','dokumen_bapem_pemberian.listbapem_id')
                    ->join('std_dokumen','std_dokumen.kode_dokumen','=','dokumen_bapem_pemberian.kode_dokumen')
                    ->get();
        // return $dokpem;
    	return view('dokumen.index',[
            'data_dokumen' => $data_dokumen,
            'dok_pemberian' => $dok_pemberian,
            'dokpem' => $dokpem
        ]);
    }

    public function store(Request $request)
    {
    	$input = $request->all();
        Dokumen::create($request->all());
        return redirect('dokumen')->with('message', 'Dokumen Berhasil Ditambahkan!');
    }

    public function add_dokpem(Request $request)
    {
        Dokumen_bapem_pemberian::create($request->all());
        return redirect('dokumen')->with('message','Dokumen Berhasil Ditambahkan.');
    }

    public function update(Request $request)
    {
        $dokumenstd = Dokumen::findOrFail($request->dokumenstd_id);
        $dokumenstd->update($request->all());

        return back()->with('message','Dokumen Berhasil Diupdate!');
    }

    public function destroy($id)
    {
        $dokumen = Dokumen::findOrFail($id);
        $dokumen->delete();

        return back()->with('message','Dokumen Berhasil Dihapus!');
    }
}
