<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class VerifyApiToken
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        // if(!$request->hasHeader('token') || $request->header('token') != 'IKK-DEV'){
        //     return response()->json([
        //         'status' => false,
        //         'message' => 'Data Forbidden'
        //     ]);
        // }

        return $next($request);
    }
}
