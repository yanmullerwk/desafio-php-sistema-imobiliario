@extends('layouts.app')
@section('title', 'Bem-vindo')

@section('content')
<div class="container-fluid">
    <div class="row">
        @include('partials.aside')


        <!-- Conteúdo principal -->
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
                <h1 class="display-5 fw-bold text-dark">Listagem de pessoas</h1>
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
                                        <th>CPF</th>
                                        <th>Data de Nascimento</th>
                                        <th>Sexo</th>
                                        <th>Telefone</th>
                                        <th>Email</th>
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
        </main>
    </div>
</div>
@endsection

