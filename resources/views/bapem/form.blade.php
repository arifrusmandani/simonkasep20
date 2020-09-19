                        <div class="row">
                            
                        {{-- <input type="text" name="user_id" class="form-control" value="{{Auth::user()->id}}" hidden> --}}
                        <div class="col-md-12">
                        <div class="form-group">
                            <div class="controls">
                                <?php $roleName='pengguna';
                                $user_list = App\User::whereHas('roles', function ($q) use ($roleName) {
                                    $q->where('name', $roleName);})->pluck('name', 'id')->all();?>
                                    <label for="recipient-name" class="control-label">Penerima:</label>
                                    <div class="controls">{!! Form::select('user_id', [''=>'Pilih Penerima'] + $user_list, null, ['class' => 'form-control','id'=>'userid','required data-validation-required-message'=>'Tidak Boleh Kosong']) !!}</div>
                            </div>
                        </div>
                    </div>
                                   
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="tipebapem" class="control-label">Type Bapem:</label>
                                    <div class="controls">
                                        {{-- <input type="text" class="form-control" name="type_bapem" id="tipebapem"> --}}
                                        <select class="form-control" name="type_bapem" id="tipebapem">
                                            <option value="" disabled selected>Tipe Bapem</option>
                                            <option value="Penguatan KS">Penguatan KS</option>
                                            <option value="Zonasi PKP">Zonasi PKP</option>
                                            <option value="PKB">PKB</option>
                                          </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
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
                            
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="ket" class="control-label">Jumlah Sasaran:</label>
                                    <div class="controls">
                                        <input type="text" class="form-control" name="jml_sasaran" id="ket">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                              <div class="form-group">
                                 <label for="nilai" class="control-label">Nilai:</label>
                                  <div class="input-group">
                                    <span class="input-group-addon" id="rupiah">Rp</span>
                                    <input type="text" class="form-control" name="nilai" id="nilai" aria-describedby="rupiah">
                                </div>
                              </div>
                               
<!--
                                <div class="form-group">
                                    <label for="nilai" class="control-label">Nilai:</label>
                                    <div class="controls">
                                       <span class="input-group-addon" id="rupiah">Rp</span>
                                        <input type="text" class="form-control" name="nilai" id="nilai" aria-describedby="rupiah">
                                    </div>
                                </div>
-->
                            </div>
                        </div>