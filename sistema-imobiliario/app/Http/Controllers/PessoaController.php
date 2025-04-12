<?php

namespace App\Http\Controllers;

use App\Models\Pessoa;
use Illuminate\Http\Request;

class PessoaController extends Controller
{
    

    public function index()
    {
        $pessoas = Pessoa::paginate(15);
        return view('pessoas.index',['pessoas'=>$pessoas]);
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
            'cpf' => 'required|string|max:11|unique:pessoas,cpf',
            'sexo' => 'required|in:M,F,Outro',
            'telefone' => 'nullable|string|max:20',
            'email' => 'nullable|email|unique:pessoas,email',
        ]);

        Pessoa::create($validated);
        return redirect()->route('home.index')->with('success','Pessoa criada com sucesso!');
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
            'cpf' => 'required|string|max:11|unique:pessoas,cpf,' . $id,
            'sexo' => 'required|in:M,F,Outro',
            'telefone' => 'nullable|string|max:20',
            'email' => 'nullable|email|unique:pessoas,email,' . $id,
        ]);

        Pessoa::where('id', $id)->update($validated);
        return redirect()->route('home.index')->with('success','Pessoa atualizada com sucesso!');
    }

    public function destroy($id)
    {
        Pessoa::where('id', $id)->delete();
        return redirect()->route('home.index')->with('success','Pessoa excluida com sucesso!');
    }
}
