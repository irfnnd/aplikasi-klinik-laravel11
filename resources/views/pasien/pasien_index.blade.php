@extends('layouts.app_modern', ['title' => 'Data Pasien - '])
@section('content')
<div class="card">
    <div class="card-header">
        <h2 class="m-0">Tambah Data Pasien</h2>
    </div>
    <div class="card-body">
        <!-- Tombol Tambah Data -->
        <div class="row mb-3">
            <div class="col-md-6">
                <a href="/pasien/create" class="btn btn-primary">
                    Tambah Data
                </a>
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
                        <th style="width: 15%;">Tgl Buat</th>
                        <th style="width: 15%;">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($pasien as $item)
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
                            <td>{{ $item->created_at }}</td>
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
                    @endforeach
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
