@extends('layouts.main_admin')
@section('title',' | Tambah Data Personel')
@section('breadcrumb')
<div class="row page-titles">
    <div class="col-md-5 col-8 align-self-center">
        <h3 class="text-themecolor">Tambah Data Personel</h3>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
            <li class="breadcrumb-item"><a href="{{route('bapem.index')}}">Bapem</a></li>
            <li class="breadcrumb-item active">Personel</li>
        </ol>
    </div>
</div>
@endsection

@section('content')
{{-- {{dd(Session::all())}} --}}

  <div class="row">
    <div class="col-lg-12">
        <div class="card card-outline-inverse">
            <div class="card-header">
                <h4 class="m-b-0 text-white">Tambah Personel Baru</h4>
            </div>
            {!! Form::open(array('route'=> ['personel.store'], 'method'=>'POST','enctype'=>'multipart/form-data','class'=>'form-horizontal m-t-10')) !!}
            <div class="card-body">
                
                <div class="row">
                        <div class="col-md-9">

                                <div class="row">
                                   
                                      
                                        {{-- <div class="controls">
                                          
                                            <input type="text" class="form-control" value="{{Auth::user()->id}}" name="user_id" hidden>
                                        </div> --}}
                                        
                               
                                    <div class="form-group col-xs12 col-md-4">
                                        
                                        <label>Peran Personel</label>
                                        <div class="controls">
                                          <select class="form-control" name="peran" required>
                                            <option value="" disabled selected>--Pilih Peran--</option>
                                            <option value="Penanggung Jawab LPD">Penanggung Jawab LPD</option>
                                            <option value="Bendahara LPD">Bendahara LPD</option>
                                            <option value="Operator LPD">Operator LPD</option>
                                          </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-xs12 col-md-4">
                                      

                                        <label>Nama</label>
                                        <div class="controls">
                                          {!! Form::text('nama',null,['class'=>'form-control','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}
                                        </div>
                                        
                                    </div>
                                    <div class="form-group col-xs12 col-md-4">
                                        
                                        <label>NIK</label>
                                        <div class="controls">
                                          {!! Form::text('nik',null,['class'=>'form-control','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}
                                        </div>
                                    </div>
                                    
                                </div>


                                <div class="row">
                                  <div class="form-group col-xs12 col-md-4">
                                        <label>NIP</label>
                                        <div class="controls">
                                          {!! Form::text('nip',null,['class'=>'form-control','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}
                                        </div>
                                    </div>
                                    <div class="form-group col-xs12 col-md-4">
                                       
                                        <label for="keg_nama_rkakl">No.HP</label>
                                        <div class="controls">
                                          {!! Form::text('hp',null,['class'=>'form-control','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}
                                        </div>
                                    </div>

                                    <div class="form-group col-xs12 col-md-4">
                                        <label for="keg_prog_id">Email</label>
                                        <div class="controls">
                                          {!! Form::email('email',null,['class'=>'form-control','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}
                                        </div>
                                    </div>
                                    
                                    
                                </div>

                               
                                <div class="row">
                                  <div class="form-group col-xs12 col-md-4">
                                        <label for="keg_nama">Jabatan</label>
                                        <div class="controls">
                                            {!! Form::text('jabatan',null,['class'=>'form-control','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}
                                        </div>
                                    </div>
                                  <div class="form-group col-xs12 col-md-4">
                                        
                                        <label>Instansi</label>
                                        <div class="controls">
                                          {!! Form::text('instansi',null,['class'=>'form-control','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}
                                        </div>
                                    </div>
                    
                                    <div class="form-group col-xs12 col-md-4">
                                        
                                        <label>Alamat</label>
                                        <div class="controls">
                                         {!! Form::textarea('alamat',null,['class'=>'form-control','required data-validation-required-message'=>'Tidak Boleh Kosong','rows'=>2,'cols'=>40])!!}
                                        </div>
                                    </div>
                                    <div class="form-group col-xs12 col-md-4">
                                        <label for="keg_kelas">Provinsi</label>
                                        <div class="controls">
                                          <?php $keg_pro_List = App\Prokabkot::distinct()->orderby('propinsi')->pluck('propinsi', 'propinsi')->all();?>
                                            {!! Form::select('provinsi', [''=>'Pilih Provinsi'] + $keg_pro_List, null, ['class' => 'form-control','required data-validation-required-message'=>'Tidak Boleh Kosong']) !!}
                                        </div>
                                    </div>
                                    <div class="form-group col-xs12 col-md-4">
                                        <label for="keg_pst">Kabupaten/Kota</label>
                                        <div class="controls">
                                                {!! Form::select('kabkot', [''=>'Pilih Kabupaten/Kota'], null, ['class' => 'form-control','required data-validation-required-message'=>'Tidak Boleh Kosong']) !!}
                                        </div>
                                    </div>
                                     <div class="form-group col-xs12 col-md-4">
                                        <label for="keg_region">Kecamatan</label>
                                        {!! Form::text('kecamatan',null,['class'=>'form-control','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}
                                    </div>
                                </div>

                               

                            
                       <div class="row">
                                    <div class="form-group col-xs12 col-md-6">
                                        <a href="{{ url()->previous() }}" class="btn btn-block btn-md btn-primary"><i class="fa fa-arrow-left"></i> KEMBALI</a>
                                    </div>
                                    <div class="form-group col-xs12 col-md-6">
                                        <button class="btn btn-block btn-md btn-success" type="submit">
                                            <i class="fa fa-save left"></i>
                                            SIMPAN DATA
                                        </button>
                                    </div>
                                </div>


                    </div>
                     
                        <div class="col-md-3">
                                  
                                        <label for="">Foto</label>
                                    <div class="col-md-12">
                                      <div class="form-group">
                                              <center>
                                          <div class="fileinput fileinput-new" data-provides="fileinput">
                                            <div class="fileinput-new thumbnail" style="width: 150px; height: 150px;">
                                            
                                              {{-- {!! Html::image('personel/' . $avatar, $personel->nama,['class'=>'media-object']) !!} --}}
                                              <img src="{{asset('avatar/default.png')}}" alt="Photo">
                                              {{-- <img src="{{asset('avatar/'.$avatar)}}" alt="Photo"> --}}
                                            </div>
                                            <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"></div>
                                            <div class="text-center">
                                              <span class="btn btn-warning btn-file"><span class="fileinput-new">Choose Photo</span><span class="fileinput-exists">Change</span><input type="file" name="foto" id="foto"></span>
                                              <a href="#" class="btn btn-danger fileinput-exists" data-dismiss="fileinput">Remove</a>
                                            </div>
                                          </div>
                                              </center>
                                      </div>

                                  </div>
                                  </div>
                        

                    {!! Form::close() !!}
            </div>
        </div>
    </div>
</div>


@endsection

@section('writen_scripts')
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.14.0/jquery.validate.min.js"></script>

<script type="text/javascript">
      $(document).ready(function() {

          $('select[name="provinsi"]').on('change', function() {
              var propinsi = $(this).val();
              if (propinsi) {
                  $.ajax({
                      url: "<?php echo url('/');?>/prokabkot/kabkot/" + propinsi,
                      type: "GET",
                      dataType: "json",
                      beforeSend: function() {
                          $('#loader').css("visibility", "visible");
                      },

                      success: function(data) {

                          $('select[name="kabkot"]').empty();
                          $('select[name="kabkot"]').append('<option value="">Pilih Kabupaten/Kota</option>');
                          $.each(data, function(key, value) {

                              $('select[name="kabkot"]').append('<option value="' + key + '">' + value + '</option>');

                          });
                      },
                      complete: function() {
                          $('#loader').css("visibility", "hidden");
                      }
                  });
              } else {
                  $('select[name="kabkot"]').empty();
              }

          });

      });
  </script>
@endsection
