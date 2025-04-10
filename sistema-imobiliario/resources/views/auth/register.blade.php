@extends('layouts.app')
@section('title', 'Cadastrar')

@section('content')
<style>
    body {
        background-color: #f8f9fa;
    }
    .register-container {
        min-height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    .register-box {
        background-color: white;
        padding: 2rem;
        border-radius: 1rem;
        box-shadow: 0 0 20px rgba(0,0,0,0.1);
        width: 100%;
        max-width: 500px;
    }
    .btn-principal {
        width: 100%;
        background-color: #198754;
        color: white;
        border: none;
    }
    .btn-principal:hover {
        background-color: #157347;
    }
</style>

<div class="register-container">
    <div class="register-box">
        <h2 class="text-center mb-4">Cadastro</h2>

        {{-- Erros de validação --}}
        @if ($errors->any())
            <div class="alert alert-danger">
                <h6>Ocorreram os seguintes erros:</h6>
                <ul class="mb-0">
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif

        <form action="{{ route('register') }}" method="POST">
            @csrf

            <div class="mb-3">
                <label for="name" class="form-label">Nome:</label>
                <input type="text" name="name" class="form-control" placeholder="Digite um nome..." required>
            </div>

            <div class="mb-3">
                <label for="email" class="form-label">Email:</label>
                <input type="email" name="email" class="form-control" placeholder="Digite seu email..." required>
            </div>

            <div class="mb-3">
                <label for="password" class="form-label">Senha:</label>
                <input type="password" name="password" class="form-control" placeholder="Digite uma senha..." required>
            </div>

            <div class="mb-3">
                <label for="password_confirmation" class="form-label">Confirmar senha:</label>
                <input type="password" name="password_confirmation" class="form-control" placeholder="Digite a senha novamente..." required>
            </div>

            <button type="submit" class="btn btn-principal">Cadastrar</button>
        </form>
    </div>
</div>
@endsection

