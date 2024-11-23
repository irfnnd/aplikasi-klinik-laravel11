<?php

namespace Database\Factories;
use App\Models\Pasien;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Pasien>
 */
class PasienFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    protected $model = Pasien::class;
    public function definition(): array
    {
        return [
            'no_pasien' => $this->faker->unique()->randomNumber(6),
            'nama' => $this->faker->name(),
            'umur' => $this->faker->numberBetween(20, 60),
            'jenis_kelamin' => $this->faker->randomElement(['Laki-laki', 'Perempuan']),
            'alamat' => $this->faker->address(),
        ];
    }
}
