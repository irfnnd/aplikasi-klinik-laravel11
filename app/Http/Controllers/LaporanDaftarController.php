<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

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
        return view('daftar.laporan_daftar_index', $data, $tanggal, $tanggal2);
    }
    public function create()
    {
        $data['listPoli'] =  \App\Models\Poli::orderBy('nama', 'asc')->get();
        return view('daftar.laporan_daftar_create', $data);
    }

}
