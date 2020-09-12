<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Listbapem;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use DB;
use Storage;
use Intervention\Image\ImageManager;

class UserController extends Controller
{
    public function index()
    {
    	
    	$users = User::all();
        return view('users.index', compact('users'));
    }
    
    public function create()
    {
    	$role = Role::orderBy('name','ASC')->get();
    	return view('users.create',compact('role'));
    }

    public function show($id,Request $request)
    {
        $listbapem = Listbapem::all()->where("user_id", $request->user()->id);
    	$user = User::findOrFail($id);
      	return view('users.show', compact('user','listbapem'));
    }

    public function store(Request $request)
    {
      $this->validate($request, [
            'name' => 'required|string|max:100',
            'email' => 'required|email|unique:users',
            'password' => 'required|min:6',
            'role' => 'required|string|exists:roles,name'
        ]);
      $data_to_create = [
            'email' => $request->email,
            'name' => $request->name,
            'instansi' => $request->instansi,
            'alamat' => $request->alamat,
            'provinsi' => $request->provinsi,
            'kabkot' => $request->kabkot,
            'kecamatan' => $request->kecamatan,
            'npwp' => $request->npwp,
            'password' => bcrypt($request->password)
      ]; 
      if($request->file('foto')){
          $foto = $request->file('foto');
          $rename = 'avatar-'.$request->email.'.'.$foto->getClientOriginalExtension();
          $path = $foto->move('avatar', $rename);
          $data_to_create['foto'] = $rename;
      }
        
      $user = User::create($data_to_create);

      $user->assignRole($request->role);
      return redirect(route('users.index'))->with(['message' => 'User: <strong>' . $user->name . '</strong> Ditambahkan']);
    }

    public function edit($id)
    {
      $user = User::findOrFail($id);
      return view('users.edit', compact('user'));
    }

    public function update(Request $request, $id)
    {
      $this->validate($request,[
        'name' => 'required|string|max:100',
        'email' => 'required|email|exists:users,email',
        'password' => 'nullable|min:6',
      ]);

      if ($request->user()->foto) {
          Storage::delete($request->user()->foto);
      }
      
      $data_to_update = [
            'name' => $request->name,
            'instansi' => $request->instansi,
            'alamat' => $request->alamat,
            'provinsi' => $request->provinsi,
            'kabkot' => $request->kabkot,
            'kecamatan' => $request->kecamatan,
            'npwp' => $request->npwp,
      ];
      if($request->file('foto')){
          $foto = $request->file('foto');
          $rename = 'avatar-'.$id.'.'.$foto->getClientOriginalExtension();
          $path = $foto->move('avatar', $rename);
          $data_to_update['foto'] = $rename;
      }
      
      $user = User::findOrFail($id);
      $password = !empty($request->password) ? bcrypt($request->password):$user->password;
      $data_to_update['password'] = $password;
      $user->update($data_to_update);
      return redirect(route('users.index'))->with(['message' => 'User: <strong>' . $user->name . '</strong> Diperbaharui']);
    }

    public function destroy($id)
    {
      $user = User::findOrFail($id);
      $user->delete();
      return redirect()->back()->with(['message' => 'User: <strong>' . $user->name . '</strong> Dihapus']);
    }

    public function roles(Request $request, $id)
    {
        $user = User::findOrFail($id);
        $roles = Role::all()->pluck('name');
        return view('users.roles', compact('user', 'roles'));
    }

    public function setRole(Request $request, $id)
    {
        $this->validate($request, [
            'role' => 'required'
        ]);

        $user = User::findOrFail($id);
        $user->syncRoles($request->role);
        return redirect()->back()->with(['message' => 'Role Sudah Di Set']);
    }

    public function rolePermission(Request $request)
    {
        $role = $request->get('role');

        //Default, set dua buah variable dengan nilai null
        $permissions = null;
        $hasPermission = null;

        $roles = Role::all()->pluck('name');

        if (!empty($role)) {
        	//select role berdasarkan namenya, ini sejenis dengan method find()
            $getRole = Role::findByName($role);

            $hasPermission = DB::table('role_has_permissions')
                ->select('permissions.name')
                ->join('permissions', 'role_has_permissions.permission_id', '=', 'permissions.id')
                ->where('role_id', $getRole->id)->get()->pluck('name')->all();
            $permissions = Permission::all()->pluck('name');
        }
        return view('users.role_permission', compact('roles', 'permissions', 'hasPermission'));
    }

    public function addPermission(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|string|unique:permissions'
        ]);

        $permission = Permission::firstOrCreate([
            'name' => $request->name
        ]);
        return redirect()->back();
    }

    public function setRolePermission(Request $request, $role)
    {
        $role = Role::findByName($role);
        $role->syncPermissions($request->permission);
        return redirect()->back()->with(['message' => 'Permission to Role Saved!']);
    }


}