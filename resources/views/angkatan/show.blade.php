@extends('layouts.main_admin')
@section('title',' | Laporan Per Angkatan')
@section('stylesheets')

<link href="{{asset('assets/plugins/x-editable/dist/bootstrap3-editable/css/bootstrap-editable.css')}}" rel="stylesheet">
@endsection
@section('breadcrumb')
<div class="row page-titles">
    <div class="col-md-5 col-8 align-self-center">
        <h3 class="text-themecolor">Laporan Per Angkatan</h3>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
            <li class="breadcrumb-item"><a href="/bapem/{{ Session::get('bpm_id')}}">Sasaran</a></li>
            <li class="breadcrumb-item"><a href="/sasaran/{{ Session::get('ssrn_id')}}">Angkatan</a></li>
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
            <div class="ribbon ribbon-bookmark ribbon-primary">Dokumen Laporan</div>
            @role('pengguna')
            <button class="btn btn-sm btn-warning float-right" data-toggle="modal" data-target="#tambahLaporan">Tambah Dokumen Laporan</button>
            @endrole
          </div>
            <div class="card-body"> 
              <!-- <h3 class="card-title">Pengelola Sasaran Bapem</h3> -->
            {{-- <h6 class="card-subtitle">Data table example</h6> --}}
            <div class="table-responsive">
                <table id="myTable2" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Nama Dokumen</th>
                            <th>Volume</th>
                            <th>Satuan</th>
                            <th>Catatan</th>
                            <th>File</th>
                            <th>Status</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $no = 1;?>
                        @foreach ($dok_laporan as $laporan)
                        <tr>
                            <td>{{$no++}}</td>
                            <td>{{$laporan->nama_dokumen}} 
                                @if ($laporan->kwitansi == 1)
				                 	ATK & Komputer
				                @elseif ($laporan->kwitansi == 2)
				                	Flasdisk
                                @elseif ($laporan->kwitansi == 3)
                                    Penggandaan Laporan
                                @elseif ($laporan->kwitansi == 4)
                                    Perlengkapan Peserta
                                @elseif ($laporan->kwitansi == 5)
                                    Sertifikat
                                @elseif ($laporan->kwitansi == 6)
                                    Penggandaan Modul
                                @elseif ($laporan->kwitansi == 7)
                                    Kwitansi Lainnya
				                @else 
                                    
				                @endif
                            </td>
                            <td>{{$laporan->volume}}</td>
                            <td>{{$laporan->satuan}}</td>
                            <td>{{$laporan->catatan}}</td>
                            <td><a href="" class="btn btn-success btn-sm" data-toggle="modal" data-target="#lihatdok"
                                data-viewlaporan="{{asset('files/'.$laporan->file)}}">{{$laporan->file}}</a></td>
<!--                            <td><a href="#" class="inline-status" data-type="select" data-pk="{{$laporan->lap_id}}" data-url="/api/laporan/{{$laporan->lap_id}}/editstatus" data-value="{{$laporan->status}}" data-title="Pilih status"></a></td>  -->
                            <td>


                                <button type="button" class="btn btn-sm
                                @if ($laporan->status == 'Valid')
				            	 	btn-primary
				            	@elseif ($laporan->status == 'Tidak Valid')
				            		btn-danger
				            	@else
				            		btn-warning
				            	@endif " data-container="body" title="" data-toggle="popover" data-placement="top" data-content="{{$laporan->catatan}}" data-original-title="Catatan">
                                        {{$laporan->status}}
                            </button>
                            </td>

<!--
                            <td><select status-id="{{$laporan->lap_id}}" name="status" id="selectstatus" class="selectstatus">
                                <option value="Terkirim" @if($laporan->status == 'Terkirim') selected @endif disabled>Terkirim</option>
                                <option value="Diterima" @if($laporan->status == 'Diterima') selected @endif)>Diterima</option>
                                <option value="Ditolak" @if($laporan->status == 'Ditolak') selected @endif)>Ditolak</option>
                            </select>
                            </td>
-->

                            <td>
                              
                              {{ Form::open(['method'=>'DELETE','route'=>['laporan.destroy',$laporan->lap_id]])}}
                              <a href="{{asset('files/'.$laporan->file)}}" class="btn btn-primary btn-sm" data-toggle="tooltip" data-original-title="Download"><i class="fa fa-download"></i></a>
                              @role('keuangan')
                              <a href="" class="btn btn-warning btn-sm" data-toggle="modal" data-target="#verifikasi"
                                  data-vlaporan="{{asset('files/'.$laporan->file)}}"
                                  data-keterangan="{{$laporan->keterangan}}"
                                  data-status="{{$laporan->status}}"
                                  data-vnamadok="{{$laporan->nama_dokumen}}"
                                  data-volumesat="{{$laporan->volume}} {{$laporan->satuan}}"
                                  data-vlaporanid="{{$laporan->lap_id}}"
                                  >verifikasi</a>
                              @endrole
                              @role('pengguna')
                              @if($laporan->status == 'Tidak Valid')
                              <a href="" class="btn btn-warning btn-sm" data-toggle="modal"
                                data-mynama="{{$laporan->kode_dokumen}}" 
                                data-mykwitansi="{{$laporan->kwitansi}}"
                                data-myvolume="{{$laporan->volume}}" 
                                data-mysatuan="{{$laporan->satuan}}"
                                data-mycatatan="{{$laporan->catatan}}"
                                data-myfile="{{$laporan->file}}"
                                data-laporanid="{{$laporan->lap_id}}"
                                data-target="#editLaporan" data-original-title="Edit"><i class="fa fa-edit"></i></a>
                                @else
                                @endif
                                @endrole
                              {{-- <button class="btn btn-danger btn-sm" data-toggle="tooltip" data-original-title="Hapus"><i class="fa fa-trash"></i></button> --}}
                              @role('keuangan')
                              <button onclick="return confirm('Anda Yakin Ingin Menghapus ?')" type ="submit" class="btn btn-danger btn-sm" data-toggle="tooltip" data-original-title="Hapus" {{App\Dokumen_bapem_laporan::find($laporan->lap_id) }}><i class="fa fa-trash"></i></button>
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
            <div class="ribbon ribbon-bookmark ribbon-default">Detail</div>
          </div>
            
            
             <div class="card-body m-t-10"> 
              @foreach($detailangkatan as $detail)
              <div class=""><label class="text-muted">LPD: </label> <strong>{{$detail->penerima_bapem}}</strong></div>
              <div class=""><label class="text-muted">Area : </label> <strong>{{$detail->area_bapem}}</strong></div>
              @endforeach
              <div class=""><label class="text-muted">Angkatan: </label> <strong>{{$angkatan->angkatan}}</strong></div>
                <div class=""><label class="text-muted">Tanggal Pelaksanaan: </label> <strong>{{$angkatan->tgl_mulai}} s/d {{$angkatan->tgl_selesai}}</strong></div>
                <div class=""><label class="text-muted">Capaian Sasaran: </label> <strong>{{$angkatan->capaian_sasaran}}/{{$angkatan->target_sasaran}}</strong></div>
                <div class=""><label class="text-muted">Nilai: </label> <strong>Rp. {{number_format($angkatan->nilai)}}</strong></div>
                <div class=""><label class="text-muted"> Tempat Pelaksanaan: </label> <strong>{{$angkatan->tuk}}</strong></div>
                <div class=""><label class="text-muted"> Alamat: </label> <strong> {{$angkatan->tuk_alamat}}</strong></div>
            </div>
          
        </div>
    </div>



  </div>

 
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
                        
                        <input type="text" name="angkatan_id" class="form-control" value="{{$angkatan->id}}" hidden>
                                    
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="recipient-name" class="control-label">Nama Dokumen:</label>
                                    <div class="controls">
                                      <?php $list_dok = App\Dokumen::where('tipe', 'Laporan Bapem', null)->pluck('nama_dokumen', 'kode_dokumen')->all();?>
                                         <div class="controls">{!! Form::select('kode_dokumen', [''=>'Pilih dokumen'] + $list_dok, null, ['class' => 'form-control namadokumen','required data-validation-required-message'=>'Tidak Boleh Kosong']) !!}</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row input-kwitansi d-none">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="recipient-name" class="control-label">Kwitansi:</label>
                                      <?php $list_dok = ['1' => "ATK & Komputer",
                                                         '2' => "Flasdisk",
                                                         '3' => "Penggandaan Laporan",
                                                         '4' => "Perlengkapan Peserta",
                                                         '5' => "Sertifikat",
                                                         '6' => "Penggandaan Modul",
                                                         '7' => "Kwitansi Lainnya"
                                                        ];
                                        ?>
                                         <div class="controls">
                                         {!! Form::select('kwitansi', [''=>'Pilih Kwitansi'] + $list_dok, null, ['class' => 'form-control']) !!}
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
                       
                        <input type="text" name="sasaran_id" class="form-control" value="{{$angkatan->id}}" hidden>
                                    
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="recipient-name" class="control-label">Nama Dokumen:</label>
                                    <div class="controls">
                                      <?php $list_dok = App\Dokumen::where('tipe', 'Laporan Bapem', null)->pluck('nama_dokumen', 'kode_dokumen')->all();?>
                                         <div class="controls">{!! Form::select('kode_dokumen', [''=>'Pilih dokumen'] + $list_dok, null, ['class' => 'form-control namadokumen','id'=>'namalap','required data-validation-required-message'=>'Tidak Boleh Kosong']) !!}</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row input-kwitansi d-none">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="recipient-name" class="control-label">Kwitansi:</label>
                                      <?php $list_dok = ['1' => "ATK & Komputer",
                                                         '2' => "Flasdisk",
                                                         '3' => "Penggandaan Laporan",
                                                         '4' => "Perlengkapan Peserta",
                                                         '5' => "Sertifikat",
                                                         '6' => "Penggandaan Modul",
                                                         '7' => "Kwitansi Lainnya"
                                                        ];
                                        ?>
                                         <div class="controls">
                                         {!! Form::select('kwitansi', [''=>'Pilih Kwitansi'] + $list_dok, null, ['class' => 'form-control','id'=>'kwitansiid']) !!}
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
                                    <iframe src="" id="verlaporan" class="m-t-30" type="application/pdf" width="100%" height="600px"></iframe>
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
     <!-- START MODAL VIEW DOKUMEN -->
      <div class="modal fade" id="lihatdok" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
          <div class="modal-dialog modal-lg" role="document">
              <div class="modal-content">
                  <div class="modal-header">
                      <h4 class="modal-title" id="exampleModalLabel1">Lihat Dokumen Laporan</h4>

                      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                  </div>
                  <div class="modal-body">
                        
                        <div class="row">

                            <div class="col-md-12">
                                <div class="form-group">
                                    <iframe src="" id="viewdok" class="m-t-30" type="application/pdf" width="100%" height="600px"></iframe>
                                </div>
                            </div>
                        </div>
                </div>    
          </div>
      </div>
  </div>
    <!-- END MODAL VIEW DOKUMEN -->

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
//On change dokumen
    $('.namadokumen').on('change', function(){
        var value = $(this).children("option:selected").val();
        console.log(value);
        if(value == "0204") {
            $('.input-kwitansi').removeClass("d-none");
        } else {
            $('.input-kwitansi').addClass("d-none");
        }
    });

//VIEW DOKUMEN
    $('#lihatdok').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget)
        var doklaporan = button.data('viewlaporan')


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
      
      file: "required"
    },
    messages: {
     
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
    $('#editLaporan').on('show.bs.modal', function (event) {

      var button = $(event.relatedTarget) // Button that triggered the modal
      var namadokumen = button.data('mynama') 
      var kwitansi = button.data('mykwitansi')
      var volume = button.data('myvolume') 
      var satuan = button.data('mysatuan') 
      var catatan = button.data('mycatatan') 
      var file = button.data('myfile') 
      var mylaporan_id = button.data('laporanid') 

      var modal = $(this)
      modal.find('.modal-body #namalap').val(namadokumen);
      modal.find('.modal-body #kwitansiid').val(kwitansi);
      modal.find('.modal-body #idvolume').val(volume);
      modal.find('.modal-body #idsatuan').val(satuan);
      modal.find('.modal-body #idcatatan').val(catatan);
      modal.find('.modal-body #filelap').val(file);
      modal.find('.modal-body #idlap_id').val(mylaporan_id);
    })
</script>
@endsection
