<?php

namespace App\Http\Controllers;

use App\Models\Imovel;
use App\Models\Pessoa;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index(){
        $pessoas = Pessoa::paginate(5);
        $imoveis = Imovel::paginate(5);

        return view('home.index', ['pessoas'=>$pessoas, 'imoveis'=>$imoveis]);
    }
}
