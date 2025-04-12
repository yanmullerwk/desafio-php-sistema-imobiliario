@extends('layouts.app')

@section('content')
<div class="container">
    <h2 class="mb-4 mt-5">Cadastrar Pessoa</h2>

    @if ($errors->any())
    <div class="alert alert-danger">
        <h5 class="mb-2">Erro(s) no formulário:</h5>
        <ul class="mb-0">
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
    @endif

    <form action="{{ route('pessoas.store') }}" method="POST">
        @csrf

        <div class="mb-3">
            <label for="nome" class="form-label">Nome</label>
            <input type="text" class="form-control" name="nome" id="nome" required>
        </div>

        <div class="mb-3">
            <label for="data_nascimento" class="form-label">Data de Nascimento</label>
            <input type="date" class="form-control" name="data_nascimento" id="data_nascimento" required>
        </div>

        <div class="mb-3">
            <label for="cpf" class="form-label">CPF</label>
            <input type="text" class="form-control" name="cpf" id="cpf" required>
        </div>

        <div class="mb-3">
            <label for="sexo" class="form-label">Sexo</label>
            <select class="form-select" name="sexo" id="sexo" required>
                <option value="">Selecione</option>
                <option value="M" {{ old('sexo') == 'M' ? 'selected' : '' }}>Masculino</option>
                <option value="F" {{ old('sexo') == 'F' ? 'selected' : '' }}>Feminino</option>
                <option value="Outro" {{ old('sexo') == 'Outro' ? 'selected' : '' }}>Outro</option>
            </select>
        </div>

        <div class="mb-3">
            <label for="telefone" class="form-label">Telefone</label>
            <input type="text" class="form-control" name="telefone" id="telefone">
        </div>

        <div class="mb-3">
            <label for="email" class="form-label">E-mail</label>
            <input type="email" class="form-control" name="email" id="email">
        </div>

        <button type="submit" class="btn btn-success">Salvar</button>
        <a href="{{ route('home.index') }}" class="btn btn-secondary">Cancelar</a>
    </form>
</div>
@endsection
