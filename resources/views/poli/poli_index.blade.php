@extends('layouts.app_modern', ['title' => 'Data Poli - '])
@section('content')
<div class="card">
    <div class="card-header">
        <h2 class="m-0">Tambah Poli</h2>
    </div>
    <div class="card-body">
        <!-- Tombol Tambah Data -->
        <div class="row mb-3">
            <div class="col-md-6">
                <a href="/poli/create" class="btn btn-primary">Tambah Data</a>
            </div>
        </div>

        <!-- Tabel Data Poli -->
        <div class="table-responsive">
            <table class="table table-sm table-striped table-bordered table-hover">
                <thead class="">
                    <tr>
                        <th style="width: 5%;">No.</th>
                        <th style="width: 30%;">Nama Poli</th>
                        <th style="width: 20%;">Biaya</th>
                        <th style="width: 35%;">Keterangan</th>
                        <th style="width: 10%;">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($poli as $item)
                        <tr>
                            <td>{{ $loop->iteration }}</td>
                            <td>{{ $item->nama }}</td>
                            <td>Rp {{ number_format($item->biaya, 0, ',', '.') }}</td>
                            <td>{{ $item->keterangan ?? '-' }}</td>
                            <td>
                                <div class="d-flex">
                                    <a href="/poli/{{ $item->id }}/edit" class="btn btn-sm btn-warning me-2">Edit</a>
                                    <form action="/poli/{{ $item->id }}" method="POST" class="d-inline">
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
            {!! $poli->links() !!}
        </div>
    </div>
</div>
@endsection
