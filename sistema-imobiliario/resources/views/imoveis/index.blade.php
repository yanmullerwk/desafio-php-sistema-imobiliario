@extends('layouts.app')
@section('title', 'Bem-vindo')

@section('content')
    <div class="container-fluid">
        <div class="row">
            @include('partials.aside')
            <main class="col bg-light py-4">
                <div class="row">
                    <div class="col-md-11"></div>
                    <div class="col-md-1 d-flex justify-content-end">
                        <form action="{{ route('logout') }}" method="POST">
                            @csrf
                            <button type="submit" class="btn btn-sm btn-danger">Logout</button>
                        </form>
                    </div>
                </div>
                <div class="text-center mb-2">
                    <h1 class="display-5 fw-bold text-dark">🏠 consulta de imoveis</h1>
                </div>
                <div class="card shadow">
                    <div class="card-body">
                        <h2 class="h5 fw-bold mb-4">📋 Lista de Imóveis</h2>
                        <div class="table-responsive">
                            <form action="{{ route('imoveis.index') }}" method="GET" class="row g-3 mb-3">
                                <div class="col-md-4">
                                    <input type="text" name="logradouro" class="form-control"
                                        placeholder="Buscar por logradouro" value="{{ request('logradouro') }}">
                                </div>
                                <div class="col-auto">
                                    <button type="submit" class="btn btn-outline-primary">Filtrar</button>
                                    <a href="{{ route('imoveis.index') }}" class="btn btn-outline-secondary">Limpar</a>
                                </div>
                            </form>

                            @if ($imoveis->isEmpty())
                                <div class="alert alert-secondary" role="alert">
                                    Nenhum imóvel cadastrado no momento.
                                </div>
                            @else
                                <table class="table table-striped table-hover align-middle table-sm">
                                    <thead class="table-light">
                                        <tr>
                                            <th>#</th>
                                            <th>Logradouro</th>
                                            <th>Número</th>
                                            <th>Bairro</th>
                                            <th>Complemento</th>
                                            <th>Contribuinte</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($imoveis as $imovel)
                                            <tr>
                                                <td>{{ $imovel->id }}</td>
                                                <td>{{ $imovel->logradouro }}</td>
                                                <td>{{ $imovel->numero }}</td>
                                                <td>{{ $imovel->bairro }}</td>
                                                <td>{{ $imovel->complemento }}</td>
                                                <td>{{ $imovel->pessoa->nome }}</td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                                <div class="d-flex justify-content-between align-items-center mt-3">
                                    <div>
                                        <small>{{ $imoveis->count() }} de {{ $imoveis->total() }} registros</small>
                                    </div>
                                    <div>
                                        {{ $imoveis->links('pagination::simple-tailwind') }}
                                    </div>
                                </div>
                        </div>
                        @endif
                    </div>
                </div>
            </main>
        </div>
    </div>
@endsection
