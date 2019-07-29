@extends('layouts.main_admin')
@section('title',' | Role')
@section('content')

<div class="row page-titles">
    <div class="col-md-5 col-8 align-self-center">
        <h3 class="text-themecolor">Manajemen Role</h3>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
            <li class="breadcrumb-item active">Roles</li>
        </ol>
    </div>
</div>

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
                                <h3 class="card-title">Tambah Role</h3>
                                 @if (session('error'))
                                  <div class="alert alert-danger alert-dismissible">
                                      {!! session('error') !!}
                                  </div>
                                  @endif
                                  <form role="form" action="{{ route('role.store') }}" method="POST">
                                  @csrf
                                  <div class="form-group">
                                      <label for="name">Role</label>
                                      <input type="text" name="name" class="form-control {{ $errors->has('name') ? 'is-invalid':'' }}" id="name" required>
                                  </div>
                                  <div class="card-footer">
                                      <button class="btn btn-primary">Simpan</button>
                                  </div>
                              </form>


                            </div>
                        </div>
              
                      </div>
                      <div class="col-md-8">
                        <div class="card">
                            <div class="card-body">
                                <h3 class="card-title">List Role</h3>
                                @if (session('success'))
                                  <div class="alert alert-success alert-dismissible">
                                      {!! session('success') !!}
                                  </div>
                                @endif
                                <div class="table-responsive">
                                  <table class="table table-hover">
                                      <thead>
                                          <tr>
                                              <td>#</td>
                                              <td>Role</td>
                                              <td>Guard</td>
                                              <td>Created At</td>
                                              <td>Aksi</td>
                                          </tr>
                                      </thead>
                                      <tbody>
                                          @php $no = 1; @endphp
                                          @forelse ($role as $row)
                                          <tr>
                                              <td>{{ $no++ }}</td>
                                              <td>{{ $row->name }}</td>
                                              <td>{{ $row->guard_name }}</td>
                                              <td>{{ $row->created_at }}</td>
                                              <td>
                                                  <form action="{{ route('role.destroy', $row->id) }}" method="POST">
                                                      @csrf
                                                      <input type="hidden" name="_method" value="DELETE">
                                                      <button class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></button>
                                                  </form>
                                              </td>
                                          </tr>
                                          @empty
                                          <tr>
                                              <td colspan="5" class="text-center">Tidak ada data</td>
                                          </tr>
                                          @endforelse
                                      </tbody>
                                  </table>
                              </div>
                              <div class="float-right">
                                  {!! $role->links() !!}
                              </div>

                            </div>
                        </div>
                      </div>
                  </div>
              </div> 
          </section>


@endsection

@section('writen_scripts')

@endsection
