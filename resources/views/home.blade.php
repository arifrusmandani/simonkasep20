@extends('layouts.main_admin')
@section('title',' | Dashboard')
@section('content')
<div class="row">
    <div class="col-12 m-t-30">

        <div class="card card-outline-inverse text-center">
            <div class="card-header">
                <h1 class="m-b-0 text-white">Selamat Datang</h1>
            </div>
            <div class="card-body">
                <h2 class="card-text">Anda telah memilih tahun </h2>

                    <h1 class="text-primary"><strong><div id="tahun_aktif">{{$tahunaktif}}</div></strong></h1>

                <h2>Sebagai Tahun Aktif.</h2>
                <a href="{{route('home_edit_tahun')}}" class="btn btn-primary btn-large">Ubah Tahun Aktif</a>
                <!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#ubahtahunaktif">Ubah Tahun Aktif</button> -->
            </div>
        </div>
    </div>
</div>

<!-- <div class="modal fade" id="ModalTahun" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1" aria-hidden="true" style="display: none;">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="exampleModalLabel1">Pilih Tahun Aktif</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label>Tahun Aktif</label>
                            <select class="form-control">
                               <option>2019</option>
                               <option>2018</option>
                               <option>2017</option>
                               <option>2016</option>
                               <option>2015</option>
                          </select>
                     </div>

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
                <button id="tahun_OK" type="button" class="btn btn-primary"data-dismiss="modal">OK</button>
            </div>
        </div>
    </div>
</div> -->


<div class="modal fade" id="ModalTahun" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1" aria-hidden="true" style="display: none;">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="exampleModalLabel1">Pilih Tahun Aktif</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                      @php
                          $tahun = [
                              '2016'=>'2016',
                              '2017'=>'2017',
                              '2018'=>'2018',
                              '2019'=>'2019',
                              '2020'=>'2020'
                          ];
                      @endphp
                      <label>Tahun Aktif</label>
                      <div class="controls">{!! Form::select('tahun_terpilih', [''=>'Pilih Tahun'] + $tahun, null, ['class' => 'form-control','id'=>'tahun_terpilih']) !!}</div>
                    </div>

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
                <button id="tahun_OK" type="submit" class="btn btn-primary"data-dismiss="modal">OK</button>
                  
            </div>
        </div>
    </div>
</div>

@endsection

@section('writen_scripts')
<script src="{{asset('assets/plugins/jquery/jquery.session.min.js')}}"></script>
  <script type="text/javascript">
  // $('#ubahtahunaktif').modal('show');

  $(document).ready(function(){
    $('#tahun_OK').click(function(){
      // var databack = $("#tahun_terpilih").val();
      var selectedItem = $("#ModalTahun #tahun_terpilih").find('option:selected').val();
      // alert($.session.get("tahunaktif"));
      alert(sessionStorage.getItem("tahunaktif"));
      // console.log(selectedItem);
      sessionStorage.clear('tahunaktif');
      // $.session.remove('tahunaktif');
      sessionStorage.setItem("tahunaktif", selectedItem);
  
      // sessionStorage.setItem("tahunaktif", selectedItem);
      // localStorage.setItem("tahunaktif", selectedItem);
      $('#tahun_aktif').text(selectedItem);
      alert(sessionStorage.getItem("tahunaktif"));
  
    });
  });

  </script>
@endsection
