@extends('layouts.main_admin')
@section('title',' | Tambah Sasaran')
@section('content')

  <div class="row">
    <div class="col-lg-12">
        <div class="card card-outline-inverse">
            <div class="card-header">
                <h4 class="m-b-0 text-white">Tambah Sasaran Bapem</h4>
            </div>
           
            <div class="card-body">
                
                <div class="row">
                        <div class="col s12">

                                <div class="row">
                                    <div class="form-group col-xs12 col-md-3">
                                        
                                        <label>User</label>
                                        <div class="controls">
                                           <select class="form-control">
                                            <option value="" disabled selected>--Pilih User--</option>
                                            <option value="1">Arif Rusmandani</option>
                                            <option value="2">PPPPTK TK dan PLB</option>
                                            <option value="3">Universitas Pendidikan Indonesia</option>
                                            <option value="4">BPSDMD Jawa Barat</option>
                                            <option value="5">Universitas Ibnu Khaldun</option>
                                          </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-xs12 col-md-3">
                                      

                                        <label>Tipe Bapem</label>
                                        <div class="controls">
                                          <select class="form-control">
                                            <option value="" disabled selected>Tipe Bapem</option>
                                            <option value="1">Penguatan Pengawas</option>
                                            <option value="2">Zonasi PKP</option>
                                            <option value="3">PKB</option>
                                          </select>
                                        </div>
                                        
                                    </div>
                                    <div class="form-group col-xs12 col-md-3">
                                        
                                        <label>Penerima Bapem</label>
                                        <div class="controls">
                                        	<select class="form-control">
                                            <option value="" disabled selected>Penerima Bapem</option>
                                            <option value="Universitas Pendidikan Indonesia">Universitas Pendidikan Indonesia</option>
                                            <option value="BPSDMD">BPSDMD</option>
                                            <option value="Universitas Ibnu Khaldun">Universitas Ibnu Khaldun</option>
                                          </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-xs12 col-md-3">
                                        <label>Area Bapem</label>
                                        <div class="controls">
                                          <select class="form-control">
                                            <option value="" disabled selected>Area Bapem</option>
                                            <option value="Kab. Ciamis">Kab. Ciamis</option>
                                            <option value="Kab. Cirebon">Kab. Cirebon</option>
                                          </select>
                                        </div>
                                    </div>
                                </div>


                                <div class="row">
                                    <div class="form-group col-xs12 col-md-3">
                                       
                                        <label for="keg_nama_rkakl">Sasaran</label>
                                        <div class="controls">
                                          <input type="text" class="form-control" name="sasaran">
                                        </div>
                                    </div>

                                    <div class="form-group col-xs12 col-md-3">
                                        <label for="keg_prog_id">Satuan</label>
                                        <div class="controls">
                                          <input type="text" class="form-control" name="satuan">
                                        </div>
                                    </div>
                                    <div class="form-group col-xs12 col-md-3">
                                        <label for="keg_nama">Rupiah Bapem</label>
                                        <div class="controls">
                                            <input type="text" class="form-control" name="jabatan">
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
        </div>
    </div>
</div>


@endsection

@section('writen_scripts')

@endsection
