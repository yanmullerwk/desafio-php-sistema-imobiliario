<?php

namespace App\Http\Controllers;

use App\Models\Pessoa;
use Illuminate\Http\Request;

class PessoaController extends Controller
{
    public function index()
    {
        $pessoas = Pessoa::all();
        return view('pessoas.index', ['pessoas' => $pessoas]);
    }

    public function show($id)
    {
        $pessoa = Pessoa::with('imoveis')->findOrFail($id);
        return view('pessoas.show', compact('pessoa'));
    }


    public function create()
    {
        return view('pessoas.create');
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'nome' => 'required|string|max:255',
            'data_nascimento' => 'required|date',
            'cpf' => 'required|string|max:14|unique:pessoas,cpf',
            'sexo' => 'required|in:masculino,feminino,outro',
            'telefone' => 'nullable|string|max:20',
            'email' => 'nullable|email|unique:pessoas,email',
        ]);

        Pessoa::create($validated);
        return redirect()->route('pessoas.index');
    }

    public function edit($id)
    {
        $pessoa = Pessoa::findOrFail($id);
        return view('pessoas.edit', ['pessoa' => $pessoa]);
    }

    public function update(Request $request, $id)
    {
        $validated = $request->validate([
            'nome' => 'required|string|max:255',
            'data_nascimento' => 'required|date',
            'cpf' => 'required|string|max:14|unique:pessoas,cpf,' . $id,
            'sexo' => 'required|in:masculino,feminino,outro',
            'telefone' => 'nullable|string|max:20',
            'email' => 'nullable|email|unique:pessoas,email,' . $id,
        ]);

        Pessoa::where('id', $id)->update($validated);
        return redirect()->route('pessoas.index');
    }

    public function destroy($id)
    {
        Pessoa::where('id', $id)->delete();
        return redirect()->route('pessoas.index');
    }
}
