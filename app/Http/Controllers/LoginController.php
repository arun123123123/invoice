<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function showLoginForm()
    {
        return view('auth.login');
    }

    public function login(Request $request)
    {
        $request->validate([
            'email'    => 'required|email',
            'password' => 'required',
        ]);

        
        if (Auth::attempt($request->only('email', 'password'))) {

           
            if (Auth::user()->role !== 'superadmin') {

                
                Auth::logout();

                return back()->withErrors([
                    'email' => 'Only Superadmin is allowed to login.'
                ]);
            }

            
            return redirect()->route('dashboard');
        }

        
        return back()->withErrors([
            'email' => 'Invalid email or password'
        ]);
    }

    public function logout()
    {
        Auth::logout();
        return redirect()->route('login');
    }
}