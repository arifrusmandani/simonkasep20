@extends('layouts.main_admin')
@section('title',' | Data Sasaran All')
@section('content')

    <div class="card">
        <div class="card-body">
            <h3 class="card-title">Pengelola Sasaran Bapem</h3>
            {{-- <h6 class="card-subtitle">Data table example</h6> --}}
            <div class="table-responsive m-t-10">
                <table id="myTable2" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Type Bapem</th>
                            <th>Penerima Bapem</th>
                            <th>Area Bapem</th>
                            <th>Sasaran</th>
                            <th>Satuan</th>
                            <th>Rupiah</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>No</th>
                            <th>Type Bapem</th>
                            <th>Penerima Bapem</th>
                            <th>Area Bapem</th>
                            <th>Sasaran</th>
                            <th>Satuan</th>
                            <th>Rupiah</th>
                            <th>Aksi</th>
                        </tr>
                    </tfoot>

                    <tbody>
                        <?php $no = 1;?>
                        @foreach ($data_sasaran as $sasaran)
                        <tr>
                            <td>{{$no++}}</td>
                            <td>{{$sasaran->tipe_bapem}}</td>
                            <td>{{$sasaran->penerima_bapem}}</td>
                            <td>{{$sasaran->area_bapem}}</td>
                            <td>{{$sasaran->sasaran}}</td>
                            <td>{{$sasaran->satuan}}</td>
                            <td>{{$sasaran->rupiah_bapem}}</td>
                            <td>
                              <a href="{{route ('sasaran.show',$sasaran->id)}}" class="btn btn-primary btn-sm"data-toggle="tooltip" data-original-title="Lihat Pertanggung Jawaban"><i class="fa fa-eye"></i></a>
                              <a href="#" class="btn btn-warning btn-sm" data-toggle="modal" 
                              data-myuser="{{$sasaran->user_id}}"
                              data-mytype="{{$sasaran->tipe_bapem}}"
                              data-mypenerima="{{$sasaran->penerima_bapem}}"
                              data-myarea="{{$sasaran->area_bapem}}"
                              data-mysasaran="{{$sasaran->sasaran}}"
                              data-mysatuan="{{$sasaran->satuan}}"
                              data-myrupiah="{{$sasaran->rupiah_bapem}}"
                              data-target="#editSasaran" data-original-title="Edit"><i class="fa fa-edit"></i></a>
                              <a href="/sasaran/{{$sasaran->id}}/delete" class="btn btn-danger btn-sm" data-toggle="tooltip" data-original-title="Hapus" onclick="return confirm('Yakin mau hapus ?')"><i class="fa fa-trash"></i></a>
                            </td>

                        </tr>

                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <a href="#" class="right-side-toggle btn btn-warning btn-circle btn-med pull-right p-20 m-t-40 m-b-40" data-toggle="modal" data-target="#addSasaran" data-placement="left" title="" data-original-title="Tambah Sasaran">
        <i class="fa fa-plus"></i>
    </a>

        <!-- MODAL ADD SASARAN-->
      <div class="modal fade" id="addSasaran" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
          <div class="modal-dialog modal-lg" role="document">
              <div class="modal-content">
                  <div class="modal-header">
                      <h4 class="modal-title" id="exampleModalLabel1">Tambah Sasaran</h4>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                  </div>
                  <div class="modal-body">
                    {!! Form::open(array('route'=> 'sasaran.store','class'=>'form-horizontal m-t-10','novalidate'=>'novalidate')) !!}
                    @csrf
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <?php $user_list = App\User::where('name', '!=', null)->pluck('name', 'id')->all();?>
                                    <label for="recipient-name" class="control-label">User:</label>
                                    <div class="controls">{!! Form::select('user_id', [''=>'Pilih User'] + $user_list, null, ['class' => 'form-control','required data-validation-required-message'=>'Tidak Boleh Kosong']) !!}</div>
                                        
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="recipient-name" class="control-label">Type Bapem:</label>
                                    <div class="controls">
                                        <select class="form-control" name="tipe_bapem">
                                            <option value="1">Penguatan Pengawas</option>
                                            <option value="2">Zonasi PKP</option>
                                            <option value="3">PKB</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <?php $penerima_list = App\User::where('name', '!=', null)->pluck('name', 'name')->all();?>
                                    <label for="recipient-name" class="control-label">Penerima:</label>
                                     <div class="controls">{!! Form::select('penerima_bapem', [''=>'Penerima Bapem'] + $penerima_list, null, ['class' => 'form-control','required data-validation-required-message'=>'Tidak Boleh Kosong']) !!}</div>
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
                                    <label for="recipient-name" class="control-label">Rupiah:</label>
                                    <div class="controls">{!! Form::text('rupiah_bapem',null,['class'=>'form-control','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}</div>
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
  <!-- START MODAL EDIT SASARAN -->
      <div class="modal fade" id="editSasaran" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
          <div class="modal-dialog modal-lg" role="document">
              <div class="modal-content">
                  <div class="modal-header">
                      <h4 class="modal-title" id="exampleModalLabel1">Edit Sasaran</h4>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                  </div>
                  <div class="modal-body">
                    {!! Form::model($sasaran,array('route'=> ['sasaran.update',$sasaran->id], 'method'=>'PATCH','class'=>'form-horizontal m-t-10','novalidate'=>'novalidate')) !!}
                    @csrf
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <?php $user_list = App\User::where('name', '!=', null)->pluck('name', 'id')->all();?>
                                    <label for="recipient-name" class="control-label">User:</label>
                                    <div class="controls">{!! Form::select('user_id', [''=>'Pilih User'] + $user_list, null, ['class' => 'form-control','id'=>'userid','required data-validation-required-message'=>'Tidak Boleh Kosong']) !!}</div>
                                        
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="recipient-name" class="control-label">Type Bapem:</label>
                                    <div class="controls">
                                        <select class="form-control" name="tipe_bapem" id="tipe">
                                            <option disabled>-Type Bapem-</option>
                                            <option value="1">Penguatan Pengawas</option>
                                            <option value="2">Zonasi PKP</option>
                                            <option value="3">PKB</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <?php $penerima_list = App\User::where('name', '!=', null)->pluck('name','name')->all();?>
                                    <label for="recipient-name" class="control-label">Penerima:</label>
                                     <div class="controls">{!! Form::select('penerima_bapem', [''=>'Penerima Bapem'] + $penerima_list, null, ['class' => 'form-control','id'=>'penerima','required data-validation-required-message'=>'Tidak Boleh Kosong']) !!}</div>
                                </div>
                            </div>
                            
                            <div class="col-md-6">
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
                                    <div class="controls">{!! Form::text('rupiah_bapem',null,['class'=>'form-control','id'=>'rupiahbapem', 'required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}</div>
                                </div>
                            </div>
                        </div>
                        {{-- <input type="hidden" name="sasaran_id" id="idsasaran"> --}}
                    
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
    // $(function() {
    //     var oTable = $('#table-sasaran').DataTable({
    //         processing: true,
    //         serverSide: true,
    //         ajax: {
    //             url: '{{ url("data-sasaran") }}'
    //         },
    //         columns: [
    //         {data: 'id', name: 'id'},
    //         {data: 'tipe_bapem', name: 'tipe_bapem'},
    //         {data: 'penerima_bapem', name: 'penerima_bapem', orderable: false},
    //         {data: 'area_bapem', name: 'area_bapem', orderable: false, searchable: false},
    //         {data: 'sasaran', name: 'sasaran', orderable: false},
    //         {data: 'satuan', name: 'satuan', orderable: false},
    //         {data: 'rupiah_bapem', name: 'rupiah_bapem', orderable: false},
    //     ],
    //     });
    // });

    $('#editSasaran').on('show.bs.modal', function (event) {

      var button = $(event.relatedTarget) // Button that triggered the modal
      var userlist = button.data('myuser') 
      var tipebapem = button.data('mytype') 
      var penerimabapem = button.data('mypenerima') 
      var areabapem = button.data('myarea') 
      var sasaranbapem = button.data('mysasaran') 
      var satuanbapem = button.data('mysatuan') 
      var rupiahbapem = button.data('myrupiah') 
       
     
      var modal = $(this)
      modal.find('.modal-body #userid').val(userlist);
      modal.find('.modal-body #tipe').val(tipebapem);
      modal.find('.modal-body #penerima').val(penerimabapem);
      modal.find('.modal-body #area').val(areabapem);
      modal.find('.modal-body #sasaranbapem').val(sasaranbapem);
      modal.find('.modal-body #satuanbapem').val(satuanbapem);
      modal.find('.modal-body #rupiahbapem').val(rupiahbapem);
      
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



    $('#example23').DataTable({
        dom: 'Bfrtip',
        buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ]
    });
</script>

@endsection
