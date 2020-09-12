@extends('layouts.main_admin')
@section('title',' | Edit Tahun')
@section('content')
<div class="row">
    <div class="col-12 m-t-30">

        <div class="card card-outline-inverse text-center">
            <div class="card-header">
                <h1 class="m-b-0 text-white">Selamat Datang</h1>
            </div>
            <div class="card-body">
                <h2 class="card-text">Anda Akan Mengganti Tahun Aktif </h2>

                {!! Form::open(array('route'=> 'home_tahun_simpan','class'=>'form-horizontal')) !!}
                <div class="row align=center">


                    @php
                    $tahun = [
                    '2016'=>'2016',
                    '2017'=>'2017',
                    '2018'=>'2018',
                    '2019'=>'2019',
                    '2020'=>'2020'
                    ];
                    @endphp

                    <div class="col-md-12 col-md-offset-5">
                    <div class="form-group">
                        <h2>  {!! Form::select('tahun_terpilih', [''=>'Pilih Tahun'] + $tahun, $tahunaktif,['class'=>'form-inlin justify-content-center']) !!}</h2>
                    </div>
                    
                    </div>
                </div>

                <button type="submit" class="btn btn-primary btn-large">Simpan Perubahan Tahun Aktif</button>
                {!!Form::close()!!}

                {{-- <h2>Sebagai Tahun Aktif.</h2> --}}
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="ModalTahun" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1" aria-hidden="true" style="display: none;">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="exampleModalLabel1">Pilih Tahun Aktif</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
            </div>
            <div class="modal-body">

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
                <button id="tahun_OK" type="button" class="btn btn-primary" data-dismiss="modal">OK</button>
            </div>
        </div>
    </div>
</div>

@endsection
