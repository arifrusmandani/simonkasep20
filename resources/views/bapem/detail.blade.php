@extends('layouts.main_admin')

@section('title', 'CRUD BLOG')
@section('content')
<div class="row">
    <div class="col-lg-12">
        AASDAKSJ KLASJDLAKSJDLASKJ
        <table class="table table-bordered table-hover">
            <thead>
                <tr>
                    <th>Kategori</th>
                    <td>{{ $personel_bapem->nama }}</td>
                </tr>
                <tr>
                    <th>Judul</th>
                    <td>{{ $personel_bapem->nik }}</td>
                </tr>
                <tr>
                    <th>Tanggal</th>
                    <td>{{ $personel_bapem->instansi }}</td>
                </tr>
                <tr>
                    <th>Isi</th>
                    <td>{{ $personel_bapem->hp }}</td>
                </tr>
                <tr>
                    <th>Status</th>
                    <td>{{ $personel_bapem->nip }}</td>
                </tr>
            </thead>
            
        </table>
    </div>
</div>
@endsection