@extends('layouts.main_admin')
@section('title',' | Tambah Sasaran')
@section('content')

  <div class="row">
    <div class="col-lg-12">
        <div class="card card-outline-inverse">
            <div class="card-header">
                <h4 class="m-b-0 text-white">Edit Sasaran Bapem</h4>
            </div>
           
            <div class="card-body">
           {!! Form::model($sasaran,array('route'=> ['sasaran.update',$sasaran->id], 'method'=>'PATCH','class'=>'form-horizontal m-t-10','novalidate'=>'novalidate')) !!}
                
                <div class="row">
                        <div class="col s12">
                                <div class="row">
                                    <div class="form-group col-xs12 col-md-3">
                                        
                                     
                                        <div class="controls">
                                           <?php $user_list = App\User::where('name', '!=', null)->pluck('name', 'id')->all();?>
                                    <label for="recipient-name" class="control-label">User:</label>
                                    <div class="controls">{!! Form::select('user_id', [''=>'Pilih User'] + $user_list, null, ['class' => 'form-control','required data-validation-required-message'=>'Tidak Boleh Kosong']) !!}</div>
                                        </div>
                                    </div>
                                    <div class="form-group col-xs12 col-md-3">
                                      

                                        <label>Tipe Bapem</label>
                                        <div class="controls">
                                          <select class="form-control">
                                            <option value="" disabled selected>Tipe Bapem</option>
                                            <option value="1" @if($sasaran->tipe_bapem == '1') selected @endif>Penguatan Pengawas</option>
                                            <option value="2" @if($sasaran->tipe_bapem == '2') selected @endif>Zonasi PKP</option>
                                            <option value="3" @if($sasaran->tipe_bapem == '3') selected @endif>PKB</option>
                                          </select>
                                        </div>
                                        
                                    </div>
                                    <div class="form-group col-xs12 col-md-3">
                                     
                                        <div class="controls">
                                        	<?php $user_list = App\User::where('name', '!=', null)->pluck('name', 'name')->all();?>
                                    <label for="recipient-name" class="control-label">Penerima Bapem:</label>
                                    <div class="controls">{!! Form::select('penerima_bapem', [''=>'Pilih Penerima'] + $user_list, null, ['class' => 'form-control','required data-validation-required-message'=>'Tidak Boleh Kosong']) !!}</div>
                                        </div>
                                    </div>
                                    <div class="form-group col-xs12 col-md-3">
                                        <label>Area Bapem</label>
                                        <div class="controls">
                                          {!! Form::text('area_bapem',null,['class'=>'form-control','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}
                                        </div>
                                    </div>
                                </div>


                                <div class="row">
                                    <div class="form-group col-xs12 col-md-3">
                                       
                                        <label for="keg_nama_rkakl">Sasaran</label>
                                        <div class="controls">
                                          {!! Form::text('sasaran',null,['class'=>'form-control','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}
                                        </div>
                                    </div>

                                    <div class="form-group col-xs12 col-md-3">
                                        <label for="keg_prog_id">Satuan</label>
                                        <div class="controls">
                                          {!! Form::text('satuan',null,['class'=>'form-control','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}
                                        </div>
                                    </div>
                                    <div class="form-group col-xs12 col-md-3">
                                        <label for="keg_nama">Rupiah Bapem</label>
                                        <div class="controls">
                                            {!! Form::text('rupiah_bapem',null,['class'=>'form-control','required data-validation-required-message'=>'Tidak Boleh Kosong'])!!}
                                        </div>
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

            </div>
            {!!Form::close()!!}
        </div>
    </div>
</div>


@endsection

@section('writen_scripts')

@endsection
