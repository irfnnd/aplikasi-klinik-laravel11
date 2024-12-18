<?php

namespace App\Http\Controllers;

use App\Models\Daftar;
use App\Http\Requests\StoreDaftarRequest;
use App\Http\Requests\UpdateDaftarRequest;
use Illuminate\Http\Request;

class DaftarController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        if(request()->filled('q')){
            $daftar = Daftar::search(request('q'))->paginate(20);
        }else{
            $daftar = Daftar::with('pasien')->latest()->paginate(20);
        }
        return view('daftar.daftar_index', compact('daftar'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $data['listPasien'] = \App\Models\Pasien::orderBy('nama', 'asc')->get();
        $data['listPoli'] =  \App\Models\Poli::orderBy('nama', 'asc')->get();
        return view('daftar.daftar_create', $data);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $requestData = $request->validate([
            'tanggal_daftar' => 'required',
            'pasien_id' => 'required',
            'poli_id' => 'required',
            'keluhan' => 'required'
        ]);

        $daftar = new Daftar();
        $daftar->fill($requestData);
        $daftar->save();

        // Berikan pesan sukses
        flash("Data berhasil disimpan")->success();

        // Redirect kembali ke halaman sebelumnya
        return back()->with('pesan', 'Data berhasil disimpan');

    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $data['daftar'] = Daftar::findOrFail($id);
        return view('daftar.daftar_show', $data);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Daftar $daftar)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $requestData = $request->validate([
            'tindakan' => 'required',
            'diagnosis' => 'required',
        ]);
        $daftar = Daftar::findOrFail($id);
        $daftar->fill($requestData);
        $daftar->save();
        flash('Data berhasil disimpan')->success();
        return back();

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Daftar $daftar)
    {
        $daftar->delete();
        flash('Data berhasil dihapus')->success();
        return back();
    }
}
