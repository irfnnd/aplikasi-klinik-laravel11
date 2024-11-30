<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Dompdf\Dompdf;

class LaporanPasienController extends Controller
{
    public function index(Request $request)
    {
        $pasien = \App\Models\Pasien::query();
        if ($request->filled('tanggal_mulai')) {
            $pasien->whereDate('created_at', '>=', $request->tanggal_mulai);
        }

        if ($request->filled('tanggal_selesai')) {
            $pasien->whereDate('created_at', '<=', $request->tanggal_selesai);
        }

        if ($request->filled('jenis_kelamin') && $request->jenis_kelamin != 'semua') {
            $pasien->where('jenis_kelamin', $request->jenis_kelamin);
        }
        $tanggal['tanggal'] = $request->tanggal_mulai;
        $tanggal2['tanggal2'] = $request->tanggal_akhir;
        $data['models'] = $pasien->latest()->get();
        $dompdf = new Dompdf();
        $html = view('pasien.laporan_pasien_index', $data, $tanggal, $tanggal2);

        // Memuat HTML ke DomPDF
        $dompdf->loadHtml($html);

        // Atur ukuran kertas dan orientasi
        $dompdf->setPaper('A4', 'portrait');

        // Render HTML menjadi PDF
        $dompdf->render();

        // Output PDF ke browser tanpa mendownload
        $dompdf->stream("Data-Pasien.pdf", ["Attachment" => false]);
    }
    public function create()
    {
        return view('pasien.laporan_pasien_create');
    }
}
