@extends('layouts.app')

@section('content')
<div class="container">
    <h2 class="mb-4 mt-5">Editar Pessoa</h2>
    <form action="{{ route('pessoas.update', $pessoa->id) }}" method="POST">
        @csrf
        @method('PUT')

        <div class="mb-3">
            <label for="nome" class="form-label">Nome</label>
            <input type="text" class="form-control" name="nome" id="nome" value="{{ $pessoa->nome }}" required>
        </div>

        <div class="mb-3">
            <label for="data_nascimento" class="form-label">Data de Nascimento</label>
            <input type="date" class="form-control" name="data_nascimento" id="data_nascimento" value="{{ $pessoa->data_nascimento }}" required>
        </div>

        <div class="mb-3">
            <label for="cpf" class="form-label">CPF</label>
            <input type="text" class="form-control" name="cpf" id="cpf" value="{{ $pessoa->cpf }}" required>
        </div>

        <div class="mb-3">
            <label for="sexo" class="form-label">Sexo</label>
            <select class="form-select" name="sexo" id="sexo" required>
                <option value="M" {{ $pessoa->sexo == 'M' ? 'selected' : '' }}>Masculino</option>
                <option value="F" {{ $pessoa->sexo == 'F' ? 'selected' : '' }}>Feminino</option>
                <option value="O" {{ $pessoa->sexo == 'O' ? 'selected' : '' }}>Outro</option>
            </select>
        </div>

        <div class="mb-3">
            <label for="telefone" class="form-label">Telefone</label>
            <input type="text" class="form-control" name="telefone" id="telefone" value="{{ $pessoa->telefone }}">
        </div>

        <div class="mb-3">
            <label for="email" class="form-label">E-mail</label>
            <input type="email" class="form-control" name="email" id="email" value="{{ $pessoa->email }}">
        </div>

        <button type="submit" class="btn btn-primary">Atualizar</button>
        <a href="{{ route('home.index') }}" class="btn btn-secondary">Cancelar</a>
    </form>
</div>
@endsection
