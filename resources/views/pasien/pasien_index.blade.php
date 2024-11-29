@extends('layouts.app_modern', ['title' => 'Data Pasien - '])
@section('content')
<div class="card">
    <h3 class="card-header">
        Data Pasien
    </h3>
    <div class="card-body">
        <!-- Tombol Tambah Data -->
        <div class="row mb-3">
            <div class="col-md-6 d-flex align-items-center">
                <a href="/pasien/create" class=" d-flex align-items-center btn btn-primary">Tambah Data  <i class="pl-2 ti ti-plus fs-4"></i></a>
            </div>
            <div class="col-md-6">
                <form class="d-flex justify-content-end">
                    <input type="text" class="form-control me-2" placeholder="Cari data..." aria-label="Search"
                        name="q" value="{{ request('q') }}">
                    <button class="btn btn-primary" type="submit">Cari </button>
                </form>
            </div>
        </div>


        <!-- Tabel Data Pasien -->
        <div class="table-responsive">
            <table class="table table-sm table-striped table-bordered table-hover">
                <thead class="">
                    <tr>
                        <th style="width: 5%;">NO</th>
                        <th style="width: 15%;">No Pasien</th>
                        <th style="width: 20%;">Nama</th>
                        <th style="width: 10%;">Umur</th>
                        <th style="width: 15%;">Jenis Kelamin</th>
                        <th style="width: 20%;">Alamat</th>
                        <th style="width: 15%;">Tanggal Buat</th>
                        <th style="width: 15%;">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse ($pasien as $item)
                        <tr>
                            <td>{{ $loop->iteration }}</td>
                            <td>{{ $item->no_pasien }}</td>
                            <td>
                                @if ($item->foto)
                                    <img src="{{ \Storage::url($item->foto) }}" width="50" class="img-thumbnail me-2"/>
                                @endif
                                {{ $item->nama }}
                            </td>
                            <td>{{ $item->umur }}</td>
                            <td>{{ $item->jenis_kelamin }}</td>
                            <td>{{ $item->alamat }}</td>
                            <td>{{ $item->created_at->format('d M Y') }}</td>
                            <td>
                                <div class="d-flex">
                                    <a href="/pasien/{{ $item->id }}/edit" class="btn btn-sm btn-warning me-2">
                                        Edit
                                    </a>
                                    <form action="/pasien/{{ $item->id }}" method="POST" class="d-inline">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-sm btn-danger" onclick="return confirm('Apakah Anda yakin ingin menghapus data ini?')">
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
            {!! $pasien->links() !!}
        </div>
    </div>
</div>
@endsection
