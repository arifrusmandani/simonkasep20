@extends('layouts.main_admin')
@section('title',' | Data Personel')
@section('content')

  <div class="card">
        <div class="card-body">
            <h3 class="card-title">Pengelola Personel Bapem</h3>
            {{-- <h6 class="card-subtitle">Data table example</h6> --}}
            <div class="table-responsive m-t-10">
                <table id="myTable2" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Peran</th>
                            <th>Nama</th>
                            <th>NIK</th>
                            <th>HP</th>
                            <th>Instansi</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>No</th>
                            <th>Peran</th>
                            <th>Nama</th>
                            <th>NIK</th>
                            <th>HP</th>
                            <th>Instansi</th>
                            <th>Aksi</th>
                        </tr>
                    </tfoot>

                    <tbody>
                        @php
                          $no = 1
                        @endphp
                        @foreach($data_pengelola_bapem as $pengelola_bapem)
                        <tr>
                            <td>{{$no++}}</td>
                            <td>{{$pengelola_bapem->peran}}</td>
                            <td>{{$pengelola_bapem->nama}}</td>
                            <td>{{$pengelola_bapem->nik}}</td>
                            <td>{{$pengelola_bapem->hp}}</td>
                            <td>{{$pengelola_bapem->instansi}}</td>
                            <td>
                              <form action="{{ route('personel.destroy', $pengelola_bapem->id) }}" method="POST">
                             @csrf
                              <a href="#" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#detailPersonel" data-original-title="Detail"><i class="fa fa-eye"></i></a>
                              <a href="#" class="btn btn-warning btn-sm" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit"></i></a>
                              <button class="btn btn-danger btn-sm" data-toggle="tooltip" data-original-title="Hapus"><i class="fa fa-trash"></i></button>
                            </form>
                            </td>
                        </tr>
                        @endforeach
                       
                    </tbody>
                </table>
            </div>
        </div>
    </div>



    <a href="{{ route("personel.create") }}" class="right-side-toggle btn btn-warning btn-circle btn-med pull-right p-20 m-t-40 m-b-40" data-toggle="tooltip" data-placement="left" title="" data-original-title="Tambah Personel">
        <i class="fa fa-plus"></i>
    </a>

    <!-- MODAL DETAIL -->
      <div class="modal fade" id="detailPersonel" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
          <div class="modal-dialog modal-md" role="document">
              <div class="modal-content">
                  <div class="modal-header">
                      <h4 class="modal-title" id="exampleModalLabel1">Detail User</h4>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                  </div>
                  <div class="modal-body">
                      <div class="row">
                    <!-- Column -->
                    <div class="col-lg-12 col-xlg-12 col-md-12">
                        <div class="card">
                            <div class="card-body">
                                <center class="m-t-6"> <img src="../assets/images/users/upi-foto.png" class="img-circle" width="150" />
                                    <h4 class="card-title m-t-10">Universitas Pendidikan Indonesia</h4>
                                    <h6 class="card-subtitle">admin@upi.edu</h6>
                                </center>
                            </div>
                            <div>
                                <hr> </div>
                            <div class="card-body">
                            <div class="row">
                            <div class="col-md-8">
                              <small class="text-muted">Instansi</small>
                                <h6>Universitas Pendidikan Indonesia</h6> 
                            <small class="text-muted p-t-6 db">Alamat</small>
                                <h6>Jl. Setiabudi no.35 Bandung Jawa Barat</h6> 
                            <small class="text-muted p-t-6 db">Provinsi</small>
                                <h6>Jawa Barat</h6>
                            </div>
                            <div class="col-md-4">
                              <small class="text-muted p-t-6 db">Kabupaten/Kota</small>
                                <h6>Jawa Barat</h6>
                                <small class="text-muted p-t-6 db">Kecamatan</small>
                                <h6>Setiabudi</h6>
                                <small class="text-muted p-t-6 db">NPWP</small>
                                <h6>123.123.1121</h6>
                            </div>
                                
                            </div>
                            </div>
                        </div>
                    </div>
                  </div>
                  
              </div>
          </div>
      </div>
    <!-- END MODAL DETAIL -->

@endsection

@section('writen_scripts')

@endsection
