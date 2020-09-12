<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Personel;
use Session;
use Storage;

class PersonelController extends Controller
{
    	public function index()
    	{
    		$data_pengelola_bapem =\App\Personel::all();
    		return view('personel.index',['data_pengelola_bapem' => $data_pengelola_bapem]);
    	}
    	public function create()
    	{
    		return view('personel.create');
    	}

    	public function store(Request $request)
    	{
            $data_to_update = [
                'listbapem_id' => Session::get('bpm_id'),
                'peran' =>$request->peran,
                'nama' =>$request->nama,
                'nik' =>$request->nik,
                'nip' =>$request->nip,
                'hp' =>$request->hp,
                'email' =>$request->email,
                'jabatan' =>$request->jabatan,
                'instansi' =>$request->instansi,
                'alamat' =>$request->alamat,
                'provinsi' =>$request->provinsi,
                'kabkot' =>$request->kabkot,
                'kecamatan' =>$request->kecamatan,
            ];
            if($request->file('foto')){
                $foto = $request->file('foto');
                $name = 'personel-'.$request->nik.'.'.$foto->getClientOriginalExtension();
                $path = $foto->move('avatar',$name);
                $data_to_update['foto'] = $name;
            }

            // $request->merge([
            //     'listbapem_id' => Session::get('bpm_id')
            // ]);
            Personel::create($data_to_update);
            
            return redirect(route('bapem.index'))->with('message', 'Personel Berhasil Ditambahkan!');

    	}

        public function show(Request $request,$id)
        {
            $personel = Personel::find($id);
            return view('personel.show',compact('personel'));
        }


        public function edit($id)
        {
            $personel = Personel::find($id);
            return view('personel/edit',['personel'=>$personel]);
        }

        public function update(Request $request, $id)
        {
            if ($request->foto) {
            Storage::delete($request->foto);
            }

            $data_to_update = [
                'peran' =>$request->peran,
                'nama' =>$request->nama,
                'nik' =>$request->nik,
                'nip' =>$request->nip,
                'hp' =>$request->hp,
                'email' =>$request->email,
                'jabatan' =>$request->jabatan,
                'instansi' =>$request->instansi,
                'alamat' =>$request->alamat,
                'provinsi' =>$request->provinsi,
                'kabkot' =>$request->kabkot,
                'kecamatan' =>$request->kecamatan,
            ];
            
            if($request->file('foto')){
                $foto = $request->file('foto');
                $name = 'personel-'.$request->nik.'.'.$foto->getClientOriginalExtension();
                $path = $foto->move('avatar',$name);
                $data_to_update['foto'] = $name;
            }

            $personel = Personel::findOrFail($id);
            $personel->update($data_to_update);
            
        return back()->with('message','Personel Berhasil Diupdate!');
        }

        public function destroy($id)
        {
            $personel = Personel::findOrFail($id);
            $personel->delete();
            return redirect()->back()->with(['message' => 'Personel: <strong>' . $personel->nama . '</strong> Dihapus']);
        }
}
