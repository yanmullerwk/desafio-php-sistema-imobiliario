@extends('layouts.app')

@section('content')
<div class="container mt-5">
    <h2 class="mb-4">Editar Imóvel</h2>
    <form action="{{ route('imoveis.update', $imovel->id) }}" method="POST">
        @csrf
        @method('PUT')

        <div class="mb-3">
            <label for="logradouro" class="form-label">Logradouro</label>
            <input type="text" class="form-control @error('logradouro') is-invalid @enderror" name="logradouro" id="logradouro" value="{{ old('logradouro', $imovel->logradouro) }}" required>
            @error('logradouro')
                <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>

        <div class="mb-3">
            <label for="numero" class="form-label">Número</label>
            <input type="text" class="form-control @error('numero') is-invalid @enderror" name="numero" id="numero" value="{{ old('numero', $imovel->numero) }}" required>
            @error('numero')
                <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>

        <div class="mb-3">
            <label for="bairro" class="form-label">Bairro</label>
            <input type="text" class="form-control @error('bairro') is-invalid @enderror" name="bairro" id="bairro" value="{{ old('bairro', $imovel->bairro) }}" required>
            @error('bairro')
                <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>

        <div class="mb-3">
            <label for="complemento" class="form-label">Complemento</label>
            <input type="text" class="form-control @error('complemento') is-invalid @enderror" name="complemento" id="complemento" value="{{ old('complemento', $imovel->complemento) }}">
            @error('complemento')
                <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>

        <div class="mb-3">
            <label for="pessoa_id" class="form-label">Contribuinte</label>
            <select class="form-select @error('pessoa_id') is-invalid @enderror" name="pessoa_id" id="pessoa_id" required>
                <option value="">Selecione uma pessoa</option>
                @foreach($pessoas as $pessoa)
                    <option value="{{ $pessoa->id }}" {{ old('pessoa_id', $imovel->pessoa_id) == $pessoa->id ? 'selected' : '' }}>
                        {{ $pessoa->nome }}
                    </option>
                @endforeach
            </select>
            @error('pessoa_id')
                <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>

        <button type="submit" class="btn btn-primary">Atualizar</button>
        <a href="{{ route('home.index') }}" class="btn btn-secondary">Cancelar</a>
    </form>
</div>
@endsection
