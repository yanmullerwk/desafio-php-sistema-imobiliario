@extends('layouts.app')
@section('title', 'Bem-vindo')

@section('content')
    <div class="container-fluid">
        <div class="row">
            
            @include('partials.aside')

            <!-- Conteúdo principal -->
            <main class="col bg-light py-4">
                <div class="row">
                    <div class="col-md-11">

                    </div>
                    <div class="col-md-1 d-flex justfy-content-end">
                        <form action="{{ route('logout') }}" method="POST">
                            @csrf
                            <button type="submit" class="btn btn-sm btn-danger">Logout</button>
                        </form>
                    </div>
                </div>
                <div class="text-center mb-2">
                    <h1 class="display-5 fw-bold text-dark">🏠 Sistema de Cadastro</h1>
                    <p class="text-muted">Gerencie pessoas e imóveis cadastrados no sistema.</p>
                </div>

                <div class="card shadow">
                    <div class="card-body">
                        <h2 class="h5 fw-bold mb-4">📋 Lista de Pessoas</h2>

                        @if ($pessoas->isEmpty())
                            <div class="alert alert-secondary" role="alert">
                                Nenhuma pessoa cadastrada no momento.
                            </div>
                        @else
                            <div class="table-responsive">
                                <table class="table table-striped table-hover align-middle table-sm">
                                    <thead class="table-light">
                                        <tr>
                                            <th>#</th>
                                            <th>Nome</th>
                                            <th>cpf</th>
                                            <th>data de nascimento</th>
                                            <th>Sexo</th>
                                            <th>telefone</th>
                                            <th>email</th>
                                            <th>Ações</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($pessoas as $pessoa)
                                            <tr>
                                                <td>{{ $pessoa->id }}</td>
                                                <td>{{ $pessoa->nome }}</td>
                                                <td>{{ $pessoa->cpf }}</td>
                                                <td>{{ $pessoa->data_nascimento }}</td>
                                                <td>
                                                    @if ($pessoa->sexo == 'M')
                                                        Masculino
                                                    @elseif($pessoa->sexo == 'F')
                                                        Feminino
                                                    @else
                                                        Outro
                                                    @endif
                                                </td>
                                                <td>{{ $pessoa->telefone }}</td>
                                                <td>{{ $pessoa->email }}</td>
                                                <td>
                                                    <form action="{{ route('pessoas.edit', ['id' => $pessoa->id]) }}"
                                                        method="GET" style="display: inline;">
                                                        @csrf
                                                        <button type="submit" class="btn btn-primary btn-sm d-inline">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="12"
                                                                height="12" fill="currentColor" class="bi bi-pencil-fill"
                                                                viewBox="0 0 16 16">
                                                                <path
                                                                    d="M12.854.146a.5.5 0 0 0-.707 0L10.5 1.793 14.207 5.5l1.647-1.646a.5.5 0 0 0 0-.708zm.646 6.061L9.793 2.5 3.293 9H3.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.207zm-7.468 7.468A.5.5 0 0 1 6 13.5V13h-.5a.5.5 0 0 1-.5-.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.5-.5V10h-.5a.5.5 0 0 1-.175-.032l-.179.178a.5.5 0 0 0-.11.168l-2 5a.5.5 0 0 0 .65.65l5-2a.5.5 0 0 0 .168-.11z" />
                                                            </svg>
                                                        </button>
                                                    </form>

                                                    <form action="{{ route('pessoas.destroy', ['id' => $pessoa->id]) }}"
                                                        method="POST" style="display:inline;"
                                                        onsubmit="return confirm('Você tem certeza que deseja excluir esta pessoa?');">
                                                        @csrf
                                                        @method('delete')
                                                        <button type="submit" class="btn btn-danger btn-sm d-inline">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="12"
                                                                height="12" fill="currentColor" class="bi bi-trash-fill"
                                                                viewBox="0 0 16 16">
                                                                <path
                                                                    d="M2.5 1a1 1 0 0 1 1-1h9a1 1 0 0 1 1 1V2h1.5a.5.5 0 0 1 0 1h-1.05l-.445 12.01a2 2 0 0 1-1.995 1.99H4.49a2 2 0 0 1-1.995-1.99L2.05 3H1a.5.5 0 0 1 0-1H2.5V1Zm3.5 3.5a.5.5 0 0 0-1 0V13a.5.5 0 0 0 1 0V4.5Zm3 0a.5.5 0 0 0-1 0V13a.5.5 0 0 0 1 0V4.5Zm3 0a.5.5 0 0 0-1 0V13a.5.5 0 0 0 1 0V4.5Z" />
                                                            </svg>
                                                        </button>
                                                    </form>
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                                <div class="d-flex justify-content-between align-items-center mt-3">
                                    <div>
                                        <small>{{ $pessoas->count() }} de {{ $pessoas->total() }} registros</small>
                                    </div>
                                    <div>
                                        {{ $pessoas->links('pagination::simple-tailwind') }}
                                    </div>
                                </div>
                            </div>
                        @endif
                    </div>
                </div>
                <br>
                <div class="card shadow">
                    <div class="card-body">
                        <h2 class="h5 fw-bold mb-4">📋 Lista de Imóveis</h2>

                        @if ($imoveis->isEmpty())
                            <div class="alert alert-secondary" role="alert">
                                Nenhum imóvel cadastrado no momento.
                            </div>
                        @else
                            <div class="table-responsive">
                                <table class="table table-striped table-hover align-middle table-sm">
                                    <thead class="table-light">
                                        <tr>
                                            <th>#</th>
                                            <th>Logradouro</th>
                                            <th>Numero</th>
                                            <th>Bairro</th>
                                            <th>Complemento</th>
                                            <th>Contribuinte</th>
                                            <th>Ações</th>
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
                                                <td>
                                                    <form action="{{ route('imoveis.edit', ['id' => $imovel->id]) }}"
                                                        method="GET" style="display: inline;">
                                                        <button type="submit" class="btn btn-primary btn-sm d-inline">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="12"
                                                                height="12" fill="currentColor"
                                                                class="bi bi-pencil-fill" viewBox="0 0 16 16">
                                                                <path
                                                                    d="M12.854.146a.5.5 0 0 0-.707 0L10.5 1.793 14.207 5.5l1.647-1.646a.5.5 0 0 0 0-.708zm.646 6.061L9.793 2.5 3.293 9H3.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.207zm-7.468 7.468A.5.5 0 0 1 6 13.5V13h-.5a.5.5 0 0 1-.5-.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.5-.5V10h-.5a.5.5 0 0 1-.175-.032l-.179.178a.5.5 0 0 0-.11.168l-2 5a.5.5 0 0 0 .65.65l5-2a.5.5 0 0 0 .168-.11z" />
                                                            </svg>
                                                        </button>
                                                    </form>

                                                    <form action="{{ route('imoveis.destroy', ['id' => $imovel->id]) }}"
                                                        method="POST" style="display:inline;"
                                                        onsubmit="return confirm('Você tem certeza que deseja excluir este imóvel?');">
                                                        @csrf
                                                        @method('delete')
                                                        <button type="submit" class="btn btn-danger btn-sm d-inline">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="12"
                                                                height="12" fill="currentColor" class="bi bi-trash3"
                                                                viewBox="0 0 16 16">
                                                                <path
                                                                    d="M6.5 1h3a.5.5 0 0 1 .5.5v1H6v-1a.5.5 0 0 1 .5-.5M11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3A1.5 1.5 0 0 0 5 1.5v1H1.5a.5.5 0 0 0 0 1h.538l.853 10.66A2 2 0 0 0 4.885 16h6.23a2 2 0 0 0 1.994-1.84l.853-10.66h.538a.5.5 0 0 0 0-1zm1.958 1-.846 10.58a1 1 0 0 1-.997.92h-6.23a1 1 0 0 1-.997-.92L3.042 3.5zm-7.487 1a.5.5 0 0 1 .528.47l.5 8.5a.5.5 0 0 1-.998.06L5 5.03a.5.5 0 0 1 .47-.53Zm5.058 0a.5.5 0 0 1 .47.53l-.5 8.5a.5.5 0 1 1-.998-.06l.5-8.5a.5.5 0 0 1 .528-.47M8 4.5a.5.5 0 0 1 .5.5v8.5a.5.5 0 0 1-1 0V5a.5.5 0 0 1 .5-.5" />
                                                            </svg>
                                                        </button>
                                                    </form>
                                                </td>
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
                    </div>
                    @endif
                </div>
        </div>
        </main>
    </div>
    </div>

    @if (session('success'))
        <div class="position-fixed bottom-0 start-0 p-3" style="z-index: 9999">
            <div id="aviso-sucesso" class="toast align-items-center text-white bg-success border-0 show" role="alert"
                aria-live="assertive" aria-atomic="true">
                <div class="d-flex">
                    <div class="toast-body">
                        {{ session('success') }}
                    </div>
                    <button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast"
                        aria-label="Fechar"></button>
                </div>
            </div>
        </div>

        @if (session('error'))
            <div class="position-fixed bottom-0 start-0 p-3" style="z-index: 9999">
                <div id="aviso-erro" class="toast align-items-center text-white bg-danger border-0 show" role="alert"
                    aria-live="assertive" aria-atomic="true">
                    <div class="d-flex">
                        <div class="toast-body">
                            {{ session('error') }}
                        </div>
                        <button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast"
                            aria-label="Fechar"></button>
                    </div>
                </div>
            </div>
        @endif

        <script>
            setTimeout(() => {
                const avisoSucesso = document.getElementById('aviso-sucesso');
                if (avisoSucesso) {
                    const toast = bootstrap.Toast.getOrCreateInstance(avisoSucesso);
                    toast.hide();
                }

                const avisoErro = document.getElementById('aviso-erro');
                if (avisoErro) {
                    const toast = bootstrap.Toast.getOrCreateInstance(avisoErro);
                    toast.hide();
                }
            }, 500);
        </script>
    @endif
@endsection
