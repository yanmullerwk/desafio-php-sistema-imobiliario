<?php

namespace App\Http\Controllers;

use App\Models\Imovel;
use App\Models\Pessoa;
use Illuminate\Http\Request;

class ImovelController extends Controller
{
    public function index(Request $request){
        $query = Imovel::with('pessoa'); 

        if ($request->has('logradouro') && $request->filled('logradouro')) {
            $query->where('logradouro', 'like', '%' . $request->logradouro . '%');
        }
        
        $imoveis = $query->paginate(15);

        return view('imoveis.index', ['imoveis'=>$imoveis]);
    }


    public function create()
    {
        $pessoas = Pessoa::all();
        if($pessoas->isEmpty()){
            return redirect()->route('pessoas.create')->with('error','Você precisa cadastrar pelo menos uma pessoa antes de cadastrar um Imóvel');
        }
        return view('imoveis.create', ['pessoas'=>$pessoas]);
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'logradouro'   => 'required|string|max:55',
            'numero'       => 'required|string|max:7',
            'bairro'       => 'required|string|max:55',
            'complemento'  => 'nullable|string|max:55',
            'pessoa_id'    => 'required|exists:pessoas,id',
        ]);

        Imovel::create($validated);
        return redirect()->route('home.index')->with('success', 'Imóvel cadastrado com sucesso!');
    }

    public function edit($id)
    {
        $pessoas = Pessoa::all();
        $imovel = Imovel::findOrFail($id);
        return view('imoveis.edit', ['imovel' => $imovel, 'pessoas'=>$pessoas]);
    }

    public function update(Request $request, $id)
    {
        $validated = $request->validate([
            'logradouro'   => 'required|string|max:55',
            'numero'       => 'required|string|max:7',
            'bairro'       => 'required|string|max:55',
            'complemento'  => 'nullable|string|max:55',
            'pessoa_id'    => 'required|exists:pessoas,id',
        ]);

        $imovel = Imovel::findOrFail($id);
        $imovel->update($validated);

        return redirect()->route('home.index')->with('success', 'imóvel atualizado com sucesso!');
    }

    public function destroy($id)
    {
        $imovel = Imovel::findOrFail($id);
        $imovel->delete();

        return redirect()->route('home.index')->with('success', 'imóvel excluído com sucesso!');
    }
}
