@extends('layouts.app')
@section('title', 'Bem-vindo')

@section('content')

<header class="bg-white shadow-sm w-100 mb-4">
    <div class="container py-3">
        <div class="d-flex justify-content-between align-items-center mb-5">
            <h5 class="mb-0 text-secondary">Bem-vindo(a), <strong>{{ auth()->user()->name }}</strong>!</h5>
            <form action="{{route('logout')}}" method="POST">
                @csrf
                <button type="submit" class="btn btn-danger">Logout</button>
            </form>
        </div>

        <div class="text-center">
            <h1 class="display-5 fw-bold text-dark">🏠 Sistema de Cadastro</h1>
            <p class="text-muted">Gerencie pessoas e imóveis cadastrados no sistema.</p>
        </div>
    </div>
</header>

<main class="bg-light py-5">
    <div class="container">

        <div class="card shadow mb-5">
            <div class="card-body text-center">
                <p class="text-secondary mb-4">Selecione uma das opções abaixo para começar:</p>
                <div class="row g-3 justify-content-center">
                    <div class="col-md-4">
                        <a href="{{ route('pessoas.create') }}" class="btn btn-primary w-100 py-3 fw-semibold">
                            👤 Cadastrar Pessoa
                        </a>
                    </div>
                    <div class="col-md-4">
                        <a href="{{ route('imoveis.create') }}" class="btn btn-success w-100 py-3 fw-semibold">
                            🏡 Cadastrar Imóvel
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <div class="card shadow">
            <div class="card-body">
                <h2 class="h4 fw-bold mb-4">📋 Lista de Imóveis</h2>

                @if($imoveis->isEmpty())
                    <div class="alert alert-secondary" role="alert">
                        Nenhum imóvel cadastrado no momento.
                    </div>
                @else
                    <div class="table-responsive">
                        <table class="table table-striped table-hover align-middle">
                            <thead class="table-light">
                                <tr>
                                    <th scope="col">ID</th>
                                    <th scope="col">Logradouro</th>
                                    <th scope="col">Bairro</th>
                                    <th scope="col">Número</th>
                                    <th scope="col">Ações</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($imoveis as $imovel)
                                    <tr>
                                        <td>{{ $imovel->id }}</td>
                                        <td>{{ $imovel->logradouro }}</td>
                                        <td>{{ $imovel->bairro }}</td>
                                        <td>{{ $imovel->numero }}</td>
                                        <td>
                                            <a href="{{ route('imoveis.show', $imovel->id) }}" class="btn btn-outline-primary btn-sm">
                                                🔍 Ver
                                            </a>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                @endif
            </div>
        </div>

    </div>
</main>
@endsection
