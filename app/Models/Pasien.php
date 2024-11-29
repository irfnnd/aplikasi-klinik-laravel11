<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Nicolaslopezj\Searchable\SearchableTrait;

class Pasien extends Model
{
    use HasFactory;
    use SearchableTrait;

    protected $searchable = [

        'columns' => [
            'pasiens.nama' => 1,
            'pasiens.no_pasien' => 2,
        ]
    ];
    protected $guarded = [];

    public function daftar(): HasMany
    {
        return $this->hasMany(Daftar::class);
    }
}
