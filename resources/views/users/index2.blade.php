@extends('layouts.main_admin')
@section('title',' | Data Users')
@section('content')

@if(session('message'))
<div class="alert alert-success">
  {{session('message')}}
</div>
@endif

  <div class="card">
        <div class="card-body">
            <h3 class="card-title">Pengelola Data User</h3>

            {{-- <h6 class="card-subtitle">Data table example</h6> --}}
            <div class="table-responsive m-t-10">
                <table id="myTable2" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Nama</th>
                            <th>email</th>
                            <th>Instansi</th>
                            <th>NPWP</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>No</th>
                            <th>Nama</th>
                            <th>email</th>
                            <th>Instansi</th>
                            <th>NPWP</th>
                            <th>Aksi</th>
                        </tr>
                    </tfoot>

                    <tbody>
                        @php
                          $no = 1
                        @endphp
                      @foreach($users as $user)
                        <tr>
                            <td>{{$no++}}</td>
                            <td>{{$user->name}}</td>
                            <td>{{$user->email}}</td>
                            <td>{{$user->instansi}}</td>
                            <td>{{$user->npwp}}</td>
                            <td>
                              <a href="{{route('users.show',$user->id)}}" class="btn btn-primary btn-sm" data-toggle="tooltip" data-original-title="Detail"><i class="fa fa-eye"></i></a>
                              <a href="#" class="btn btn-warning btn-sm" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit"></i></a>
                              <button class="btn btn-danger btn-sm" data-toggle="tooltip" data-original-title="Hapus"><i class="fa fa-trash"></i></button>
                            </td>
                        </tr>
                      @endforeach  
                       
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <a href="{{ route('users.create') }}" class="right-side-toggle btn btn-warning btn-circle btn-med pull-right p-20 m-t-40 m-b-40" data-toggle="tooltip" data-placement="left" title="" data-original-title="Tambah User">
        <i class="fa fa-plus"></i>
    </a>
    


@endsection

@section('writen_scripts')

@endsection
