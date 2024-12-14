@extends('layouts.app_modern', ['title' => 'Data Users - '])
@section('content')
<div class="card">
    <h3 class="card-header">
        Data Pengguna
    </h3>
    <div class="card-body">
        <!-- Tombol Tambah Data -->
        <div class="row mb-3">
            <div class="col-md-6">
                <a href="/users/create" class="btn btn-primary">Tambah Data <i class=" ti ti-plus fs-4"></i></a>
            </div>
        </div>

        <!-- Tabel Data Poli -->
        <div class="table-responsive">
            <table class="table table-sm table-striped table-bordered table-hover">
                <thead class="">
                    <tr>
                        <th style="width: 5%;">No.</th>
                        <th style="width: 30%;">Nama</th>
                        <th style="width: 20%;">Alamat E-mail</th>
                        <th style="width: 35%;">Role</th>
                        <th style="width: 10%;">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse ($users as $item)
                        <tr>
                            <td>{{ $loop->iteration }}</td>
                            <td>{{ $item->name }}</td>
                            <td>{{ $item->email}}</td>
                            <td>{{ $item->role }}</td>
                            <td>
                                <div class="d-flex">
                                    <a href="/users/{{ $item->id }}/edit" class="btn btn-sm btn-warning me-2">Edit</a>
                                    <form action="/users/{{ $item->id }}" method="POST" class="d-inline">
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
            {!! $users->links() !!}
        </div>
    </div>
</div>
@endsection
