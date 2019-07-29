@extends('layouts.main_admin')
@section('title',' | Data Users')
@section('content')

@if(session('message'))
<div class="alert alert-success">
  {{session('message')}}
</div>
@endif


<section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-4">

                    <div class="card">
                      <div class="card-body">
                          <h3 class="card-title">Add New Permission</h3>
                          
                          {{-- <h6 class="card-subtitle">Data table example</h6> --}}
                          <form action="{{ route('users.add_permission') }}" method="post">
                                @csrf
                                <div class="form-group">
                                    <label for="">Name</label>
                                    <input type="text" name="name" class="form-control {{ $errors->has('name') ? 'is-invalid':'' }}" required>
                                    <p class="text-danger">{{ $errors->first('name') }}</p>
                                </div>
                                <div class="form-group">
                                    <button class="btn btn-primary btn-sm">
                                        Add New
                                    </button>
                                </div>
                            </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-mmd-8">
                        <div class="card">
                      <div class="card-body">
                          <h3 class="card-title">Set Permission to Role</h3>
                          @if (session('success'))
                                @alert(['type' => 'success'])
                                    {!! session('success') !!}
                                @endalert
                            @endif

                          {{-- <h6 class="card-subtitle">Data table example</h6> --}}
                            <form action="{{ route('users.roles_permission') }}" method="GET">
                                <div class="form-group">
                                    <label for="">Roles</label>
                                    <div class="input-group">
                                        <select name="role" class="form-control">
                                            @foreach ($roles as $value)
                                                <option value="{{ $value }}" {{ request()->get('role') == $value ? 'selected':'' }}>{{ $value }}</option>
                                            @endforeach
                                        </select>
                                        <span class="input-group-btn">
                                            <button class="btn btn-danger">Check!</button>
                                        </span>
                                    </div>
                                </div>
                            </form>

                            {{-- jika $permission tidak bernilai kosong --}}
                            @if (!empty($permissions))
                                <form action="{{ route('users.setRolePermission', request()->get('role')) }}" method="post">
                                    @csrf
                                    <input type="hidden" name="_method" value="PUT">
                                    <div class="form-group">
                                        <div class="nav-tabs-custom">
                                            <ul class="nav nav-tabs">
                                                <li class="active">
                                                    <a href="#tab_1" data-toggle="tab">Permissions</a>
                                                </li>
                                            </ul>
                                            <div class="tab-content">
                                                <div class="tab-pane active" id="tab_1">
                                                    @php $no = 1; @endphp
                                                    @foreach ($permissions as $key => $row)
                                                        <input type="checkbox" 
                                                            name="permission[]" 
                                                            class="minimal-red" 
                                                            value="{{ $row }}"
                                                            {{--  CHECK, JIKA PERMISSION TERSEBUT SUDAH DI SET, MAKA CHECKED --}}
                                                            {{ in_array($row, $hasPermission) ? 'checked':'' }}
                                                            > {{ $row }} <br>
                                                        @if ($no++%4 == 0)
                                                        <br>
                                                        @endif
                                                    @endforeach
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="pull-right">
                                        <button class="btn btn-primary btn-sm">
                                            <i class="fa fa-send"></i> Set Permission
                                        </button>
                                    </div>
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
  
    <a href="{{ route('users.create') }}" class="right-side-toggle btn btn-warning btn-circle btn-med pull-right p-20 m-t-40 m-b-40" data-toggle="tooltip" data-placement="left" title="" data-original-title="Tambah User">
        <i class="fa fa-plus"></i>
    </a>
   


@endsection

@section('writen_scripts')

@endsection
