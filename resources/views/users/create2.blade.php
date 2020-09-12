@extends('layouts.main_admin')
@section('title',' | Tambah Users')
@section('content')

@if(session('message'))
<div class="alert alert-success">
  {{session('message')}}
</div>
@endif


<section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                    <div class="card">
                      <div class="card-body">
                          <h3 class="card-title">Tambah Data User</h3>
                          @if (session('success'))
                                @alert(['type' => 'success'])
                                    {!! session('success') !!}
                                @endalert
                            @endif

                          {{-- <h6 class="card-subtitle">Data table example</h6> --}}
                          <form action="{{ route('users.store') }}" method="post">
                                @csrf
                                <div class="form-group">
                                    <label for="">Nama</label>
                                    <input type="text" name="name" class="form-control {{ $errors->has('name') ? 'is-invalid':'' }}" required>
                                    <p class="text-danger">{{ $errors->first('name') }}</p>
                                </div>
                                <div class="form-group">
                                    <label for="">Email</label>
                                    <input type="email" name="email" class="form-control {{ $errors->has('email') ? 'is-invalid':'' }}" required>
                                    <p class="text-danger">{{ $errors->first('email') }}</p>
                                </div>
                                <div class="form-group">
                                    <label for="">Password</label>
                                    <input type="password" name="password" class="form-control {{ $errors->has('password') ? 'is-invalid':'' }}" required>
                                    <p class="text-danger">{{ $errors->first('password') }}</p>
                                </div>
                                <div class="form-group">
                                    <label for="">Role</label>
                                    <select name="role" class="form-control {{ $errors->has('role') ? 'is-invalid':'' }}" required>
                                        <option value="">Pilih</option>
                                        @foreach ($role as $row)
                                        <option value="{{ $row->name }}">{{ $row->name }}</option>
                                        @endforeach
                                    </select>
                                    <p class="text-danger">{{ $errors->first('role') }}</p>
                                </div>
                                <div class="form-group">
                                    <button class="btn btn-primary btn-sm">
                                        <i class="fa fa-send"></i> Simpan
                                    </button>
                                </div>
                            </form>

                      </div>
                  </div>
                    </div>
                </div>
            </div>
        </section>


  
    <a href="" class="right-side-toggle btn btn-warning btn-circle btn-med pull-right p-20 m-t-40 m-b-40" data-toggle="tooltip" data-placement="left" title="" data-original-title="Tambah User">
        <i class="fa fa-plus"></i>
    </a>
   


@endsection

@section('writen_scripts')

@endsection
