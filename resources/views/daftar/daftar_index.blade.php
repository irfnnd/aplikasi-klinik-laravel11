@extends('layouts.app_modern', ['title' => 'Data Pendaftaran - '])
@section('content')
    <div class="card">
        <h3 class="card-header">
            Data Pendaftaran
        </h3>
        <div class="card-body">
            <!-- Tombol Tambah Data -->
            <div class="row mb-3">
                <div class="col-md-6 d-flex align-items-center">
                    <a href="/daftar/create" class="btn btn-primary d-flex align-items-center">Tambah Data <i class="pl-2 ti ti-plus fs-4"></i></a>
                </div>
                <div class="col-md-6">
                    <form class="d-flex justify-content-end">
                        <input type="text" class="form-control me-2" placeholder="Cari data..." aria-label="Search"
                            name="q" value="{{ request('q') }}">
                        <button class="btn btn-primary" type="submit">Cari</button>
                    </form>
                </div>
            </div>

            <!-- Tabel Data Pendaftaran -->
            <div class="table-responsive">
                <table class="table table-striped table-bordered table-hover">
                    <thead class="">
                        <tr>
                            <th style="width: 15%;">No Pendaftaran</th>
                            <th style="width: 20%;">Nama</th>
                            <th style="width: 15%;">Jenis Kelamin</th>
                            <th style="width: 15%;">Tanggal Daftar</th>
                            <th style="width: 10%;">Poli</th>
                            <th style="width: 20%;">Keluhan</th>
                            <th style="width: 15%;">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse ($daftar as $item)
                            <tr>
                                <td>{{ $item->id }}</td>
                                <td>{{ $item->pasien->nama ?? '-' }}</td>
                                <td>{{ $item->pasien->jenis_kelamin ?? '-' }}</td>
                                <td>{{ $item->created_at->format('d M Y') }}</td>
                                <td>{{ $item->poli->nama ?? '-' }}</td>
                                <td>{{ $item->keluhan ?? '-' }}</td>
                                <td>
                                    <div class="d-flex">
                                        <a href="/daftar/{{ $item->id }}"
                                            class="btn btn-sm btn-secondary me-2">Detail</a>
                                        <form action="/daftar/{{ $item->id }}" method="POST" class="d-inline">
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" class="btn btn-sm btn-danger"
                                                onclick="return confirm('Apakah Anda yakin ingin menghapus data ini?')">
                                                Hapus
                                            </button>
                                        </form>
                                    </div>
                                </td>
                            </tr>
                        @empty
                            <tr>
                                <td colspan="8" class="text-center text-muted">
                                    <strong>Data tidak ditemukan.</strong>
                                    @if (request()->filled('q'))
                                        <br>Pencarian: <em>"{{ request('q') }}"</em>
                                    @endif
                                </td>
                            </tr>
                        @endforelse
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
