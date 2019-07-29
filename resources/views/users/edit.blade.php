@extends('layouts.main_admin')
@section('title',' | Edit Users')
@section('content')


<section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">

                    <div class="card">
                      <div class="card-body">
                          <h3 class="card-title">Edit Data User</h3>
                          @if (session('error'))
                                @alert(['type' => 'danger'])
                                    {!! session('error') !!}
                                @endalert
                            @endif
                            
                            <form action="{{ route('users.update', $user->id) }}" method="post" enctype="multipart/form-data">
                                @csrf
                                <input type="hidden" name="_method" value="PUT">
                                <div class="col-md-12">
                                <div class="row">
                                  <div class="col-md-9">
                                    <div class="row">
                                      <div class="col-md-4">
                                          <div class="form-group">
                                              <label for="">Nama</label>
                                              <input type="text" name="name" 
                                                  value="{{ $user->name }}"
                                                  class="form-control {{ $errors->has('name') ? 'is-invalid':'' }}" required>
                                              <p class="text-danger">{{ $errors->first('name') }}</p>
                                          </div>
                                      </div>
                                      <div class="col-md-4">
                                          <div class="form-group">
                                              <label for="">Email</label>
                                              <input type="email" name="email" 
                                                  value="{{ $user->email }}"
                                                  class="form-control {{ $errors->has('email') ? 'is-invalid':'' }}" 
                                                  required readonly>
                                              <p class="text-danger">{{ $errors->first('email') }}</p>
                                          </div>
                                      </div>
                                      <div class="col-md-4">
                                          <div class="form-group">
                                              <label for="">Password</label>
                                              <input type="password" name="password" 
                                                  class="form-control {{ $errors->has('password') ? 'is-invalid':'' }}">
                                              <p class="text-danger">{{ $errors->first('password') }}</p>
                                              <p class="text-warning"><small>Biarkan kosong, jika tidak ingin mengganti password</small></p>
                                          </div>
                                      </div>
                                      <div class="col-md-4">
                                          <div class="form-group">
                                              <label for="">Instansi</label>
                                              <input type="text" name="instansi" 
                                                  value="{{ $user->instansi }}"
                                                  class="form-control {{ $errors->has('instansi') ? 'is-invalid':'' }}" required>
                                              <p class="text-danger">{{ $errors->first('instansi') }}</p>
                                          </div>
                                      </div>
                                      <div class="col-md-3">
                                          <div class="form-group">
                                          <label for="">NPWP</label>
                                          <input type="text" name="npwp" 
                                              value="{{ $user->npwp }}"
                                              class="form-control {{ $errors->has('npwp') ? 'is-invalid':'' }}" required>
                                          <p class="text-danger">{{ $errors->first('npwp') }}</p>
                                          </div>
                                      </div>
                                      
                                      <div class="col-md-5">
                                          <div class="form-group">
                                              <label for="">Alamat</label>
                                              <input type="text" name="alamat" 
                                                  value="{{ $user->alamat }}"
                                                  class="form-control {{ $errors->has('alamat') ? 'is-invalid':'' }}" required>
                                              <p class="text-danger">{{ $errors->first('alamat') }}</p>
                                          </div>
                                      </div>
                                      <div class="col-md-4">
                                          <div class="form-group">
                                              <label for="">Provinsi</label>
                                              <?php $keg_pro_List = App\Prokabkot::distinct()->orderby('propinsi')->pluck('propinsi', 'propinsi')->all();?>
                                              {!! Form::select('provinsi', [''=>'Pilih Provinsi'] + $keg_pro_List, $user->provinsi, ['class' => 'form-control','required data-validation-required-message'=>'Tidak Boleh Kosong']) !!}
                                              {{-- <input type="text" name="provinsi" 
                                                  value="{{ $user->provinsi }}"
                                                  class="form-control {{ $errors->has('provinsi') ? 'is-invalid':'' }}" required> --}}
                                              <p class="text-danger">{{ $errors->first('provinsi') }}</p>
                                          </div>
                                      </div>
                                      <div class="col-md-4">  
                                          <div class="form-group">
                                                  <label for="">Kab/Kot</label>
                                                  <?php $kab_List = App\Prokabkot::where('propinsi',$user->provinsi)->orderby('kabupaten')->pluck('kabupaten', 'kabupaten')->all();?>
                                                  {!! Form::select('kabkot', [''=>'Pilih Kabupaten/Kota'] + $kab_List, $user->kabkot, ['class' => 'form-control','required data-validation-required-message'=>'Tidak Boleh Kosong']) !!}
                                                  {{-- <input type="text" name="kabkot" 
                                                      value="{{ $user->kabkot }}"
                                                      class="form-control {{ $errors->has('kabkot') ? 'is-invalid':'' }}" required> --}}
                                                  <p class="text-danger">{{ $errors->first('kabkot') }}</p>
                                              </div>
                                      </div>
                                      <div class="col-md-4">
                                          <div class="form-group">
                                              <label for="">Kecamatan</label>
                                              <input type="text" name="kecamatan" 
                                                  value="{{ $user->kecamatan }}"
                                                  class="form-control {{ $errors->has('kecamatan') ? 'is-invalid':'' }}" required>
                                              <p class="text-danger">{{ $errors->first('kecamatan') }}</p>
                                          </div>
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
                                            <?php $avatar = ! is_null($user->foto) ? $user->foto : 'default.png' ?>
                                              {!! Html::image('avatar/' . $avatar, $user->name,['class'=>'media-object']) !!}
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
                                </div>
                                

                                </div>



                                <div class="row">
                                    
                                    
                                    <div class="col-md-4">
                                        <div class="form-group m-t-40">
                                        <button class="btn btn-primary btn-md">
                                            <i class="fa fa-send"></i> Update
                                        </button>
                                        </div>
                                    </div>
                                </div>
                                
                                
                                
                                
                                
                            </form>

                      </div>
                  </div>     
                           
                    </div>
                </div>
            </div>
        </section>


@endsection

@section('writen_scripts')
    <script type="text/javascript">
      $(document).ready(function() {

          $('select[name="provinsi"]').on('change', function() {
              var provinsi = $(this).val();
              if (provinsi) {
                  $.ajax({
                      url: "<?php echo url('/');?>/prokabkot/kabkot/" + provinsi,
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
