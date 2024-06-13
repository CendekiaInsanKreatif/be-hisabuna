<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthCookieToken
{
    public function handle(Request $request, Closure $next)
    {
        // $token = $request->cookie('authToken');

        // dd($token);

        // if ($token) {
        //     if (Auth::onceUsingId($token)) {
        //         return $next($request);
        //     }
        // }

        // return response()->json([
        //     'status' => false,
        //     'message' => 'Unauthorized'
        // ], 401);
    }
}
