@extends('layouts.main_admin')
@section('title',' | Role')
@section('breadcrumb')
<div class="row page-titles">
    <div class="col-md-5 col-8 align-self-center">
        <h3 class="text-themecolor">Set User Role</h3>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
            <li class="breadcrumb-item"><a href="{{ route('users.index') }}">Users</a></li>
            <li class="breadcrumb-item active">Role</li>
        </ol>
    </div>
</div>
@endsection
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
                      <form action="{{ route('users.set_role', $user->id) }}" method="post">
                            @csrf
                            <input type="hidden" name="_method" value="PUT">

                        <div class="card">
                            <div class="card-body">
                                <h3 class="card-title">Set Role</h3>

                                 @if (session('success'))
                                @alert(['type' => 'success'])
                                    {{ session('success') }}
                                @endalert
                                @endif
                            <div class="table-responsive">
                                <table class="table table-hover table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Nama</th>
                                            <td>:</td>
                                            <td>{{ $user->name }}</td>
                                        </tr>
                                        <tr>
                                            <th>Email</th>
                                            <td>:</td>
                                            <td><a href="mailto:{{ $user->email }}">{{ $user->email }}</a></td>
                                        </tr>
                                        <tr>
                                            <th>Role</th>
                                            <td>:</td>
                                            <td>
                                                @foreach ($roles as $row)
                                                <div class="custom-control custom-radio">
                                                  <input type="radio" class="custom-control-input" id="defaultUnchecked" name="role" {{ $user->hasRole($row) ? 'checked':'' }}
                                                    value="{{ $row }}">
                                                  <label class="custom-control-label" for="defaultUnchecked">{{  $row }}</label>
                                                </div>
                                                @endforeach
                                            </td>
                                        </tr>
                                    </thead>
                                </table>
                            </div>
                             <div class="card-footer">
                                    <button type="submit" class="btn btn-primary btn-md float-right">
                                        Set Role
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




