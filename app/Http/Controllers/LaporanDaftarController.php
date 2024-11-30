<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade\Pdf as PDF;
use Dompdf\Dompdf;
class LaporanDaftarController extends Controller
{
    public function index(Request $request)
    {
        $daftar = \App\Models\Daftar::query();
        if ($request->filled('tanggal_mulai')) {
            $daftar->whereDate('created_at', '>=', $request->tanggal_mulai);
        }

        if ($request->filled('tanggal_akhir')) {
            $daftar->whereDate('created_at', '<=', $request->tanggal_akhir);
        }

        if ($request->filled('poli_id')) {
            $daftar->where('poli_id', $request->poli_id);
        }
        $tanggal['tanggal'] = $request->tanggal_mulai;
        $tanggal2['tanggal2'] = $request->tanggal_akhir;
        $data['models'] = $daftar->latest()->get();
        // return view('daftar.laporan_daftar_index', $data, $tanggal, $tanggal2);
        $dompdf = new Dompdf();
        $html = view('daftar.laporan_daftar_index', $data, $tanggal, $tanggal2);

        // Memuat HTML ke DomPDF
        $dompdf->loadHtml($html);

        // Atur ukuran kertas dan orientasi
        $dompdf->setPaper('A4', 'portrait');

        // Render HTML menjadi PDF
        $dompdf->render();

        // Output PDF ke browser tanpa mendownload
        $dompdf->stream("Pendaftaran_Pasien.pdf", ["Attachment" => false]);
     }
    public function create()
    {
        $data['listPoli'] = \App\Models\Poli::orderBy('nama', 'asc')->get();
        return view('daftar.laporan_daftar_create', $data);
    }


}
