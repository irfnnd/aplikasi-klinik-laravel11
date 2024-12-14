<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Poli;
use App\Http\Requests\StorePoliRequest;
use App\Http\Requests\UpdatePoliRequest;

class PoliController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data['poli'] = Poli::latest()->paginate(20);
        return view('poli.poli_index', $data);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('poli/poli_create');

    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $requestData = $request->validate([
            'nama' => 'required',
            'keterangan' => 'nullable',
        ]);

        // Buat instance model
        $poli = new Poli();
        $poli->fill($requestData);

        $poli->save();

        // Berikan pesan sukses
        flash("Data berhasil disimpan")->success();

        // Redirect kembali ke halaman sebelumnya
        return back()->with('pesan', 'Data berhasil disimpan');
    }

    /**
     * Display the specified resource.
     */
    public function show(Poli $poli)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $data['poli'] = Poli::findOrFail($id);
        return view('poli/poli_edit', $data);

    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $requestData = $request->validate([
            'nama' => 'required',
            'keterangan' => 'nullable',
        ]);

        // Buat instance model
        $poli =  Poli::findOrFail($id);
        $poli->fill($requestData);

        $poli->save();

        // Berikan pesan sukses
        flash("Data berhasil disimpan")->success();

        // Redirect kembali ke halaman sebelumnya
        return redirect('/poli');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $poli =  Poli::findOrFail($id);

        if ($poli->daftar()->count() > 0) {
            flash('Poli sudah dilakukan pendaftaran')->warning();
            return back();
        }
        $poli->delete();
        flash('Data berhasil dihapus')->success();
        return back();
    }
}
