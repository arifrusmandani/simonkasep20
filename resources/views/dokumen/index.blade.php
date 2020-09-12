@extends('layouts.main_admin')
@section('title',' | Kelola Dokumen')
@section('breadcrumb')
<div class="row page-titles">
    <div class="col-md-5 col-8 align-self-center">
        <h3 class="text-themecolor">Daftar Dokumen</h3>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
            <li class="breadcrumb-item active">Dokumen</li>
        </ol>
    </div>
</div>
@endsection

@section('content')

 <div class="row">
    <div class="col-12 m-t-10">

       <div class="card">
                            <div class="card-body p-b-0">
                                {{-- <h4 class="card-title">Customtab2 Tab</h4> --}}
                                {{-- <h6 class="card-subtitle">Use default tab with class <code>customtab</code></h6> --}}
                                <!-- Nav tabs -->
                                <ul class="nav nav-tabs customtab2" role="tablist">
                                    <li class="nav-item"> <a class="nav-link active" data-toggle="tab" href="#tab1" role="tab"><span class="hidden-sm-up"><i class="ti-home"></i></span> <span class="hidden-xs-down">Dokumen Std</span></a> </li>
                                    {{-- <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#tab2" role="tab"><span class="hidden-sm-up"><i class="ti-user"></i></span> <span class="hidden-xs-down">Dokumen Pemberian</span></a> </li> --}}
                                    {{-- <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#messages7" role="tab"><span class="hidden-sm-up"><i class="ti-email"></i></span> <span class="hidden-xs-down">Dokumen Pemberian</span></a> </li> --}}
                                    
                                </ul>
                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <div class="tab-pane active" id="tab1" role="tabpanel">
                                        
                                            <div class="table-responsive m-t-10">
                                            <a href="#" data-toggle="modal" data-target="#addDokumenstd"> <button class="btn btn-block btn-md btn-success" type="submit">
                                            <i class="fa fa-user-plus"></i>
                                            TAMBAH DOKUMEN
                                            </button></a>
                                            <table id="myTable2" class="table table-bordered table-striped">
                                                <thead>
                                                    <tr>
                                                        <th>No</th>
                                                        {{-- <th>Type Bapem</th> --}}
                                                        <th>Type Dokumen</th>
                                                        <th>Nama Dokumen</th>
                                                        <th>Kode Dokumen</th>
                                                        <th>Aksi</th>
                                                    </tr>
                                                </thead>
                                                <tfoot>
                                                    <tr>
                                                        <th>No</th>
                                                        {{-- <th>Type Bapem</th> --}}
                                                        <th>Type Dokumen</th>
                                                        <th>Nama Dokumen</th>
                                                        <th>Kode Dokumen</th>
                                                        <th>Aksi</th>
                                                    </tr>
                                                </tfoot>

                                                <tbody>
                                                    <?php 
                                                        $no = 1;

                                                    ?>
                                                    @foreach ($data_dokumen as $dokumen)
                                                    <tr>
                                                        <td>{{$no++}}</td>
                                                        {{-- <td>{{$dokumen->type_bapem}}</td> --}}
                                                        <td>{{$dokumen->tipe}}</td>
                                                        <td>{{$dokumen->nama_dokumen}}</td>
                                                        <td>{{$dokumen->kode_dokumen}}</td>
                                                        <td>
                                                        {{ Form::open(['method'=>'DELETE','route'=>['dokumen.destroy',$dokumen->id]])}}

                                                          <a href="" class="btn btn-warning btn-sm" data-toggle="modal"
                                                          data-mytype="{{$dokumen->tipe}}"
                                                          data-mynamadok="{{$dokumen->nama_dokumen}}"
                                                          data-mykodedok="{{$dokumen->kode_dokumen}}"
                                                          data-dokid="{{$dokumen->id}}"
                                                           data-target="#editDokumenstd" data-original-title="Edit"><i class="fa fa-edit"></i></a>
                                                          <button onclick="return confirm('Anda Yakin Ingin Menghapus?')" class="btn btn-danger btn-sm" data-toggle="tooltip" data-original-title="Hapus" {{App\Dokumen::find($dokumen->id) }}><i class="fa fa-trash"></i></button>

                                                        {{ Form::close() }}
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
                    </div>


         <!-- MODAL ADD Dokumen std -->
      <div class="modal fade" id="addDokumenstd" tabindex="0" role="dialog" aria-labelledby="exampleModalLabel1">
          <div class="modal-dialog modal-md" role="document">
              <div class="modal-content">
                  <div class="modal-header">
                      <h4 class="modal-title" id="exampleModalLabel1">Tambah Dokumen</h4>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                  </div>
                  <div class="modal-body">
                    {!! Form::open(array('route'=> 'dokumen.store','class'=>'form-horizontal m-t-10','novalidate'=>'novalidate')) !!}
                    @csrf
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    
                                    <label for="recipient-name" class="control-label">Type Dokumen:</label>
                                    <div class="controls">
                                        <select id="tipe" class="form-control" name="tipe">
                                            <option disabled selected>-Tipe Dokumen-</option>
                                            <option value="Pemberian Bapem">Pemberian Bapem</option>
                                            <option value="Laporan Bapem">Laporan Bapem</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="recipient-name" class="control-label">Nama Dokumen:</label>
                                    <div class="controls">{!! Form::text('nama_dokumen',null,['class'=>'form-control','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}</div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <?php
                                    $kodeakhir = \App\Dokumen::where('tipe','Pemberian Bapem')->max('kode_dokumen');
                                    $kodeakhir2 = \App\Dokumen::where('tipe','Laporan Bapem')->max('kode_dokumen');
                                    ?>
                                    <label for="recipient-name" class="control-label">Kode Dokumen:</label>
                                    <div class="controls">
                                        <input type="text" id="kode_dokumen" name="kode_dokumen" class="form-control" value="">
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
    <!-- END MODAL ADD Dokumen std-->



      <!-- MODAL EDIT Dokumen std -->
      <div class="modal fade" id="editDokumenstd" tabindex="0" role="dialog" aria-labelledby="exampleModalLabel1">
          <div class="modal-dialog modal-md" role="document">
              <div class="modal-content">
                  <div class="modal-header">
                      <h4 class="modal-title" id="exampleModalLabel1">Edit Dokumen</h4> 
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                  </div>
                  <div class="modal-body">
                    {!! Form::open(array('route'=> ['dokumen.update',$dokumen->id], 'method'=>'PATCH', 'class'=>'form-horizontal m-t-10','novalidate'=>'novalidate')) !!}
                    @csrf
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    
                                    <label for="recipient-name" class="control-label">Type Dokumen:</label>
                                    <div class="controls">
                                        <select class="form-control" name="tipe" id="tipedok">
                                            <option value="Pemberian Bapem">Pemberian Bapem</option>
                                            <option value="Laporan Bapem">Laporan Bapem</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="recipient-name" class="control-label">Nama Dokumen:</label>
                                    <input type="text" class="form-control" name="nama_dokumen" id="namadok">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="recipient-name" class="control-label">Kode Dokumen:</label>
                                    <div class="controls">
                                        <input type="text" name="kode_dokumen" id="kodedok" class="form-control" disabled>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <input type="hidden" name="dokumenstd_id" id="dok_id" value="">
                        
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">SIMPAN</button>
                </div>
                {!!Form::close()!!}
                
          </div>
      </div>
</div>
    <!-- END MODAL EDIT Dokumen std-->

    </div>
</div>



@endsection

@section('writen_scripts')
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

        //On change
        $('#tipe').on('change', function(){
            var selected = $(this).val();
            console.log(selected);
            if(selected == "Pemberian Bapem"){
                $('#kode_dokumen').val('0{{$kodeakhir+1}}');
                //console.log(selected);
            } else {
                $('#kode_dokumen').val('0{{$kodeakhir2+1}}');
                //console.log(selected);
            }
        });
    
    $('#editDokumenstd').on('show.bs.modal', function (event) {

      var button = $(event.relatedTarget) // Button that triggered the modal
      var tipedok = button.data('mytype') 
      var namadok = button.data('mynamadok') 
      var kodedok = button.data('mykodedok') 
      var dokumenstd_id = button.data('dokid') 
     
      var modal = $(this)
      modal.find('.modal-body #tipedok').val(tipedok);
      modal.find('.modal-body #namadok').val(namadok);
      modal.find('.modal-body #kodedok').val(kodedok);
      modal.find('.modal-body #dok_id').val(dokumenstd_id);
    })
    

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
