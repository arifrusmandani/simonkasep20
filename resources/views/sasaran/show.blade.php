@extends('layouts.main_admin')
@section('title',' | Sasaran Angkatan')
@section('stylesheets')

<link href="{{asset('assets/plugins/x-editable/dist/bootstrap3-editable/css/bootstrap-editable.css')}}" rel="stylesheet">
@endsection
@section('breadcrumb')
<div class="row page-titles">
    <div class="col-md-5 col-8 align-self-center">
        <h3 class="text-themecolor">Sasaran Per Angkatan</h3>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
            <li class="breadcrumb-item"><a href="/bapem/{{ Session::get('bpm_id')}}">Sasaran</a></li>
            <li class="breadcrumb-item active">Angkatan</li>
        </ol>
    </div>
</div>
@endsection
@section('content')
<div class="card">
          <div class="card-header">
            <div class="ribbon ribbon-bookmark ribbon-default">Pertanggung Jawaban</div>
          </div>
            
            <div class="card-body m-t-20"> 
             <div class="table-responsive">
                                    <table class="table color-bordered-table red-bordered-table">
                                        <thead>
                                            <tr>
                                                <th>Type Banpem</th>
                                                <th>Area Banpem</th>
                                                <th>Jumlah Sasaran</th>
                                                <th>Capaian Sasaran</th>
                                                <th>Jumlah Nilai</th>
                                                <th>Capaian Nilai</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>{{$sasaran->tipe_bapem}}</td>
                                                <td>{{$sasaran->area_bapem}}</td>
                                                <td>{{$sasaran->sasaran}} {{$sasaran->satuan}}</td>
                                                <td>{{$sum_angkatan}} {{$sasaran->satuan}}</td>
                                                <td>Rp. {{number_format($sasaran->rupiah_bapem,2,",",".")}}</td>
                                                <td>Rp. {{number_format($sum_nilai,2,",",".")}}</td>
                                            </tr>
                                            
                                        </tbody>
                                    </table>
                                </div>
            </div>
</div>
        
<div class="card">
        <div class="card-body">
           @php
           $adminuser = array('administrator','pengguna')
           @endphp
           @role($adminuser)
            <h3 class="card-title">Angkatan per Sasaran</h3>
           @endrole
            {{-- <h6 class="card-subtitle">Data table example</h6> --}}
            <div class="table-responsive m-t-10">
                <table id="myTable2" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Kab/Kot</th>
                            <th>Angkatan</th>
                            <th>Tgl Pelaksanaan</th>
                            <th>Target</th>
                            <th>Capaian</th>
                            <th>Nilai</th>
                            <th>Tempat Pelaksanaan</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>

                    <tbody>
                        <?php $no = 1;?>
                        @foreach($angkatan as $akt)
                        <tr>
                            <td>{{$no++}}</td>
                            <td>{{$sasaran->area_bapem}}</td>
                            <td>{{$akt->angkatan}}</td>
                            <td>{{$akt->tgl_mulai}} s/d {{$akt->tgl_selesai}}</td>
                            <td>{{$akt->target_sasaran}}</td>
                            <td>{{$akt->capaian_sasaran}}</td>
                            <td>{{number_format($akt->nilai,2,",",".")}}</td>
                            <td>{{$akt->tuk}}, {{$akt->tuk_alamat}}</td>
                            <td>
                                <form action="{{ route('angkatan.destroy', $akt->id) }}" method="POST">
                                    @csrf
                                    <input type="hidden" name="_method" value="DELETE">
						            <a href="{{route ('angkatan.show',$akt->id)}}" class="btn btn-primary btn-sm"data-toggle="tooltip" data-original-title="Detail"><i class="fa fa-eye"></i></a>
                                   @php
                                    $adminuser = array('administrator','pengguna')
                                    @endphp
                                   @role($adminuser)
                                    <a href="" class="btn btn-warning btn-sm m-t-5" data-toggle="modal"
                                      data-myaktid="{{$akt->id}}"
                                      data-myakt="{{$akt->angkatan}}"
                                       data-mytglmulai="{{$akt->tgl_mulai}}"
                                       data-mytglselesai="{{$akt->tgl_selesai}}"
                                       data-mytarget="{{$akt->target_sasaran}}"
                                       data-mycapaian="{{$akt->capaian_sasaran}}"
                                       data-mynilai="{{$akt->nilai}}"
                                       data-mytuk="{{$akt->tuk}}"
                                       data-myalamat="{{$akt->tuk_alamat}}"
                                       data-target="#editAngkatan" data-original-title="Edit"
                                       ><i class="fa fa-edit"></i></a>
                                    
                                    
                                    <button onclick="return confirm('Anda Yakin Ingin Menghapus ?')" class="btn btn-danger btn-sm m-t-5" data-toggle="tooltip" data-original-title="Hapus"><i class="fa fa-trash"></i></button>
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
    
<!--  END CARD  -->
@php
    $adminuser = array('administrator','pengguna')
@endphp
@role($adminuser)
   <a href="#" class="right-side-toggle btn btn-warning btn-circle btn-med pull-right p-20 m-t-40 m-b-40" data-toggle="modal" data-target="#addAngkatan" data-placement="left" title="" data-original-title="Tambah User">
        <i class="fa fa-plus"></i>
    </a>
@endrole
 <!-- MODAL ADD ANGKATAN-->
      <div class="modal fade" id="addAngkatan" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
          <div class="modal-dialog modal-md" role="document">
              <div class="modal-content">
                  <div class="modal-header">
                      <h4 class="modal-title" id="exampleModalLabel1">Tambah Angkatan</h4>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                  </div>
                  <div class="modal-body">
                    {!! Form::open(array('route'=> 'angkatan.store','class'=>'form-horizontal m-t-10')) !!}
                    @csrf
                       <input type="text" name="sasaran_id" class="form-control" value="{{$sasaran->id}}" hidden>
                        <div class="row">
                            
                            <div class="col-md-12">
                                <div class="form-group">
                                        <label>Angkatan:</label>
                                        <div class="controls">{!! Form::text('angkatan',null,['class'=>'form-control','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}</div>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                        <label>Tanggal Mulai</label>
                                        <div class="controls">{!! Form::date('tgl_mulai',null,['class'=>'form-control','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}</div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                        <label>Tanggal Selesai</label>
                                        <div class="controls">{!! Form::date('tgl_selesai',null,['class'=>'form-control','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}</div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="recipient-name" class="control-label">Target:</label>
                                    <div class="controls">{!! Form::text('target_sasaran',null,['class'=>'form-control'])!!}</div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="recipient-name" class="control-label">Capaian:</label>
                                    <div class="controls">{!! Form::text('capaian_sasaran',null,['class'=>'form-control'])!!}</div>
                                </div>
                            </div>
                            <div class="col-md-6">
                               <div class="form-group">
                                 <label for="rupiah" class="control-label">Nilai:</label>
                                  <div class="input-group">
                                    <span class="input-group-addon" id="rupiah">Rp</span>
                                    {!! Form::text('nilai',null,['class'=>'form-control uang','aria-describedby'=>'rupiah'])!!}
                                </div>
                              </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="recipient-name" class="control-label">Tempat Pelaksanaan:</label>
                                    <div class="controls">{!! Form::text('tuk',null,['class'=>'form-control','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}</div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="recipient-name" class="control-label">Alamat:</label>
                                    <div class="controls">{!! Form::textarea('tuk_alamat',null,['class'=>'form-control','rows'=>'5','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}</div>
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
    <!-- END MODAL ADD ANGKATAAN -->
<!-- START MODAL EDIT ANGKATAN-->
<div class="modal fade" id="editAngkatan" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
          <div class="modal-dialog modal-md" role="document">
              <div class="modal-content">
                  <div class="modal-header">
                      <h4 class="modal-title" id="exampleModalLabel1">Edit Angkatan</h4>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                  </div>
                  <div class="modal-body">
                    {!! Form::open(array('route'=> ['angkatan.update','update'], 'method'=>'PATCH','class'=>'form-horizontal m-t-10','novalidate'=>'novalidate')) !!}
                    @csrf
                      
                        <div class="row">
                            
                            <div class="col-md-12">
                                <div class="form-group">
                                        <label>Angkatan:</label>
                                        <div class="controls">{!! Form::text('angkatan',null,['class'=>'form-control','id'=>'akt','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}</div>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                        <label>Tanggal Mulai</label>
                                        <div class="controls">{!! Form::date('tgl_mulai',null,['class'=>'form-control','id'=>'tglmulai','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}</div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                        <label>Tanggal Selesai</label>
                                        <div class="controls">{!! Form::date('tgl_selesai',null,['class'=>'form-control','id'=>'tglselesai','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}</div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="recipient-name" class="control-label">Target:</label>
                                    <div class="controls">{!! Form::text('target_sasaran',null,['class'=>'form-control','id'=>'target','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}</div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="recipient-name" class="control-label">Capaian:</label>
                                    <div class="controls">{!! Form::text('capaian_sasaran',null,['class'=>'form-control','id'=>'capaian','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}</div>
                                </div>
                            </div>
                            <div class="col-md-6">
                               <div class="form-group">
                                 <label for="rupiah" class="control-label">Nilai:</label>
                                  <div class="input-group">
                                    <span class="input-group-addon" id="rupiah">Rp</span>
                                    {!! Form::text('nilai',null,['class'=>'form-control uang','id'=>'nilaiid','aria-describedby'=>'rupiah','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}
                                </div>
                              </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="recipient-name" class="control-label">Tempat Pelaksanaan:</label>
                                    <div class="controls">{!! Form::text('tuk',null,['class'=>'form-control','id'=>'tmpt','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}</div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="recipient-name" class="control-label">Alamat:</label>
                                    <div class="controls">{!! Form::textarea('tuk_alamat',null,['class'=>'form-control','id'=>'almt','rows'=>'5','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}</div>
                                </div>
                            </div>
                        </div>
                        <input type="hidden" name="angkatanid" id="id_akt" value="">
                    
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">SIMPAN</button>
                </div>
                {!!Form::close()!!}
          </div>
      </div>
  </div>
<!-- END MODAL EDIT ANGKATAN -->
 <!-- MODAL ADD -->
      <div class="modal fade" id="tambahLaporan" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
          <div class="modal-dialog modal-md" role="document">
              <div class="modal-content">
                  <div class="modal-header">
                      <h4 class="modal-title" id="exampleModalLabel1">Tambah Dokumen Laporan</h4>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                  </div>
                  <div class="modal-body">
                    {!! Form::open(array('route'=> 'laporan.store','method'=>'POST','enctype'=>'multipart/form-data','id'=>'addLaporan','class'=>'form-horizontal m-t-10','novalidate'=>'novalidate')) !!}
                    @csrf
                        
                        <input type="text" name="sasaran_id" class="form-control" value="{{$sasaran->id}}" hidden>
                                    
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="recipient-name" class="control-label">Nama Dokumen:</label>
                                    <div class="controls">
                                      <?php $list_dok = App\Dokumen::where('tipe', 'Laporan Bapem', null)->pluck('nama_dokumen', 'kode_dokumen')->all();?>
                                         <div class="controls">{!! Form::select('kode_dokumen', [''=>'Pilih dokumen'] + $list_dok, null, ['class' => 'form-control','required data-validation-required-message'=>'Tidak Boleh Kosong']) !!}</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="recipient-name" class="control-label">Volume:</label>
                                    <div class="controls">{!! Form::text('volume',null,['class'=>'form-control','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}</div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="recipient-name" class="control-label">Satuan:</label>
                                    <div class="controls">{!! Form::text('satuan',null,['class'=>'form-control','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}</div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row">
                            
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="recipient-name" class="control-label">Catatan:</label>
                                    <div class="controls">{!! Form::text('catatan',null,['class'=>'form-control'])!!}</div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            
                            <div class="col-md-12">
                                <div class="form-group">
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
    <!-- END MODAL ADD -->
<!-- START MODAL EDIT -->
      <div class="modal fade" id="editLaporan" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
          <div class="modal-dialog modal-md" role="document">
              <div class="modal-content">
                  <div class="modal-header">
                      <h4 class="modal-title" id="exampleModalLabel1">Edit Dokumen Laporan</h4>
                      
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                  </div>
                  <div class="modal-body">
                    {!! Form::open(array('route'=> ['laporan.update', 'update'], 'method'=>'PATCH','enctype'=>'multipart/form-data', 'class'=>'form-horizontal m-t-10','novalidate'=>'novalidate')) !!}
                    @csrf
                       
                        <input type="text" name="sasaran_id" class="form-control" value="{{$sasaran->id}}" hidden>
                                    
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="recipient-name" class="control-label">Nama Dokumen:</label>
                                    <div class="controls">
                                      <?php $list_dok = App\Dokumen::where('tipe', 'Laporan Bapem', null)->pluck('nama_dokumen', 'kode_dokumen')->all();?>
                                         <div class="controls">{!! Form::select('kode_dokumen', [''=>'Pilih dokumen'] + $list_dok, null, ['class' => 'form-control','id'=>'namalap','required data-validation-required-message'=>'Tidak Boleh Kosong']) !!}</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row">
                            
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="recipient-name" class="control-label">Volume:</label>
                                    <div class="controls">{!! Form::text('volume',null,['class'=>'form-control','id'=>'idvolume','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}</div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="recipient-name" class="control-label">Satuan:</label>
                                    <div class="controls">{!! Form::text('satuan',null,['class'=>'form-control','id'=>'idsatuan','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}</div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row">
                            
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="recipient-name" class="control-label">Catatan:</label>
                                    <div class="controls">{!! Form::text('catatan',null,['class'=>'form-control','id'=>'idcatatan',])!!}</div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                        <div class="col-md-6">
                                <div class="form-group">
                                    <label for="recipient-name" class="control-label">File:</label>
                                    <div class="controls">
                                        <input type="text" id="filelap" class="form-control" disabled>
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
                        <input type="hidden" name="mylaporan_id" id="idlap_id" value="">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">SIMPAN</button>
                </div>
                {!!Form::close()!!}
          </div>
      </div>
  </div>
    <!-- END MODAL EDIT -->
    <!-- START MODAL VERIFIKASI -->
      <div class="modal fade" id="verifikasi" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
          <div class="modal-dialog modal-full" role="document">
              <div class="modal-content">
                  <div class="modal-header">
                      <h4 class="modal-title" id="exampleModalLabel1">Verifikasi Dokumen Laporan</h4>

                      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                  </div>
                  <div class="modal-body">
                        {!! Form::open(array('route'=> ['laporan.verifikasi', 'verifikasi'], 'method'=>'POST', 'class'=>'form-horizontal m-t-10','novalidate'=>'novalidate')) !!}
                        @csrf
                        <div class="row">

                            <div class="col-md-8">
                                <div class="form-group">
                                    <div class="ribbon ribbon-left ribbon-default m-t-min-20">Dokumen</div>
                                    <embed src="" id="verlaporan" class="m-t-30" type="application/pdf" width="100%" height="600px">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
<!--                                    <label for="recipient-name" class="control-label">Deatil :</label>-->

                                    <div class="ribbon ribbon-right ribbon-default m-t-min-20">Detail</div>

                                    <div class="form-group m-t-30">
                                       <table class="table table-bordered table-striped">
                                           <tr>
                                               <th>Nama Dokumen</th>
                                               <th>Volume</th>
                                           </tr>
                                           <tr>
                                               <td id="vnmdok"></td>
                                               <td id="volsat"></td>
                                           </tr>
                                       </table>
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="recipient-name" class="control-label">Status :</label>
                                            <div class="controls">
                                                <select class="form-control" name="status" id="vstatus">
                                                    <option value="Valid">Valid</option>
                                                    <option value="Tidak Valid">Tidak Valid</option>
                                                    <option value="Belum Dicek">Belum Dicek</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="recipient-name" class="control-label">Catatan :</label>
                                            <div class="controls">{!! Form::textarea('catatan',null,['class'=>'form-control','id'=>'vketerangan','rows'=>'5'])!!}</div>
                                        </div>
                                    </div>
                                </div>
                                <input type="hidden" name="vlaporanid" id="vlap_id" value="">
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
    <!-- END MODAL VERIFIKASI -->

    


@endsection

@section('writen_scripts')

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.14.0/jquery.validate.min.js"></script>
<script type="text/javascript" src="{{asset('assets/plugins/x-editable/dist/bootstrap3-editable/js/bootstrap-editable.js')}}"></script>
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
<script type="text/javascript">
//FORMAT UANG
   $(document).ready(function(){
    $( '.uang' ).mask('00.000.000.000', {reverse: true});
})
//datatable
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
    
//xeditable
    $(function(){
        $('.inline-status').editable({
            prepend: "not selected",
            mode: 'inline',
            source: [{
                value: 'Valid',
                text: 'Valid'
            }, {
                value: 'Tidak Valid',
                text: 'Tidak Valid'
            },{
                value: 'Belum Dicek',
                text: 'Belum Dicek'
            }],
            display: function(value, sourceData) {
                var colors = {
                        "": "#98a6ad",
                        "Valid": "#009efb",
                        "Tidak Valid": "#fb3a3a",
                        "Belum Dicek":"#98a6ad"
                    },
                    elem = $.grep(sourceData, function(o) {
                        return o.value == value;
                    });

                if (elem.length) {
                    $(this).text(elem[0].text).css("color", colors[value]);
                } else {
                    $(this).empty();
                }
            }
        });
    });

// status change
    $(".selectstatus").change(function(){
     var status = $(this).val();
     var getid = $(this).attr("status-id");
        $.ajax({
            type:'PATCH',
            url:'../laporan/'+getid,
            data:{status:status, _method: "PATCH"},
            success:function(data){
                alert(data.success);
            }
        });
    });
// custom button input file
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
        customTxt.innerHTML = "";
      }
    });

// modal validasi form
$(function() {
  $("#addLaporan").validate({
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

//validasi change
$('form input[type=text]').on('change invalid', function() {
    var textfield = $(this).get(0);
    
    // hapus dulu pesan yang sudah ada
    textfield.setCustomValidity('');
    
    if (!textfield.validity.valid) {
      textfield.setCustomValidity('Tidak boleh kosong!');  
    }
});
//VERIFIKASI LAPORAN
    $('#verifikasi').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget)
        var doklaporan = button.data('vlaporan')
        var keterangan = button.data('keterangan')
        var status = button.data('status')
        var vnamadok = button.data('vnamadok')
        var volumesat = button.data('volumesat')
        var vlaporanid = button.data('vlaporanid')

        var modal = $(this)
        modal.find('.modal-body #verlaporan').attr('src',doklaporan);
        modal.find('.modal-body #vketerangan').val(keterangan);
        modal.find('.modal-body #vstatus').val(status);
        modal.find('.modal-body #vnmdok').html(vnamadok);
        modal.find('.modal-body #volsat').html(volumesat);
        modal.find('.modal-body #vlap_id').val(vlaporanid);
    });
//EDIT LAPORAN
    $('#editAngkatan').on('show.bs.modal', function (event) {

      var button = $(event.relatedTarget) // Button that triggered the modal
      var angkatan = button.data('myakt') 
      var tgl_mulai = button.data('mytglmulai') 
      var tgl_selesai = button.data('mytglselesai') 
      var target = button.data('mytarget') 
      var capaian = button.data('mycapaian') 
      var nilai = button.data('mynilai') 
      var tuk = button.data('mytuk') 
      var alamat = button.data('myalamat') 
      var angkatanid = button.data('myaktid') 
     
      var modal = $(this)
      modal.find('.modal-body #akt').val(angkatan);
      modal.find('.modal-body #tglmulai').val(tgl_mulai);
      modal.find('.modal-body #tglselesai').val(tgl_selesai);
      modal.find('.modal-body #target').val(target);
      modal.find('.modal-body #capaian').val(capaian);
      modal.find('.modal-body #nilaiid').val(nilai);
      modal.find('.modal-body #tmpt').val(tuk);
      modal.find('.modal-body #almt').val(alamat);
      modal.find('.modal-body #id_akt').val(angkatanid);
    })
</script>
@endsection
