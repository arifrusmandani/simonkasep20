<?php

namespace App\Http\Controllers;

use Auth;
use Illuminate\Http\Request;
use App\Sasaran;
use App\Personel;
use App\Listbapem;
use App\User;
use App\Dokumen_bapem_pemberian;
Use Session;
use DB;
use Alert;
use Spatie\Permission\Models\Role;



class BapemController extends Controller
{
    public function index(Request $request)
    {
        // dd($request->user()->id);
        
        // $list_bapem = Auth::User()->listbapem();

        // $jml_data = count($list_bapem['listbapem'])
        // $listbapem->where("user_id", $request->user()->id);
            
        // dd(Auth::user()->getRoleNames('administrator'));
        
            
        $listbapemall = \DB::table('listbapem')
                        ->join('users','users.id','=','listbapem.user_id')
                        ->select('*','listbapem.id as list_id')
                        ->get();
        ;
        
        $listbapem = Listbapem::all()->where("user_id", $request->user()->id);
        
    	return view('bapem.index', [
            'listbapem'    => $listbapem,
            'listbapemall' => $listbapemall
        ]);
    }
    public function show($id, Request $request)
    {
        if(Session::has('bpm_id')){
            Session::remove('bpm_id');
        // $bpm_id = Session::get('bpm_id');
        }

          Session(['bpm_id'=>$id]);
          Session::save();
        
        
        $bpm_id = Session::get('bpm_id');



    	$list_bapem = Listbapem::findOrFail($id);
        // $personel_bapem = Personel::all()->where("user_id", $request->user()->id);
    	$personel_bapem = Personel::all()->where("listbapem_id", $id);
        // $sasaran = Sasaran::all()->where("user_id", $request->user()->id);
    	$sasaran = Sasaran::all()->where("listbapem_id", $id);

        $dokumen_pemberian = \DB::table('dokumen_bapem_pemberian')
                    ->join('std_dokumen','std_dokumen.kode_dokumen','=','dokumen_bapem_pemberian.kode_dokumen')
                    ->select('*','dokumen_bapem_pemberian.id as pem_id')
                    ->get()->where("listbapem_id", $id);

        // $dokumen_pemberian = Dokumen_bapem_pemberian::all()->where("user_id", $request->user()->id);
        
    	return view('bapem.show', [
            'personel_bapem'    => $personel_bapem,
            'sasaran'           => $sasaran,
            'list_bapem'        => $list_bapem,
            'dokumen_pemberian' => $dokumen_pemberian
    
        ]);

    }

    public function store(Request $request)
    {
        Listbapem::create($request->all());
        return redirect('bapem')->with('message','Data Berhasil Ditambahkan!');
    }

    public function destroy($id)
    {
        $listbapem = listbapem::findOrFail($id);
        $listbapem->delete();
        
        return back()->with('message','Data Berhasil Dihapus!');
    }

    public function update(Request $request)
    {
        $listbapem = Listbapem::findOrFail($request->mybapem_id);
        $listbapem->update($request->all());

        return back()->with('message','Bapem Berhasil Diupdate!');
    }

    public function detail(Request $request,$id)
    {
        $personel_bapem = Personel::find($id);
        return view('bapem.detail',compact('personel_bapem'))->renderSections()['content'];
    }
}
