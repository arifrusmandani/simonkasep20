@extends('layouts.main_admin')
@section('title',' | Data Users')
@section('breadcrumb')
<div class="row page-titles">
    <div class="col-md-5 col-8 align-self-center">
        <h3 class="text-themecolor">Daftar User</h3>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
            <li class="breadcrumb-item active">Users</li>
        </ol>
    </div>
</div>
@endsection
@section('content')


<section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">

                    <div class="card">
                      <div class="card-body">
                          <h3 class="card-title">Kelola Data User
                          <input type="radio" class="custom-control-input">
                          </h3>
                          @if (session('success'))
                                @alert(['type' => 'success'])
                                    {!! session('success') !!}
                                @endalert
                            @endif

                          {{-- <h6 class="card-subtitle">Data table example</h6> --}}
                          <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <td>#</td>
                                            <td>Nama</td>
                                            <td>Email</td>
                                            <td>Role</td>
                                            <td>Aksi</td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @php $no = 1; @endphp
                                        @forelse ($users as $row)
                                        <tr>
                                            <td>{{ $no++ }}</td>
                                            <td>{{ $row->name }}</td>
                                            <td>{{ $row->email }}</td>
                                            <td>
                                                @foreach ($row->getRoleNames() as $role)
                                                <label for="" class="badge badge-info">{{ $role }}</label>
                                                @endforeach
                                            </td>
                                          <!--   <td>
                                                @if ($row->status)
                                                <label class="badge badge-success">Aktif</label>
                                                @else
                                                <label for="" class="badge badge-success">Suspend</label>
                                                @endif
                                            </td> -->
                                            <td>
                                                <form action="{{ route('users.destroy', $row->id) }}" method="POST">
                                                    @csrf
                                                    <input type="hidden" name="_method" value="DELETE">
                                                    <a href="{{route('users.show',$row->id)}}" class="btn btn-primary btn-sm" data-toggle="tooltip" data-original-title="Detail"><i class="fa fa-eye"></i></a>
                                                    <a href="{{ route('users.roles', $row->id) }}" class="btn btn-dark btn-sm"><i class="fa fa-user-secret"></i></a>
                                                    <a href="{{ route('users.edit', $row->id) }}" class="btn btn-warning btn-sm"><i class="fa fa-edit"></i></a>
                                                    <button class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></button>
                                                </form>
                                            </td>
                                        </tr>
                                        @empty
                                        <tr>
                                            <td colspan="4" class="text-center">Tidak ada data</td>
                                        </tr>
                                        @endforelse
                                    </tbody>
                                </table>
                            </div>

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
