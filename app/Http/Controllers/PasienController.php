<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class PasienController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data['pasien'] = \App\Models\Pasien::latest()->paginate(20);
        return view('pasien/pasien_index', $data);
    }

    /**ro
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('pasien/pasien_create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // Validasi data input
        $requestData = $request->validate([
            'no_pasien' => 'required|unique:pasiens,no_pasien',
            'nama' => 'required|min:3',
            'umur' => 'required|numeric',
            'jenis_kelamin' => 'required|in:Laki-laki,Perempuan',
            'alamat' => 'nullable', // alamat boleh kosong
            'foto' => 'nullable|image|mimes:jpeg,png,jpg|max:5048' // file foto opsional
        ]);

        // Buat instance model
        $pasien = new \App\Models\Pasien();
        $pasien->fill($requestData);

        // Simpan file jika ada
        if ($request->hasFile('foto')) {
            $pasien->foto = $request->file('foto')->store('uploads', 'public'); // Simpan ke storage/uploads
        }

        // Simpan data ke database
        $pasien->save();

        // Berikan pesan sukses
        flash("Data berhasil disimpan")->success();

        // Redirect kembali ke halaman sebelumnya
        return back()->with('pesan', 'Data berhasil disimpan');
    }


    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $data['pasien'] = \App\Models\Pasien::findOrFail($id);
        return view('pasien/pasien_edit', $data);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
         // Validasi data input
         $requestData = $request->validate([
            'nama' => 'required|min:3',
            'umur' => 'required|numeric',
            'jenis_kelamin' => 'required|in:Laki-laki,Perempuan',
            'alamat' => 'nullable', // alamat boleh kosong
            'foto' => 'nullable|image|mimes:jpeg,png,jpg|max:5048' // file foto opsional
        ]);

        // Buat instance model
        $pasien =  \App\Models\Pasien::findOrFail($id);
        $pasien->fill($requestData);

        // Simpan file jika ada
        if ($request->hasFile('foto')) {
            Storage::delete($pasien->foto);
            $pasien->foto = $request->file('foto')->store('uploads', 'public'); // Simpan ke storage/uploads
        }

        // Simpan data ke database
        $pasien->save();

        // Berikan pesan sukses
        flash("Data berhasil disimpan")->success();

        // Redirect kembali ke halaman sebelumnya
        return redirect('/pasien');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $pasien =  \App\Models\Pasien::findOrFail($id);

        if ($pasien->daftar()->count() > 0) {
            flash('Pasien sudah melakukan pendaftaran')->warning();
            return back();
        }
        if ($pasien->foto != null && Storage::exists($pasien->foto)) {
            Storage::delete($pasien->foto);
        }
        $pasien->delete();
        flash('Data berhasil dihapus')->success();
        return back();
    }
}
