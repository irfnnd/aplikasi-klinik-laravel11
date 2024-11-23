@extends('layouts.app_modern', ['title' => 'Data Pendaftaran - '])
@section('content')
<div class="card">
    <div class="card-header">
        <h2 class="m-0">Tambah Data Pendaftaran</h2>
    </div>
    <div class="card-body">
        <!-- Tombol Tambah Data -->
        <div class="row mb-3">
            <div class="col-md-6">
                <a href="/daftar/create" class="btn btn-primary">Tambah Data</a>
            </div>
        </div>

        <!-- Tabel Data Pendaftaran -->
        <div class="table-responsive">
            <table class="table table-striped table-bordered table-hover">
                <thead class="">
                    <tr>
                        <th style="width: 5%;">No</th>
                        <th style="width: 15%;">No Pendaftaran</th>
                        <th style="width: 20%;">Nama</th>
                        <th style="width: 10%;">Jenis Kelamin</th>
                        <th style="width: 15%;">Tanggal Daftar</th>
                        <th style="width: 15%;">Poli</th>
                        <th style="width: 20%;">Keluhan</th>
                        <th style="width: 15%;">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($daftar as $item)
                        <tr>
                            <td>{{ $loop->iteration }}</td>
                            <td>{{ $item->id }}</td>
                            <td>{{ $item->pasien->nama }}</td>
                            <td>{{ $item->pasien->jenis_kelamin }}</td>
                            <td>{{ $item->created_at->format('d-m-Y') }}</td>
                            <td>{{ $item->poli->nama }}</td>
                            <td>{{ $item->keluhan }}</td>
                            <td>
                                <div class="d-flex">
                                    <a href="/daftar/{{ $item->id }}/edit" class="btn btn-sm btn-warning me-2">Edit</a>
                                    <form action="/daftar/{{ $item->id }}" method="POST" class="d-inline">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-sm btn-danger" onclick="return confirm('Apakah Anda yakin ingin menghapus data ini?')">
                                            Hapus
                                        </button>
                                    </form>
                                </div>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>

        <!-- Pagination -->
        <div class="mt-3">
            {!! $daftar->links() !!}
        </div>
    </div>
</div>
@endsection
