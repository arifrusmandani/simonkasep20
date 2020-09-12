@extends('layouts.main_admin')
@section('title',' | Detail Users')
@section('content')

@if(session('message'))
<div class="alert alert-success">
  {{session('message')}}
</div>
@endif

<div class="row">
                    <!-- Column -->
                    <div class="col-lg-4 col-xlg-3 col-md-5">
                        <div class="card">
                            <div class="card-body">
                                <center class="m-t-10"> <img src="{{asset('avatar/'.$user->foto)}}" class="img-circle" width="150" />
                                    <h4 class="card-title m-t-10">{{$user->name}}</h4>
                                    <h6 class="card-subtitle">{{$user->email}}</h6>
                                    
                                </center>
                            </div>
                            <div>
                                <hr> 
                           </div>
                            <div class="card-body"> 
                            	<small class="text-muted">Instansi</small>
                                <h6>{{$user->instansi}}</h6> 
                            	<small class="text-muted p-t-6 db">Alamat</small>
                            	<h6>{{$user->alamat}}</h6> 
                            	<small class="text-muted p-t-6 db">Provinsi</small>
                                <h6>{{$user->provinsi}}</h6>
                                <small class="text-muted p-t-6 db">Kabupaten/Kota</small>
                                <h6>{{$user->kabkot}}</h6>
                                <small class="text-muted p-t-6 db">Kecamatan</small>
                                <h6>{{$user->kecamatan}}</h6>
                                <small class="text-muted p-t-6 db">NPWP</small>
                                <h6>{{$user->npwp}}</h6>
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                    <!-- Column -->
                    <div class="col-lg-8 col-xlg-9 col-md-7">
                        <div class="card">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs profile-tab" role="tablist">
<!--
                                <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#listBapem" role="tab">List Bapem</a> </li>
                                <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#pengelolaBapem" role="tab">Pengelola Bapem</a> </li>
-->
                                <li class="nav-item"> <a class="nav-link active" data-toggle="tab" href="#settings" role="tab">Profil</a> </li>
                            </ul>
                            <!-- Tab panes -->
                            <div class="tab-content">
                                
                                <!--second tab-->
                                <div class="tab-pane" id="listBapem" role="tabpanel">
                                    <div class="card-body">
                                        <div class="row">
                                            
							            <div class="table-responsive m-t-10">
							                <table id="myTable2" class="table table-bordered table-striped">
							                    <thead>
							                        <tr>
							                            <th>No</th>
                                                        <th>Type Bapem</th>
                                                        <th>Nama Bapem</th>
                                                        <th>Tahun</th>
                                                        <th>Keterangan</th>
                                                        <th>Aksi</th>
							                        </tr>
							                    </thead>
							                    
							                    <tbody>
							                        @php
							                          $no = 1
							                        @endphp
							                      
							                       @foreach($listbapem as $bapem)
                                                        <tr>
                                                            <td>{{$no++}}</td>
                                                            <td>{{$bapem->type_bapem}}</td>
                                                            <td>{{$bapem->nama_bapem}}</td>
                                                            <td>{{$bapem->tahun}}</td>
                                                            <td>{{$bapem->keterangan}}</td>
                                                            <td>
                                                              <a href="{{route ('bapem.show',$bapem->id)}}" class="btn btn-primary btn-sm"data-toggle="tooltip" data-original-title="Detail"><i class="fa fa-eye"></i></a>
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
                                </div>
                                <div class="tab-pane" id="pengelolaBapem" role="tabpanel">
                                    <div class="card-body">
                                        <div class="row">
                                            
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
							                    
							                    <tbody>
							                        @php
							                          $no = 1
							                        @endphp
							                      
							                        <tr>
							                            <td>{{$no++}}</td>
							                            <td>Penanggung Jawab LPD</td>
							                            <td>Dr. Ujang Suprana</td>
							                            <td>320412345678123456</td>
							                            <td>0811240312121</td>
							                            <td>Universitas Pendidikan Indonesia</td>
							                            <td>
							                              <a href="#" class="btn btn-primary btn-sm"  data-toggle="tooltip" data-original-title="Detail"><i class="fa fa-eye"></i></a>
							                              <a href="#" class="btn btn-warning btn-sm" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit"></i></a>
							                              <button class="btn btn-danger btn-sm" data-toggle="tooltip" data-original-title="Hapus"><i class="fa fa-trash"></i></button>
							                            </td>
							                        </tr>
							                    </tbody>
							                </table>
							            </div>
                                        </div>
                                 
                                        
                                    </div>
                                </div>
                                <div class="tab-pane active" id="settings" role="tabpanel">
                                    <div class="card-body">
                                        <form class="form-horizontal form-material">

                                        <div class="row">
                                        	<div class="col-md-6">
                                        		<div class="form-group">
                                                <label class="col-md-12">Nama</label>
                                                <div class="col-md-12">
                                                    <input type="text" value="{{$user->name}}" class="form-control form-control-line">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="example-email" class="col-md-12">Email</label>
                                                <div class="col-md-12">
                                                    <input type="email" value="{{$user->email}}" class="form-control form-control-line" name="example-email" id="example-email" disabled="disabled">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-12">Password</label>
                                                <div class="col-md-12">
                                                    <input type="password" value="password" class="form-control form-control-line">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-12">Instansi</label>
                                                <div class="col-md-12">
                                                    <input type="text" value="{{$user->instansi}}" class="form-control form-control-line">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-12">Alamat</label>
                                                <div class="col-md-12">
                                                    <textarea rows="5" class="form-control form-control-line">{{$user->alamat}}</textarea>
                                                </div>
                                            </div>
                                        	</div>
                                        	<div class="col-md-6">
                                        		<div class="form-group">
                                                <label class="col-md-12">Provinsi</label>
                                                <div class="col-md-12">
                                                    <input type="text" value="{{$user->provinsi}}" class="form-control form-control-line">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-12">Kabupaten/Kota</label>
                                                <div class="col-md-12">
                                                    <input type="text" value="{{$user->kabkot}}" class="form-control form-control-line">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-12">Kecamatan</label>
                                                <div class="col-md-12">
                                                    <input type="text" value="{{$user->kecamatan}}" class="form-control form-control-line">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-12">NPWP</label>
                                                <div class="col-md-12">
                                                    <input type="text" value="{{$user->npwp}}" class="form-control form-control-line">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-12">Foto</label>
                                                <div class="col-md-12">
                                                    <input type="file" class="form-control form-control-line">
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
                                                <div class="col-sm-12">
                                                    <button class="btn btn-success">Update Profile</button>
                                                </div>
                                            </div>
                                        	</div>
                                        </div>

                                            
                                            
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                </div>

    <a href="" class="right-side-toggle btn btn-warning btn-circle btn-med pull-right p-20 m-t-40 m-b-40" data-toggle="tooltip" data-placement="left" title="" data-original-title="Tambah Pengelola Bapem">
        <i class="fa fa-plus"></i>
    </a>
    <!-- MODAL DETAIL -->
      <div class="modal fade" id="detailUser" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
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
