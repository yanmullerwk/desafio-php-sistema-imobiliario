<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Imovel>
 */
class ImovelFactory extends Factory
{
    public function definition(): array
    {
        return [
            'logradouro' => $this->faker->streetName(),
            'numero' => $this->faker->buildingNumber(),
            'bairro' => $this->faker->citySuffix(),
            'complemento' => $this->faker->optional()->secondaryAddress(),
            'pessoa_id' => \App\Models\Pessoa::inRandomOrder()->first()->id ?? \App\Models\Pessoa::factory(),
        ];
    }
}
