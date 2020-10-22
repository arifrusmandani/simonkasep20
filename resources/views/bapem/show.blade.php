@extends('layouts.main_admin')
@section('title',' | Kelola Bapem')
@section('breadcrumb')
<div class="row page-titles">
    <div class="col-md-5 col-8 align-self-center">
        <h3 class="text-themecolor">Kelola Bapem</h3>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
            <li class="breadcrumb-item active">Sasaran</li>
        </ol>
    </div>
</div>
@endsection

@section('content')
{{-- {{dd(Session::all())}} --}}
@if(session('message'))
  <div class="alert alert-success">
    {!! session('message') !!}
  </div>
@endif
	<span class="help-block text-danger">{{ $errors->first('file') }}</span>

 <div class="row">
                    <!-- Column -->
                    <div class="col-lg-3 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex flex-row">
                                    <div class="round round-lg align-self-center round-info"><i class="mdi mdi-google-maps"></i></div>
                                    <div class="m-l-10 align-self-center">
                                        <h3 class="m-b-0 font-light">{{$jmlkabkot}}</h3>
                                        <h5 class="text-muted m-b-0">Jumlah Kab/Kot</h5></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                    <!-- Column -->
                    <div class="col-lg-3 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex flex-row">
                                    <div class="round round-lg align-self-center round-warning"><i class="mdi mdi-target"></i></div>
                                    <div class="m-l-10 align-self-center">
                                        <h3 class="m-b-0 font-lgiht">{{$jmlcapaiansssrn}}/<strong>{{$jmlsasaran}}</strong></h3>
                                        <h5 class="text-muted m-b-0">Jumlah Sasaran</h5></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                    <!-- Column -->
                    <div class="col-lg-3 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex flex-row">
                                    <div class="round round-lg align-self-center round-primary"><i class="ti-wallet"></i></div>
                                    <div class="m-l-10 align-self-center">
                                        <h3 class="m-b-0 font-lgiht">Rp. {{number_format($jmlrupiah,2,",",".")}}</h3>
                                        <h5 class="text-muted m-b-0">Total Nilai</h5></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                    <!-- Column -->
                    <div class="col-lg-3 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex flex-row">
                                    <div class="round round-lg align-self-center round-danger"><i class="mdi mdi-cart-outline"></i></div>
                                    <div class="m-l-10 align-self-center">
                                        <h3 class="m-b-0 font-lgiht">Rp. {{number_format($jmlcapaiannilai,2,",",".")}}</h3>
                                        <h5 class="text-muted m-b-0">Total Nilai Keluar</h5></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                </div>

       <div class="card">
                            <div class="card-body">
                                {{-- <h4 class="card-title">Customtab2 Tab</h4> --}}
                                {{-- <h6 class="card-subtitle">Use default tab with class <code>customtab</code></h6> --}}
                                <!-- Nav tabs -->
                                <ul class="nav nav-tabs customtab2" role="tablist">
                                    <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#home7" role="tab"><span class="hidden-sm-up"><i class="ti-home"></i></span> <span class="hidden-xs-down">Personel LPD</span></a> </li>
                                    <li class="nav-item"> <a class="nav-link active" data-toggle="tab" href="#profile7" role="tab"><span class="hidden-sm-up"><i class="ti-user"></i></span> <span class="hidden-xs-down">Sasaran</span></a> </li>
                                    <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#messages7" role="tab"><span class="hidden-sm-up"><i class="ti-email"></i></span> <span class="hidden-xs-down">Dokumen Pemberian</span></a> </li>
                                    
                                </ul>
                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <div class="tab-pane" id="home7" role="tabpanel">
                                        
                                            <div class="table-responsive m-t-10">
                                            @php
                                            $adminuser = array('administrator','pengguna')
                                            @endphp
                                            @role($adminuser)
                                            <a href="{{ route("personel.create") }}"> <button class="btn btn-block btn-md btn-success" type="submit">
                                            <i class="fa fa-user-plus"></i>
                                            TAMBAH PERSONEL
                                            </button></a>
                                            @endrole
							                <table id="myTable2" class="table table-bordered table-striped m-t-10">
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
							                        @foreach($personel_bapem as $bapem)
							                        <tr>
							                            <td>{{$no++}}</td>
							                            <td>{{$bapem->peran}}</td>
							                            <td>{{$bapem->nama}}</td>
							                            <td>{{$bapem->nik}}</td>
							                            <td>{{$bapem->hp}}</td>
							                            <td>{{$bapem->instansi}}</td>
							                            <td>
                                                            <form action="{{ route('personel.destroy', $bapem->id) }}" method="POST">
                                                      @csrf
                                                      <input type="hidden" name="_method" value="DELETE">
							                              {{-- <a href="#" class="btn btn-primary btn-sm" data-toggle="modal"  
                                                          data-target="#detailPersonel" data-original-title="Detail"><i class="fa fa-eye"></i></a> --}}
                                                          <a href="#" value="{{ action('PersonelController@show',$bapem->id) }}" class="btn btn-xs btn-info modalMd" title="Detail" data-toggle="modal" data-target="#modalMd"><i class="fa fa-eye"></i></a>
                                                          {{-- <a href="{{route('personel.show',$bapem->id)}}" class="btn btn-show btn-primary btn-sm" title="Detail"><i class="fa fa-eye"></i></a> --}}
                                                          @php
                                                          $adminuser = array('administrator','pengguna');
                                                          @endphp
                                                          @role($adminuser)
							                              <a href="/personel/{{$bapem->id}}/edit" class="btn btn-warning btn-sm" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit"></i></a>
							                              <button class="btn btn-danger btn-sm" data-toggle="tooltip" data-original-title="Hapus"><i class="fa fa-trash"></i></button>
                                                          @endrole
                                                      </form>
							                            </td>
							                        </tr>
							                        @endforeach
							                       
							                    </tbody>
							                </table>
							            </div>
                                        
                                    </div>
                                    <div class="tab-pane active" id="profile7" role="tabpanel">
                                    	<div class="table-responsive m-t-10">
                                    	@role('administrator')
                                    		<button href="#" class="btn btn-block btn-md btn-danger" data-toggle="modal" data-target="#addSasaran">
                                            <i class="fa fa-user-plus"></i>
                                            TAMBAH SASARAN
                                        	</button>
                                        @endrole
						                <table id="myTable3" class="table table-bordered table-striped m-t-10">
						                    <thead>
						                        <tr>
						                            <th>No</th>
						                            <th>Type</th>
<!--						                            <th>Penerima Bapem</th>-->
						                            <th>Area Bapem</th>
						                            <th>Sasaran</th>
                                                    <th>Capaian</th>
						                            <th>Satuan</th>
						                            <th>Rupiah</th>
                                                    <th>Capaian</th>
						                            <th>Aksi</th>
						                        </tr>
						                    </thead>
						                    <tfoot>
						                        <tr>
						                            <th>No</th>
						                            <th>Type</th>
<!--						                            <th>Penerima Bapem</th>-->
						                            <th>Area Bapem</th>
						                            <th>Sasaran</th>
                                                    <th>Capaian</th>
						                            <th>Satuan</th>
						                            <th>Rupiah</th>
                                                    <th>Capaian</th>
						                            <th>Aksi</th>
						                        </tr>
						                    </tfoot>

						                    <tbody>
						                        <?php $no = 1;
						                        $tipebapem = "";
						                        ?>
						                        
						                        @foreach ($sasaran as $row)
												
						                        <tr>
						                            <td>{{$no++}}</td>
						                            <td>@if ($row->tipe_bapem == "Penguatan KS")
														 	Penguatan KS
														@elseif ($row->tipe_bapem == 2)
															Zonasi PKP
														@else 
															PKB
														@endif
													</td>
						                      {{--  <td>{{$row->penerima_bapem}}</td> --}}
						                            <td>{{$row->area_bapem}}</td>
						                            <td>{{$row->sasaran}}</td>
                                                    <th>{{$row->capaian}}</th>
						                            <td>{{$row->satuan}}</td>
						                            <td>{{number_format($row->rupiah_bapem,2,",",".")}}</td>
                                                    <th>{{number_format($row->capaian_nilai,2,",",".")}}</th>
						                            <td>
						                            	<form action="{{ route('sasaran.destroy', $row->ssrn_id) }}" method="POST">
                                                      @csrf
                                                      <input type="hidden" name="_method" value="DELETE">
						                              <a href="{{route ('sasaran.show',['ssrn_id'=>$row->ssrn_id])}}" class="btn btn-primary btn-sm"data-toggle="tooltip" data-original-title="Detail Sasaran"><i class="fa fa-eye"></i></a>
                                                      @role('administrator')
                                                      <a href="#" class="btn btn-warning btn-sm" data-toggle="modal" 
                                                          data-myuser="{{$row->user_id}}"
                                                          data-mytype="{{$row->tipe_bapem}}"
                                                          data-mypenerima="{{$row->penerima_bapem}}"
                                                          data-myarea="{{$row->area_bapem}}"
                                                          data-mysasaran="{{$row->sasaran}}"
                                                          data-mysatuan="{{$row->satuan}}"
                                                          data-myrupiah="{{$row->rupiah_bapem}}"
                                                          data-mysasaranid="{{$row->ssrn_id}}"
                                                          data-target="#editSasaran" data-original-title="Edit"><i class="fa fa-edit"></i></a>
                                                          
                                                          <button onclick="return confirm('Anda Yakin Ingin Menghapus?')" class="btn btn-danger btn-sm" data-toggle="tooltip" data-original-title="Hapus"><i class="fa fa-trash"></i></button>
                                                          @endrole
                                                          </form>
						                              {{-- <a href="/sasaran/{{$row->id}}/edit" class="btn btn-warning btn-sm" data-toggle="tooltip" data-original-title="Edit"><i class="fa fa-edit"></i></a> --}}
						                              {{-- <button class="btn btn-danger btn-sm" data-toggle="tooltip" data-original-title="Hapus"><i class="fa fa-trash"></i></button> --}}
						                            </td>

						                        </tr>

						                        @endforeach

						                    </tbody>
						                </table>
						            </div>
                                    </div>
                                    <div class="tab-pane" id="messages7" role="tabpanel">
                                    	<div class="table-responsive m-t-10">
                                    	@role('administrator')
	                                        <button href="#" class="btn btn-block btn-md btn-danger" data-toggle="modal" data-target="#addDokumenpem">
	                                            <i class="fa fa-user-plus"></i>
	                                            TAMBAH DOKUMEN PEMBERIAN
	                                        </button>
	                                    @endrole
							                <table id="myTable4" class="table table-bordered table-striped m-t-10">
							                    <thead>
							                        <tr>
							                            <th>No</th>
							                            <th>Nama Dokumen</th>
							                            <th>Catatan</th>
                                                        <th>File</th>
							                            <th>Aksi</th>
							                        </tr>
							                    </thead>
							                    
							                    <tbody>
							                        @php
							                          $no = 1
							                        @endphp
							                      @foreach ($dokumen_pemberian as $dok)
							                        <tr>
							                            <td>{{$no++}}</td>
							                            <td>{{$dok->nama_dokumen}}</td>
							                            <td>{{$dok->catatan}}</td>
                                                        <td>
                                                        <a href="" class="btn btn-warning btn-sm" data-toggle="modal" data-target="#lihatdok"
                                                          data-vlaporan="{{asset('files/'.$dok->file)}}">{{$dok->file}}</a>
                                                        </td>
							                            <td>
                                                        <form action="{{ route('dokpem.destroy', $dok->pem_id) }}" method="POST">
                                                      @csrf
                                                      <input type="hidden" name="_method" value="DELETE">
                                                      	  
							                              <a href="{{asset('files/'.$dok->file)}}" class="btn btn-primary btn-sm" data-toggle="tooltip" data-original-title="Download"><i class="fa fa-download"></i></a>
							                              @role('administrator')
							                              <a href="" class="btn btn-warning btn-sm" data-toggle="modal"  
							                                data-mynama="{{$dok->kode_dokumen}}" 
							                                data-mycatatan="{{$dok->catatan}}"
							                                data-mydokpemid="{{$dok->pem_id}}"
							                                data-myfilepem="{{$dok->file}}"
							                                data-target="#editDokpem" data-original-title="Edit"><i class="fa fa-edit"></i></a>
                                                          <button onclick="return confirm('Anda Yakin Ingin Menghapus Dokumen?')" class="btn btn-danger btn-sm" data-toggle="tooltip" data-original-title="Hapus"><i class="fa fa-trash"></i></button>
														  @endrole
                                                        </form>
							                            </td>
							                        </tr>
							                     @endforeach
							                    </tbody>
							                </table>
							            </div>
                                    </div>
									
                          	
                                </div>
                            </div>
                        </div>


 <!-- MODAL ADD SASARAN-->
      <div class="modal fade" id="addSasaran" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
          <div class="modal-dialog modal-md" role="document">
              <div class="modal-content">
                  <div class="modal-header">
                      <h4 class="modal-title" id="exampleModalLabel1">Tambah Sasaran</h4>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                  </div>
                  <div class="modal-body">
                    {!! Form::open(array('route'=> 'sasaran.store','class'=>'form-horizontal m-t-10')) !!}
                    @csrf
                        <div class="row">
                            
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="recipient-name" class="control-label">Type Bapem:</label>
                                    <div class="controls">
                                        <select class="form-control" name="tipe_bapem" required>
                                            <option value="" disabled selected>--type bapem--</option>
                                            <option value="Penguatan KS">Penguatan KS</option>
                                            <option value="2">Zonasi PKP</option>
                                            <option value="3">PKB</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                        <label>Area Bapem</label>
                                        <div class="controls">{!! Form::text('area_bapem',null,['class'=>'form-control','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}</div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            @role('administrator')
                            <div class="col-md-12">
                                <div class="form-group">
                                    <?php $penerima_list = App\User::where('id', '=', $list_bapem->user_id)->pluck('name', 'name')->first();?>
                                    <!-- <label for="recipient-name" class="control-label">Penerima:</label> -->
                                    {{ Form::text('penerima_bapem', $penerima_list,  ['class' => 'form-control','required data-validation-required-message'=>'Tidak Boleh Kosong', 'hidden']) }}
                                    
                                </div>
                            </div>
                            @endrole
                            @role('pengguna')
                            <input type="hidden" name="penerima_bapem" value="{{Auth::User()->name}}">
                            @endrole
                            
<!--
                            <div class="col-md-6">
                                <div class="form-group">
                                        <label>Angkatan</label>
                                        <div class="controls">{!! Form::text('angkatan',null,['class'=>'form-control','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}</div>
                                </div>
                            </div>
-->
                        </div>
<!--
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                        <label>Tanggal Mulai</label>
                                        <div class="controls">{!! Form::date('mulai_tanggal',null,['class'=>'form-control','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}</div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                        <label>Tanggal Selesai</label>
                                        <div class="controls">{!! Form::date('selesai_tanggal',null,['class'=>'form-control','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}</div>
                                </div>
                            </div>
                        </div>
-->
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="recipient-name" class="control-label">Sasaran:</label>
                                    <div class="controls">{!! Form::text('sasaran',null,['class'=>'form-control','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}</div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="recipient-name" class="control-label">Satuan:</label>
                                    <div class="controls">{!! Form::text('satuan',null,['class'=>'form-control','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}</div>
                                </div>
                            </div>
                            <div class="col-md-6">
                               <div class="form-group">
                                 <label for="rupiah" class="control-label">Rupiah:</label>
                                  <div class="input-group">
                                    <span class="input-group-addon" id="rupiah">Rp</span>
                                    {!! Form::text('rupiah_bapem',null,['class'=>'form-control','aria-describedby'=>'rupiah','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}
                                </div>
                              </div>
                            </div>
                        </div>
                        
                    
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">SIMPAN</button>
                </div>
                {!!Form::close()!!}
          </div>
      </div>
  </div>
    <!-- END MODAL ADD SASARAN -->

    <!-- MODAL ADD Dokumen Pemberrian -->
      <div class="modal fade" id="addDokumenpem" tabindex="0" role="dialog" aria-labelledby="exampleModalLabel1">
          <div class="modal-dialog modal-md" role="document">
              <div class="modal-content">
                  <div class="modal-header">
                      <h4 class="modal-title" id="exampleModalLabel1">Tambah Dokumen Pemberian</h4>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                  </div>
                  
                <div class="modal-body">
                    {!! Form::open(array('route'=> 'dokpem.store','method'=>'POST','enctype'=>'multipart/form-data','id'=>'addFormDokpem','class'=>'form-horizontal m-t-10','novalidate'=>'novalidate')) !!}
                    @csrf
                    
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                       
                            <div class="controls">
                                <?php $list_dok = App\Dokumen::where('tipe', 'Pemberian Bapem', null)->pluck('nama_dokumen', 'kode_dokumen')->all();?>
                                    <label for="recipient-name" class="control-label">Nama Dokumen:</label>
                                    <div class="controls">{!! Form::select('kode_dokumen', [''=>'Pilih dokumen'] + $list_dok, null, ['class' => 'form-control','required data-validation-required-message'=>'Tidak Boleh Kosong']) !!}</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="recipient-name" class="control-label">Catatan:</label>
                            <div class="controls">
                                {{-- <input class="form-control" type="text" name="catatan"> --}}
                                {!! Form::text('catatan',null,['class'=>'form-control','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}
                            </div>
                        </div>
                    </div>
                    </div>
                    <div class="row">
                    <div class="col-md-12">
                        <div class="form-group {{ !$errors->has('file') ?: 'has-error' }}">
                            <label for="recipient-name" class="control-label">File:</label>
                                <div class="controls">{!! Form::file('file',null,['class'=>'form-control','id'=>'file','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}</div>

                        </div>
                    </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">SIMPAN</button>
                </div>
                {!!Form::close()!!}
          </div>
      </div>
</div>
    <!-- END MODAL ADD Dokumen Pemberian -->

    <!-- START MODAL EDIT SASARAN -->
      <div class="modal fade" id="editSasaran" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
          <div class="modal-dialog modal-md" role="document">
              <div class="modal-content">
                  <div class="modal-header">
                      <h4 class="modal-title" id="exampleModalLabel1">Edit Sasaran</h4>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                  </div>
                  <div class="modal-body">
                    {!! Form::open(array('route'=> ['sasaran.update','update'], 'method'=>'PATCH','class'=>'form-horizontal m-t-10','novalidate'=>'novalidate')) !!}
                    @csrf
                        <div class="row">
                            
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="recipient-name" class="control-label">Type Bapem:</label>
                                    <div class="controls">
                                        <select class="form-control" name="tipe_bapem" id="tipe">
                                            <option disabled>-Type Bapem-</option>
                                            <option value="Penguatan KS">Penguatan KS</option>
                                            <option value="2">Zonasi PKP</option>
                                            <option value="3">PKB</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <!-- <div class="col-md-6"> -->
                                <!-- <div class="form-group"> -->
                                    <?php $penerima_list = App\User::where('id', '=', $list_bapem->user_id)->pluck('name','name')->first();?>
                                    <!-- <label for="recipient-name" class="control-label">Penerima:</label> -->
                                   {{ Form::text('penerima_bapem', $penerima_list,  ['class' => 'form-control','required data-validation-required-message'=>'Tidak Boleh Kosong', 'hidden']) }}
                                <!-- </div> -->
                            <!-- </div> -->
                            
                            <div class="col-md-12">
                                <div class="form-group">
                                        <label>Area Bapem</label>
                                        <div class="controls">{!! Form::text('area_bapem',null,['class'=>'form-control','id'=>'area','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}</div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="recipient-name" class="control-label">Sasaran:</label>
                                    <div class="controls">{!! Form::text('sasaran',null,['class'=>'form-control','id'=>'sasaranbapem', 'required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}</div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="recipient-name" class="control-label">Satuan:</label>
                                    <div class="controls">{!! Form::text('satuan',null,['class'=>'form-control','id'=>'satuanbapem', 'required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}</div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="recipient-name" class="control-label">Rupiah:</label>
                                    <div class="input-group">
                                    <span class="input-group-addon" id="rupiah">Rp</span>
                                    {!! Form::text('rupiah_bapem',null,['class'=>'form-control','id'=>'rupiahbapem','aria-describedby'=>'rupiah','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}
                                    </div>
                                </div>
                            </div>
                        </div>
                        <input type="hidden" name="sasaranid" id="idsasaran">
                    
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">SIMPAN</button>
                </div>
                {!!Form::close()!!}
          </div>
      </div>
  </div>
    <!-- END MODAL EDIT SASARAN -->

    <!-- START MODAL EDIT DOKPEM -->
      <div class="modal fade" id="editDokpem" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
          <div class="modal-dialog modal-md" role="document">
              <div class="modal-content">
                  <div class="modal-header">
                      <h4 class="modal-title" id="exampleModalLabel1">Edit Dokumen Pemberian</h4>
                      
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                  </div>
                  <div class="modal-body">
                    {!! Form::open(array('route'=> ['dokpem.update', 'update'], 'method'=>'PATCH','enctype'=>'multipart/form-data', 'class'=>'form-horizontal m-t-10','novalidate'=>'novalidate')) !!}
                    @csrf
                       
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="recipient-name" class="control-label">Nama Dokumen:</label>
                                    <div class="controls">
                                      <?php $list_dok = App\Dokumen::where('tipe', 'Pemberian Bapem', null)->pluck('nama_dokumen', 'kode_dokumen')->all();?>
                                         <div class="controls">{!! Form::select('kode_dokumen', [''=>'Pilih dokumen'] + $list_dok, null, ['class' => 'form-control','id'=>'namadok','required data-validation-required-message'=>'Tidak Boleh Kosong']) !!}</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        
                        <div class="row">
                            
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="recipient-name" class="control-label">Catatan:</label>
                                    <div class="controls">{!! Form::text('catatan',null,['class'=>'form-control','id'=>'idcatatan','required'])!!}</div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="recipient-name" class="control-label">File:</label>
                                    <div class="controls">
                                    	<input type="text" id="filepem" class="form-control" disabled>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <div class="controls">
                                    {{-- <label for="file"><i class="fa fa-upload btn btn-warning btn-md" data-toggle="tooltip" data-original-title="Upload">Choose File</i> --}}
                                    
                                        {{-- {!! Form::file('file',null,['class'=>'form-control','id'=>'idfiles','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!} --}}
                                    <label for="" class="control-label">Reupload File:</label><br>
                                    <input type="file" name="file" id="idfile" hidden="hidden">
                                    {{-- <input type="text" id="test123"> --}}
                                    {{-- <input type="text" id="custom-text" disabled> --}}
                                    <button type="button" id="custom-button" class="btn btn-warning btn-sm"> Choose File</button>
                                    <span id="custom-text">No file selected</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            
                            
                        </div>
                        <input type="hidden" name="mydokpem_id" id="iddok_id" value="">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">SIMPAN</button>
                </div>
                {!!Form::close()!!}
          </div>
      </div>
  </div>
    <!-- END MODAL EDIT DOKPEM-->
    
<!-- START MODAL VIEW DOKUMEN -->
      <div class="modal fade" id="lihatdok" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
          <div class="modal-dialog modal-lg" role="document">
              <div class="modal-content">
                  <div class="modal-header">
                      <h4 class="modal-title" id="exampleModalLabel1">Lihat Dokumen Pemberian</h4>

                      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                  </div>
                  <div class="modal-body">
                        
                        <div class="row">

                            <div class="col-md-12">
                                <div class="form-group">
                                    <embed src="" id="viewdok" class="m-t-30" type="application/pdf" width="100%" height="600px">
                                </div>
                            </div>
                            
                        </div>

                </div>
                
                
          </div>
      </div>
  </div>
    <!-- END MODAL VIEW DOKUMEN -->

  <!-- MODAL DETAIL -->
      <div class="modal fade" id="detailPersonel" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
          <div class="modal-dialog modal-md" role="document">
              <div class="modal-content">
                  <div class="modal-header">
                      <h4 class="modal-title" id="exampleModalLabel1">Detail Personel</h4>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                  </div>
                  <div class="modal-body">
                      <div class="row">
                    <!-- Column -->
                    <div class="col-lg-12 col-xlg-12 col-md-12">
                        <div class="card">
                            <div class="card-body">
                                <center class="m-t-6"> <img src="../assets/images/users/upi-foto.png" class="img-circle" width="150" />
                                    <h4 class="card-title m-t-10"><strong><p></p></strong> - <small id="jabatan"></small></h4>
                                    
                                    <h4 class="card-title m-t-8">peran</h4>
                                    <h6 class="card-subtitle"><strong>NIP.</strong> ksksd</h6>
                                </center>
                            </div>
                            <div>
                                <hr> </div>
                            <div class="card-body">
                            <div class="row">
                            <div class="col-md-7">
                              <small class="text-muted">NIK</small>
                                <h6>320412345678123456</h6> 
                            <small class="text-muted p-t-6 db">E-mail</small>
                                <h6>email1@gmail.com</h6>
                            <small class="text-muted p-t-6 db">No. HP</small>
                                <h6>0811240312121</h6> 
                                <small class="text-muted p-t-6 db">Instansi</small>
                                <h6>Universitas Pendidikan Indonesia</h6> 
                            </div>
                            <div class="col-md-5">
                                <small class="text-muted p-t-6 db">Alamat</small>
                                <h6>Jl. Setiabudi</h6>
                                <small class="text-muted p-t-6 db">Provinsi</small>
                                <h6>Jawa Barat</h6>
                                <small class="text-muted p-t-6 db">Kabupaten/Kota</small>
                                <h6>Kota Bandung</h6>
                                <small class="text-muted p-t-6 db">Kecamatan</small>
                                <h6>Setiabudi</h6>
                            </div>
                                
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


</div>



@endsection

@section('writen_scripts')
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.14.0/jquery.validate.min.js"></script>
    <!-- This is data table -->
<script src="{{asset('assets/plugins/datatables/jquery.dataTables.min.js')}}"></script>
<!-- start - This is for export functionality only -->
<script src="{{asset('assets/plugins/datatables/dataTables.buttons.min.js')}}"></script>
<script src="{{asset('assets/plugins/datatables/buttons.flash.min.js')}}"></script>
<script src="{{asset('assets/plugins/datatables/2.5.0/jszip.min.js')}}"></script>
<script src="{{asset('assets/plugins/datatables/pdfmake.min.js')}}"></script>
<script src="{{asset('assets/plugins/datatables/vfs_fonts.js')}}"></script>
<script src="{{asset('assets/plugins/datatables/buttons.html5.min.js')}}"></script>
<script src="{{asset('assets/plugins/datatables/buttons.print.min.js')}}"></script>
<!-- end - This is for export functionality only -->
    <script type="text/javascript">
    // TES MODAL
    $(document).on('ajaxComplete ready', function () {
    	console.log()
    $('.modalMd').off('click').on('click', function () {
        $('#modalMdKonten').load($(this).attr('value'));
        $('#modalMdTitle').html($(this).attr('title'));
        console.log()
    });
});
    

//validasi modal form
$(function() {

  $("#addFormDokpem").validate({
    rules: {
      catatan: {
        required: true,
      },
      file: "required"
    },
    messages: {
      catatan: {
        required: "Please enter some data",
      },
      file: "Please select a file"
    }
  });
});
//end validasi

    const realFileBtn = document.getElementById("idfile");
    const customBtn = document.getElementById("custom-button");
    const customTxt = document.getElementById("custom-text");

    customBtn.addEventListener("click", function() {
      realFileBtn.click();
    });

    realFileBtn.addEventListener("change", function() {
      if (realFileBtn.value) {
        customTxt.innerHTML = realFileBtn.value.match(
          /[\/\\]([\w\d\s\.\-\(\)]+)$/
        )[1];
      } else {
        customTxt.innerHTML = "No file selected";
      }
    });


    $('#editDokpem').on('show.bs.modal', function (event) {

      var button = $(event.relatedTarget) // Button that triggered the modal
      var namadokumen = button.data('mynama') 
      var catatan = button.data('mycatatan') 
      var mydokpem_id = button.data('mydokpemid')
      var myfilepem = button.data('myfilepem')
     
      var modal = $(this)
      modal.find('.modal-body #namadok').val(namadokumen);
      modal.find('.modal-body #idcatatan').val(catatan);
      modal.find('.modal-body #iddok_id').val(mydokpem_id);
      modal.find('.modal-body #filepem').val(myfilepem);
    });


    $('#editSasaran').on('show.bs.modal', function (event) {

      var button = $(event.relatedTarget) // Button that triggered the modal
      var userlist = button.data('myuser') 
      var tipebapem = button.data('mytype') 
      var penerimabapem = button.data('mypenerima') 
      var areabapem = button.data('myarea') 
      var sasaranbapem = button.data('mysasaran') 
      var satuanbapem = button.data('mysatuan') 
      var rupiahbapem = button.data('myrupiah') 
      var sasaranid = button.data('mysasaranid') 
       
     
      var modal = $(this)
      modal.find('.modal-body #userid').val(userlist);
      modal.find('.modal-body #tipe').val(tipebapem);
      modal.find('.modal-body #penerima').val(penerimabapem);
      modal.find('.modal-body #area').val(areabapem);
      modal.find('.modal-body #sasaranbapem').val(sasaranbapem);
      modal.find('.modal-body #satuanbapem').val(satuanbapem);
      modal.find('.modal-body #rupiahbapem').val(rupiahbapem);
      modal.find('.modal-body #idsasaran').val(sasaranid);
      
    });

 //VIEW DOKUMEN
    $('#lihatdok').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget)
        var doklaporan = button.data('vlaporan')


        var modal = $(this)
        modal.find('.modal-body #viewdok').attr('src',doklaporan);

    });
    $(document).ready(function() {
        $('#myTable2').DataTable();
        $(document).ready(function() {
            var table = $('#example').DataTable({
                "columnDefs": [{
                    "visible": false,
                    "targets": 2
                }],
                "order": [
                    [2, 'asc']
                ],
                "displayLength": 25,
                "drawCallback": function(settings) {
                    var api = this.api();
                    var rows = api.rows({
                        page: 'current'
                    }).nodes();
                    var last = null;
                    api.column(2, {
                        page: 'current'
                    }).data().each(function(group, i) {
                        if (last !== group) {
                            $(rows).eq(i).before('<tr class="group"><td colspan="5">' + group + '</td></tr>');
                            last = group;
                        }
                    });
                }
            });
            // Order by the grouping
            $('#example tbody').on('click', 'tr.group', function() {
                var currentOrder = table.order()[0];
                if (currentOrder[0] === 2 && currentOrder[1] === 'asc') {
                    table.order([2, 'desc']).draw();
                } else {
                    table.order([2, 'asc']).draw();
                }
            });
        });
    });

    $(document).ready(function() {
        $('#myTable3').DataTable();
        $(document).ready(function() {
            var table = $('#example').DataTable({
                "columnDefs": [{
                    "visible": false,
                    "targets": 2
                }],
                "order": [
                    [2, 'asc']
                ],
                "displayLength": 25,
                "drawCallback": function(settings) {
                    var api = this.api();
                    var rows = api.rows({
                        page: 'current'
                    }).nodes();
                    var last = null;
                    api.column(2, {
                        page: 'current'
                    }).data().each(function(group, i) {
                        if (last !== group) {
                            $(rows).eq(i).before('<tr class="group"><td colspan="5">' + group + '</td></tr>');
                            last = group;
                        }
                    });
                }
            });
            // Order by the grouping
            $('#example tbody').on('click', 'tr.group', function() {
                var currentOrder = table.order()[0];
                if (currentOrder[0] === 2 && currentOrder[1] === 'asc') {
                    table.order([2, 'desc']).draw();
                } else {
                    table.order([2, 'asc']).draw();
                }
            });
        });
    });

    $(document).ready(function() {
        $('#myTable4').DataTable();
        $(document).ready(function() {
            var table = $('#example').DataTable({
                "columnDefs": [{
                    "visible": false,
                    "targets": 2
                }],
                "order": [
                    [2, 'asc']
                ],
                "displayLength": 25,
                "drawCallback": function(settings) {
                    var api = this.api();
                    var rows = api.rows({
                        page: 'current'
                    }).nodes();
                    var last = null;
                    api.column(2, {
                        page: 'current'
                    }).data().each(function(group, i) {
                        if (last !== group) {
                            $(rows).eq(i).before('<tr class="group"><td colspan="5">' + group + '</td></tr>');
                            last = group;
                        }
                    });
                }
            });
            // Order by the grouping
            $('#example tbody').on('click', 'tr.group', function() {
                var currentOrder = table.order()[0];
                if (currentOrder[0] === 2 && currentOrder[1] === 'asc') {
                    table.order([2, 'desc']).draw();
                } else {
                    table.order([2, 'asc']).draw();
                }
            });
        });
    });



    $('#example23').DataTable({
        dom: 'Bfrtip',
        buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ]
    });
</script>
@endsection
