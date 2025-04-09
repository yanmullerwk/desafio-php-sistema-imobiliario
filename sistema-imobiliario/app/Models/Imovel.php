<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Imovel extends Model
{
    use HasFactory;

    protected $fillable = [
        'logradouro',
        'numero',
        'bairro',
        'complemento',
        'contribuinte_id',
    ];

    public function pessoa()
    {
        return $this->belongsTo(Pessoa::class);
    }
}
