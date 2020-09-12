@extends('layouts.main_admin')
@section('title',' | Tambah Users')
@section('breadcrumb')
<div class="row page-titles">
    <div class="col-md-5 col-8 align-self-center">
        <h3 class="text-themecolor">Tambah User</h3>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
            <li class="breadcrumb-item"><a href="{{ route('users.index') }}">Users</a></li>
            <li class="breadcrumb-item active">Create</li>
        </ol>
    </div>
</div>
@endsection

@section('content')
<section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                    <div class="card">
                      <div class="card-body">
                          <h3 class="card-title">Tambah Data User</h3>
                          @if (session('success'))
                                @alert(['type' => 'success'])
                                    {!! session('success') !!}
                                @endalert
                            @endif

                          {{-- <h6 class="card-subtitle">Data table example</h6> --}}
                           {!! Form::open(array('route'=> ['users.store'], 'method'=>'POST','enctype'=>'multipart/form-data','class'=>'form-horizontal m-t-10')) !!}
                          
                                @csrf
                                <div class="row">
                                <div class="col-md-9">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                        <label for="">Nama</label>
                                        <input type="text" name="name" class="form-control {{ $errors->has('name') ? 'is-invalid':'' }}" required>
                                        <p class="text-danger">{{ $errors->first('name') }}</p>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                        <label for="">Email</label>
                                        <input type="email" name="email" class="form-control {{ $errors->has('email') ? 'is-invalid':'' }}" required>
                                        <p class="text-danger">{{ $errors->first('email') }}</p>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                    <label for="">Password</label>
                                    <input type="password" name="password" class="form-control {{ $errors->has('password') ? 'is-invalid':'' }}" required>
                                    <p class="text-danger">{{ $errors->first('password') }}</p>
                                </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                    <label for="">Role</label>
                                    <select name="role" class="form-control {{ $errors->has('role') ? 'is-invalid':'' }}" required>
                                        <option value="">Pilih</option>
                                        @foreach ($role as $row)
                                        <option value="{{ $row->name }}">{{ $row->name }}</option>
                                        @endforeach
                                    </select>
                                    <p class="text-danger">{{ $errors->first('role') }}</p>
                                </div>
                                    </div>
                                </div>
                                
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                    <label for="">Instansi</label>
                                    <input type="text" name="instansi" class="form-control {{ $errors->has('instansi') ? 'is-invalid':'' }}" required>
                                    <p class="text-danger">{{ $errors->first('instansi') }}</p>
                                </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                    <label for="">Alamat</label>
                                    <input type="text" name="alamat" class="form-control {{ $errors->has('alamat') ? 'is-invalid':'' }}" >
                                    <p class="text-danger">{{ $errors->first('alamat') }}</p>
                                </div>
                                    </div>
                                </div>
                                
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                    <label for="">Provinsi</label>
                                    <?php $keg_pro_List = App\Prokabkot::distinct()->orderby('propinsi')->pluck('propinsi', 'propinsi')->all();?>
                                        <div class="controls">{!! Form::select('provinsi', [''=>'Pilih Propinsi'] + $keg_pro_List, null, ['class' => 'form-control','required data-validation-required-message'=>'Tidak Boleh Kosong']) !!}</div>
                                    <p class="text-danger">{{ $errors->first('provinsi') }}</p>
                                    </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                        <label for="">Kab/Kota</label>
                                        <div class="controls">
                                          {!! Form::select('kabkot', [''=>'Pilih Kabupaten/Kota'], null, ['class' => 'form-control','required data-validation-required-message'=>'Tidak Boleh Kosong']) !!}
                                        </div>
                                        <p class="text-danger">{{ $errors->first('kabkot') }}</p>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                    <label for="">Kecamatan</label>
                                    {!! Form::text('kecamatan',null,['class'=>'form-control'])!!}
                                    <p class="text-danger">{{ $errors->first('kecamatan') }}</p>
                                    </div>
                                    </div>
                                </div>
                                
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                    <label for="">NPWP</label>
                                    <input type="text" name="npwp" class="form-control {{ $errors->has('npwp') ? 'is-invalid':'' }}" >
                                    <p class="text-danger">{{ $errors->first('npwp') }}</p>
                                </div>
                                    </div>
                                    
                                </div>
                                <div class="row">
                                <div class="col-md-6">
                                <div class="form-group">
                                    <button class="btn btn-primary btn-md">
                                        <i class="fa fa-send"></i> Simpan
                                    </button>
                                </div>
                                </div>
                                </div>
                              </div>
                              
                                
                                                                
                                
                                <div class="col-md-3">
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
                                              <span class="btn btn-warning btn-file"><span class="fileinput-new">Choose Photo</span><span class="fileinput-exists">Change</span>
                                              <input type="file" name="foto" id="foto"></span>
                                              <a href="#" class="btn btn-danger fileinput-exists" data-dismiss="fileinput">Remove</a>
                                            </div>
                                          </div>
                                              </center>
                                      </div>
<!--
                                        <div class="form-group">
                                            <label for="">Foto</label>
                                            <input type="file" name="foto" class="form-control {{ $errors->has('foto') ? 'is-invalid':'' }}" >
                                            <p class="text-danger">{{ $errors->first('foto') }}</p>
                                        </div>
-->
                                    </div>
                                    </div>
                                
                            {!! Form::close() !!}
                            </div>

                      </div>
                  </div>
                    </div>
                </div>
            </div>
        </section>


  
 {{--    <a href="" class="right-side-toggle btn btn-warning btn-circle btn-med pull-right p-20 m-t-40 m-b-40" data-toggle="tooltip" data-placement="left" title="" data-original-title="Tambah User">
        <i class="fa fa-plus"></i>
    </a> --}}
   


@endsection

@section('writen_scripts')
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
