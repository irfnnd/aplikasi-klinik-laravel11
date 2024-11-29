@extends('layouts.app_modern', ['title' => 'Tambah User - '])
@section('content')
    <div class="card">
        <h4 class="card-header">Tambah User</h4>
        <div class="card-body">
            <form action="/users" method="POST">
                @csrf
                <div class="form-group mt-1 mb-3">
                    <label for="name">Nama </label>
                    <input type="text" placeholder="Nama" class="form-control @error('name') is-invalid @enderror" id="name"
                        name="name" value="{{ old('name') }}">
                    <span class="text-danger">{{ $errors->first('name') }}</span>
                </div>
                <div class="form-group mt-1 mb-3">
                    <label for="email">Alamat E-mail</label>
                    <input type="email"  placeholder="Email" class="form-control @error('email') is-invalid @enderror" id="email"
                        name="email" value="{{ old('email') }}">
                    <span class="text-danger">{{ $errors->first('email') }}</span>
                </div>
                <div class="form-group mt-1 mb-3">
                    <label for="password">Password </label>
                    <input type="password"  placeholder="Password" class="form-control @error('password') is-invalid @enderror" id="password"
                        name="password" value="{{ old('password') }}">
                    <span class="text-danger">{{ $errors->first('password') }}</span>
                </div>
                <div class="form-group mt-1 mb-3">
                    <label for="password_confirmation">Konfirmasi Password</label>
                    <input type="password"  placeholder="Konfirmasi Password" class="form-control @error('password_confirmation') is-invalid @enderror"
                        id="password_confirmation" name="password_confirmation" value="{{ old('password_confirmation') }}">
                    <span class="text-danger">{{ $errors->first('password_confirmation') }}</span>
                </div>
                <div class="form-group mt-1 mb-3">
                    <label for="role">Role</label><br>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="role" id="admin" value="admin"
                            {{ old('role') === 'admin' ? 'checked' : '' }}>
                        <label class="form-check-label" for="admin">Admin</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="role" id="user" value="user"
                            {{ old('role') === 'user' ? 'checked' : '' }}>
                        <label class="form-check-label" for="user">Operator</label>
                    </div>
                    <span class="text-danger">{{ $errors->first('role') }}</span>
                </div>
                <button type="submit" class="btn btn-primary">Simpan</button>
                <a href="/users" class="btn btn-secondary">Kembali</a>
            </form>
        </div>
    </div>
@endsection
