@extends('layouts.main_admin')
@section('title',' | Sasaran Pertanggung Jawaban')
@section('breadcrumb')
<div class="row page-titles">
    <div class="col-md-5 col-8 align-self-center">
        <h3 class="text-themecolor">Laporan Pertanggung Jawaban</h3>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
            <li class="breadcrumb-item"><a href="{{ route('bapem.index') }}">Bapem</a></li>
            <li class="breadcrumb-item active">Laporan</li>
        </ol>
    </div>
</div>
@endsection
@section('content')

  <div class="row">
    
    <div class="col-lg-9 col-xlg-9 col-md-9">
        <div class="card">
            <div class="card-header">
            <div class="ribbon ribbon-bookmark ribbon-primary">Dokumen Laporan Bapem</div>
            @role('pengguna')
            <button class="btn btn-sm btn-warning float-right" data-toggle="modal" data-target="#tambahLaporan">Tambah Dokumen Laporan</button>
            @endrole
          </div>
            <div class="card-body"> 
              <!-- <h3 class="card-title">Pengelola Sasaran Bapem</h3> -->
            {{-- <h6 class="card-subtitle">Data table example</h6> --}}
            <div class="table-responsive m-t-10">
                <table id="myTable2" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Nama Dokumen</th>
                            <th>Volume</th>
                            <th>Satuan</th>
                            <th>Catatan</th>
                            <th>File</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $no = 1;?>
                        @foreach ($dok_laporan as $laporan)
                        <tr>
                            <td>{{$no++}}</td>
                            <td>{{$laporan->nama_dokumen}}</td>
                            <td>{{$laporan->volume}}</td>
                            <td>{{$laporan->satuan}}</td>
                            <td>{{$laporan->catatan}}</td>
                            <td><a href="{{asset('files/'.$laporan->file)}}" target="_blank"> {{$laporan->file}}</a></td>
                            <td>
                              
                              {{ Form::open(['method'=>'DELETE','route'=>['laporan.destroy',$laporan->lap_id]])}}
                              <a href="{{asset('files/'.$laporan->file)}}" class="btn btn-primary btn-sm" data-toggle="tooltip" data-original-title="Download"><i class="fa fa-download"></i></a>
                              @role('pengguna')
                              <a class="btn btn-warning btn-sm" data-toggle="modal"  
                                data-mynama="{{$laporan->kode_dokumen}}" 
                                data-myvolume="{{$laporan->volume}}" 
                                data-mysatuan="{{$laporan->satuan}}"
                                data-mycatatan="{{$laporan->catatan}}"
                                data-myfile="{{$laporan->file}}"
                                data-laporanid="{{$laporan->lap_id}}"
                                data-target="#editLaporan" data-original-title="Edit"><i class="fa fa-edit"></i></a>
                              {{-- <button class="btn btn-danger btn-sm" data-toggle="tooltip" data-original-title="Hapus"><i class="fa fa-trash"></i></button> --}}
                              <button onclick="return confirm('Anda Yakin Ingin Menghapus Kegiatan?')" type ="submit" class="btn btn-danger btn-sm" data-toggle="tooltip" data-original-title="Hapus" {{App\Dokumen_bapem_laporan::find($laporan->lap_id) }}><i class="fa fa-trash"></i></button>
                              @endrole
                                    {{ Form::close()}}

                              
                            
                            
                            </td>
                        </tr>
                        @endforeach
                                                
                    </tbody>
                </table>
            </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-xlg-3 col-md-3">
        <div class="card">
          <div class="card-header">
            <div class="ribbon ribbon-bookmark  ribbon-default">Pertanggung Jawaban</div>
          </div>
            
            <div class="card-body m-t-20"> 
              <div class=""><label class="text-muted">Tipe Bapem: </label> <strong>{{$sasaran->tipe_bapem}}</strong></div>
                    <div class=""><label class="text-muted">Penerima Bapem: </label> <strong>{{$sasaran->penerima_bapem}}</strong></div>
                    <div class=""><label class="text-muted">Area Bapem: </label> <strong>{{$sasaran->area_bapem}}</strong></div>
                    <div class=""><label class="text-muted">Sasaran: </label> <strong>{{$sasaran->sasaran}} {{$sasaran->satuan}}</strong></div>
                    <div class=""><label class="text-muted"> Rupiah Bapem: </label> <strong>Rp. {{$sasaran->rupiah_bapem}}</strong></div>
            </div>
        </div>
    </div>


    {{-- <div class="col-lg-9 col-xlg-9 col-md-7 float-right">
        <div class="card">
            <div class="card-header">
            <div class="ribbon ribbon-bookmark ribbon-warning">Dokumen Pemberian Bapem</div>
           
          </div>
            <div class="card-body"> 
            <div class="table-responsive m-t-10">
                <table id="myTable2" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Nama Dokumen</th>
                            <th>File</th>
                            <th>Catatan</th>
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
                              <td>{{$dok->file}}</td>
                              <td>{{$dok->catatan}}</td>
                              <td>
                                <a href="#" class="btn btn-primary btn-sm" data-toggle="tooltip" data-original-title="Download"><i class="fa fa-download"></i></a>
                            
                            
                            </td>
                        </tr>
                        @endforeach
                                                
                    </tbody>
                </table>
            </div>
            </div>
        </div>
    </div> --}}

  </div>
    {{-- <a href="" class="right-side-toggle btn btn-warning btn-circle btn-med pull-right p-20 m-t-40 m-b-40" data-toggle="tooltip" data-placement="left" title="" data-original-title="Tambah User">
        <i class="fa fa-plus"></i>
    </a> --}}
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
    


@endsection

@section('writen_scripts')
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.14.0/jquery.validate.min.js"></script>
<script type="text/javascript">
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
        customTxt.innerHTML = "{{$laporan->file}}";
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

    $('#editLaporan').on('show.bs.modal', function (event) {

      var button = $(event.relatedTarget) // Button that triggered the modal
      var namadokumen = button.data('mynama') 
      var volume = button.data('myvolume') 
      var satuan = button.data('mysatuan') 
      var catatan = button.data('mycatatan') 
      var file = button.data('myfile') 
      var mylaporan_id = button.data('laporanid') 
     
      var modal = $(this)
      modal.find('.modal-body #namalap').val(namadokumen);
      modal.find('.modal-body #idvolume').val(volume);
      modal.find('.modal-body #idsatuan').val(satuan);
      modal.find('.modal-body #idcatatan').val(catatan);
      modal.find('.modal-body #filelap').val(file);
      modal.find('.modal-body #idlap_id').val(mylaporan_id);
    })
</script>
@endsection
