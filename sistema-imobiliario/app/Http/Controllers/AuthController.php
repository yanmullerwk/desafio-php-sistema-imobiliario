<?php

namespace App\Http\Controllers;

use App\Models\User; 
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    public function showLogin()
    {
        return view('auth.login');
    }

    public function login(Request $request)
    {
        $credentials = $request->only('name', 'password');

        $user = User::where('name', $credentials['name'])->first();

        if (!$user || !Hash::check($credentials['password'], $user->password)) {
            return redirect()->back()->with('error', 'Credenciais inválidas');
        }

        Auth::login($user);

        return redirect('/home');
    }

    public function showRegister()
    {
        return view('auth.register'); 
    }

    public function register(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|unique:users', 
            'password' => 'required|string|min:3|confirmed',
        ]);

        $user = User::create([ 
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);

        Auth::login($user);

        return redirect('/home');
    }
}
