<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Hash;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class UsersController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
         $data['users'] = \App\Models\Users::latest()->paginate(20);
        return view('users/users_index', $data);
    }

    /**ro
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('users/users_create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // Validasi data input
        $requestData = $request->validate([
            'name' => 'required',
            'password' => 'required|min:8|confirmed',
            'email' => 'required',
            'role' => 'required|in:admin,user',
        ]);

        // Buat instance model
        $users = new \App\Models\Users();
        $users->fill($requestData);

        // Simpan data ke database
        $users->save();

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
        $data['users'] = \App\Models\Users::findOrFail($id);
        return view('users/users_edit', $data);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        // Validasi data input
        $requestData = $request->validate([
            'name' => 'required',
            'password' => 'nullable|min:8|confirmed',
            'email' => 'required|email',
            'role' => 'required|in:admin,user',
        ]);

        // Temukan pengguna berdasarkan ID
        $users = \App\Models\User::findOrFail($id);

        // Jika password diisi, hash dan perbarui
        if (!empty($request->password)) {
            $users->password = Hash::make($request->password);
        }

        // Isi data lainnya
        $users->fill($requestData);

        // Simpan data ke database
        $users->save();

        // Berikan pesan sukses
        flash("Data berhasil diperbarui")->success();

        // Redirect ke halaman sebelumnya atau daftar pengguna
        return redirect('/users');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $users =  \App\Models\users::findOrFail($id);

        $users->delete();
        flash('Data berhasil dihapus')->success();
        return back();
    }
}
