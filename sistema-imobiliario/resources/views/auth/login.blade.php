@extends('layouts.app')
@section('title', 'Login')
@section('content')
<style>
    body {
        background-color: #f8f9fa;
    }
    .login-container {
        min-height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    .login-box {
        background-color: white;
        padding: 2rem;
        border-radius: 1rem;
        box-shadow: 0 0 20px rgba(0,0,0,0.1);
        width: 100%;
        max-width: 400px;
    }
    .btn-principal {
        width: 100%;
        background-color: #0d6efd;
        color: white;
        border: none;
    }
    .btn-principal:hover {
        background-color: #0b5ed7;
    }
</style>

<div class="login-container">
    <div class="login-box">
        <h2 class="text-center mb-4">Login</h2>
        @if(session('error'))
            <div class="alert alert-danger text-center">
                {{ session('error') }}
            </div>
        @endif
        <form action="{{ route('login') }}" method="POST">
            @csrf
            <div class="mb-3">
                <label for="name" class="form-label">Usuário:</label>
                <input type="text" name="name" id="name" class="form-control" placeholder="Usuário" required>
            </div>

            <div class="mb-3">
                <label for="password" class="form-label">Senha:</label>
                <input type="password" name="password" id="password" class="form-control" placeholder="Digite sua senha..." required>
            </div>

            <button type="submit" class="btn btn-principal">Login</button>
        </form>

        <div class="text-center mt-4">
            <p>Não possui usuário?</p>
            <a href="{{ route('register.form') }}">Cadastrar-se</a>
        </div>
    </div>
</div>
@endsection
