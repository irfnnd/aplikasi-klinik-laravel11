@extends('layouts.app_modern_laporan')

@section('content')
    <style>
        /* Gaya tambahan untuk laporan */
        .kop-surat {
            text-align: center;
            margin-bottom: 30px;
        }

        .kop-surat h2, .kop-surat h3 {
            margin: 0;
            line-height: 1.5;
        }

        .kop-surat p {
            margin: 5px 0;
            font-size: 14px;
        }

        .table {
            border-collapse: collapse;
            width: 100%;
        }

        .table th, .table td {
            border: 1px solid #000;
            padding: 8px;
            text-align: left;
        }

        .table th {
            background-color: #f2f2f2;
        }

        .table tbody tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        .table tbody tr:nth-child(odd) {
            background-color: #fff;
        }
    </style>

    <!-- Kop Surat -->
    <div class="kop-surat">
        <h2>Klinik Permata</h2>
        <h3>Laporan Data Pasien</h3>
        <p>Alamat: Jl. Contoh Alamat, Kota, Provinsi</p>
        <p>Telepon: 123-456-789 | Email: info@klinik.com</p>
        <hr>
    </div>

    <!-- Judul Laporan -->
    <h4 style="text-align: center; margin-bottom: 20px;">Laporan Data Pasien</h4>

    <!-- Tabel Data Pasien -->
    <table class="table">
        <thead>
            <tr>
                <th width="5%">No</th>
                <th>No Pasien</th>
                <th>Nama</th>
                <th>Umur</th>
                <th>Jenis Kelamin</th>
                <th>Tanggal Buat</th>
            </tr>
        </thead>
        <tbody>
            @forelse ($models as $item)
                <tr>
                    <td>{{ $loop->iteration }}</td>
                    <td>{{ $item->no_pasien }}</td>
                    <td>{{ $item->nama }}</td>
                    <td>{{ $item->umur }}</td>
                    <td>{{ $item->jenis_kelamin }}</td>
                    <td>{{ $item->created_at->format('d M Y') }}</td>
                </tr>
            @empty
                <tr>
                    <td colspan="6" class="text-center">Tidak ada data tersedia</td>
                </tr>
            @endforelse
        </tbody>
    </table>

    <!-- Tanda Tangan -->
    <div style="margin-top: 40px; text-align: right;">
        <p>Padang, {{ now()->format('d F Y') }}</p>
        <br><br>
        <p><strong>Nama Penanggung Jawab</strong></p>
    </div>
@endsection
