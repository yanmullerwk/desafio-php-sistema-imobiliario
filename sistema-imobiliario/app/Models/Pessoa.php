<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pessoa extends Model
{
    use HasFactory;

    protected $fillable = [
        'nome',
        'data_nascimento',
        'cpf',
        'sexo',
        'telefone',
        'email',
    ];

    public function imoveis()
    {
        return $this->hasMany(Imovel::class, 'pessoa_id');
        
    }
}
