@extends('layouts.main_admin')
@section('title',' | List Bapem')
@section('breadcrumb')
<div class="row page-titles">
    <div class="col-md-5 col-8 align-self-center">
        <h3 class="text-themecolor">Daftar Bapem</h3>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
            <li class="breadcrumb-item active">Bapem</li>
        </ol>
    </div>
</div>
@endsection

@section('content')
<div class="card">
        <div class="card-body">
            <h3 class="card-title">Daftar Bapem</h3>
            {{-- <h6 class="card-subtitle">Data table example</h6> --}}
            <div class="table-responsive m-t-10">
                <table id="myTable2" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>No</th>
                            @role('administrator')<th>Pemilik</th>@endrole
                            @role('pengguna')<th>Type Bapem</th>@endrole
                            <th>Nama Bapem</th>
                            <th>Tahun</th>
                            <th>Keterangan</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    {{-- <tfoot>
                        <tr>
                            <th>No</th>
                            <th>Type Bapem</th>
                            <th>Nama Bapem</th>
                            <th>Tahun</th>
                            <th>Keterangan</th>
                            <th>Aksi</th>
                        </tr>
                    </tfoot> --}}

                    <tbody>
                        <?php $no = 1;?>
                        @role('pengguna')
                        @foreach($listbapem as $bapem)
                        <tr>
                            <td>{{$no++}}</td>
                            <td>
                              @if($bapem->type_bapem == 1)
                                  <label class="badge badge-info">Penguatan Pengawas</label>
                                @elseif($bapem->type_bapem == 2)
                                  <label class="badge badge-warning">Zonasi PKP</label>
                                @else
                                  <label class="badge badge-danger">PKB
                                @endif
                            </td>
                            <td>{{$bapem->nama_bapem}}</td>
                            <td>{{$bapem->tahun}}</td>
                            <td>{{$bapem->keterangan}}</td>
                            <td>
                                
                              {{-- {{ Form::open(['method'=>'DELETE','route'=>['bapem.destroy',$bapem->id]])}} --}}
                              <a href="{{route ('bapem.show',['bpm_id' => $bapem->id])}}" class="btn btn-primary btn-sm" data-toggle="tooltip" data-original-title="Detail"><i class="fa fa-eye"></i></a>
                              {{-- <a class="btn btn-warning btn-sm" data-toggle="modal" 
                                data-mytitle="{{$bapem->type_bapem}}" 
                                data-mynama="{{$bapem->nama_bapem}}" 
                                data-mytahun="{{$bapem->tahun}}"
                                data-myketerangan="{{$bapem->keterangan}}"
                                data-bapemid="{{$bapem->id}}"
                                data-target="#edit" data-original-title="Edit"><i class="fa fa-edit"></i></a> --}}
                                
                                    {{-- <button onclick="return confirm('Anda Yakin Ingin Menghapus Kegiatan?')" type ="submit" class="btn btn-danger btn-sm" data-toggle="tooltip" data-original-title="Hapus" {{App\Listbapem::find($bapem->id) }}><i class="fa fa-trash"></i></button> --}}
                                    {{-- {{ Form::close()}} --}}
                             {{--  <button class="btn btn-danger btn-sm" data-toggle="tooltip" data-original-title="Hapus"><i class="fa fa-trash"></i></button> --}}
                            </td>
						              @endforeach
                          @endrole

                          @role('administrator')
                          @foreach($listbapemall as $bapemall)
                          <tr>
                              <td>{{$no++}}</td>
                              <td>{{$bapemall->name}}</td>
                              <td>{{$bapemall->nama_bapem}}</td>
                              <td>{{$bapemall->tahun}}</td>
                              <td>{{$bapemall->keterangan}}</td>
                              <td> 
                                  
                                {{ Form::open(['method'=>'DELETE','route'=>['bapem.destroy',$bapemall->list_id]])}}
                                <a href="{{route ('bapem.show',['bpm_id' => $bapemall->list_id])}}" class="btn btn-primary btn-sm" data-toggle="tooltip" data-original-title="Detail"><i class="fa fa-eye"></i></a>
                                <a class="btn btn-warning btn-sm" data-toggle="modal" 
                                  data-mytitle="{{$bapemall->type_bapem}}" 
                                  data-myuser="{{$bapemall->user_id}}" 
                                  data-mynama="{{$bapemall->nama_bapem}}" 
                                  data-mytahun="{{$bapemall->tahun}}"
                                  data-myketerangan="{{$bapemall->keterangan}}"
                                  data-bapemid="{{$bapemall->list_id}}"
                                  data-target="#edit" data-original-title="Edit"><i class="fa fa-edit"></i></a>
                                  
                                  <button onclick="return confirm('Anda Yakin Ingin Menghapus Kegiatan?')" type ="submit" class="btn btn-danger btn-sm" data-toggle="tooltip" data-original-title="Hapus" {{App\Listbapem::find($bapemall->list_id) }}><i class="fa fa-trash"></i></button>
                                  {{ Form::close()}}
                               {{--  <button class="btn btn-danger btn-sm" data-toggle="tooltip" data-original-title="Hapus"><i class="fa fa-trash"></i></button> --}}
                              </td>
                            @endforeach
                            @endrole
                        </tr>
                    </tbody>


                </table>
            </div>
        </div>
    </div>
    @role('administrator')
    <a href="#" class="right-side-toggle btn btn-warning btn-circle btn-med pull-right p-20 m-t-40 m-b-40" data-toggle="modal" data-target="#addBapem" data-placement="left" title="" data-original-title="Tambah User">
        <i class="fa fa-plus"></i>
    </a>
    @endrole

   <!-- MODAL ADD -->
      <div class="modal fade" id="addBapem" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
          <div class="modal-dialog modal-md" role="document">
              <div class="modal-content">
                  <div class="modal-header">
                      <h4 class="modal-title" id="exampleModalLabel1">Tambah Bapem</h4>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                  </div>
                  <div class="modal-body">
                    {!! Form::open(array('route'=> 'bapem.store','class'=>'form-horizontal m-t-10','novalidate'=>'novalidate')) !!}
                    @csrf
                        @include('bapem.form')
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
       <!-- MODAL EDIT -->
      <div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
          <div class="modal-dialog modal-md" role="document">
              <div class="modal-content">
                  <div class="modal-header">
                      <h4 class="modal-title" id="exampleModalLabel1">Edit Bapem</h4>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                  </div>
                  <div class="modal-body">
                    {!! Form::open(array('route'=> ['bapem.update','update'], 'method'=>'PATCH', 'class'=>'form-horizontal m-t-10','novalidate'=>'novalidate')) !!}
                    {{-- <form action="{{route('bapem.update',$bapem->id)}}" method="post"> --}}
                    {{-- {{method_field('patch')}} --}}
                    @csrf
                    <input type="hidden" name="mybapem_id" id="bapemid">
                    @include('bapem.form')
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Update</button>
                </div>
                {!!Form::close()!!}
                {{-- </form> --}}
          </div>
      </div>
  </div>
    <!-- END MODAL EDIT -->

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

    $('#edit').on('show.bs.modal', function (event) {

      var button = $(event.relatedTarget) // Button that triggered the modal
      var tipebapem = button.data('mytitle') 
      var userbapem = button.data('myuser') 
      var namabapem = button.data('mynama') 
      var tahun = button.data('mytahun') 
      var keterangan = button.data('myketerangan') 
      var mybapemid = button.data('bapemid') 
     
      var modal = $(this)
      modal.find('.modal-body #userid').val(userbapem);
      modal.find('.modal-body #tipebapem').val(tipebapem);
      modal.find('.modal-body #namabapem').val(namabapem);
      modal.find('.modal-body #thn').val(tahun);
      modal.find('.modal-body #ket').val(keterangan);
      modal.find('.modal-body #bapemid').val(mybapemid);
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
