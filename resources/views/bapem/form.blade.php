                        <div class="row">
                            
                        {{-- <input type="text" name="user_id" class="form-control" value="{{Auth::user()->id}}" hidden> --}}
                        <div class="col-md-12">
                        <div class="form-group">
                            <div class="controls">
                                <?php $user_list = App\User::where('name', '!=', null)->pluck('name', 'id')->all();?>
                                    <label for="recipient-name" class="control-label">Penerima:</label>
                                    <div class="controls">{!! Form::select('user_id', [''=>'Pilih Penerima'] + $user_list, null, ['class' => 'form-control','id'=>'userid','required data-validation-required-message'=>'Tidak Boleh Kosong']) !!}</div>
                            </div>
                        </div>
                    </div>
                                   
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="tipebapem" class="control-label">Type Bapem:</label>
                                    <div class="controls">
                                        {{-- <input type="text" class="form-control" name="type_bapem" id="tipebapem"> --}}
                                        <select class="form-control" name="type_bapem" id="tipebapem">
                                            <option value="" disabled selected>Tipe Bapem</option>
                                            <option value="1">Penguatan Pengawas</option>
                                            <option value="2">Zonasi PKP</option>
                                            <option value="3">PKB</option>
                                          </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row">
                            
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="tahun" class="control-label">Tahun:</label>
                                    <div class="controls">
                                        <input type="text" class="form-control" name="tahun" id="thn">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="nama" class="control-label">Nama:</label>
                                    <div class="controls">
                                        <input type="text" class="form-control" name="nama_bapem" id="namabapem">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="ket" class="control-label">Keterangan:</label>
                                    <div class="controls">
                                        <input type="text" class="form-control" name="keterangan" id="ket">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>