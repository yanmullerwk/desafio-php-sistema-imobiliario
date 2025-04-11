<?php

namespace App\Http\Controllers;

use App\Models\Imovel;
use Illuminate\Http\Request;

class ImovelController extends Controller
{
    public function index()
    {
        $imoveis = Imovel::all();
        return view('home.index', ['imoveis' => $imoveis]);
    }
    public function create()
    {
        return view('imoveis.create');
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
        $imovel = Imovel::findOrFail($id);
        return view('imoveis.edit', ['imovel' => $imovel]);
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
