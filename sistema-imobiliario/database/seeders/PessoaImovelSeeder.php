<?php

namespace Database\Seeders;

use App\Models\Imovel;
use App\Models\Pessoa;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class PessoaImovelSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Cria 100 pessoas
    Pessoa::factory(100)->create();

    // Cria 100 imóveis (cada um vinculado a uma pessoa aleatória)
    Imovel::factory(100)->create();
    }
}
