@extends('layouts.app_modern')
@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">Laporan Pendaftaran Pasien</div>
                    <div class="card-body">
                        <form action="/laporan-daftar" method="GET" target="_blank">
                            <div class="row mt-3">
                                <div class="form-group col-md-4">
                                    <label for="tanggal_mulai">Tanggal Daftar Mulai</label>
                                    <input type="date" name="tanggal_mulai" class="form-control">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="tanggal_akhir">Tanggal Daftar Akhir</label>
                                    <input type="date" name="tanggal_akhir" class="form-control">
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="poli_id">Pilih Poli</label>
                                    <select name="poli_id" class="form-control">
                                        <option value="">-- Pilih Poli --</option>
                                        @foreach ($listPoli as $item)
                                            <option value="{{ $item->id }}" @selected(old('poli_id') == $item->id)>
                                                {{ $item->nama }}
                                            </option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary mt-2">Cetak</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
