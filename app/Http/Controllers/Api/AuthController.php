<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function register(Request $request){
        $cek = ceKey();

        if($cek['status'] == 0){
            $nama = 'superadmin';
        }else{
            $request->request->remove('serial_key');
            $nama = $request->name;
        }

        $validasi = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required|email|unique:users,email',
            'password' => 'required',
            'confirm_password' => 'required|same:password',
        ]);

        if($validasi->fails()){
            return response()->json([
                'status' => false,
                'message' => $validasi->errors()->first()
            ]);
        }

        $data = $request->all();
        $data['id'] = uuid();
        $data['password'] = bcrypt($data['password']);
        $data['name'] = $nama;
        $user = User::create($data);

        if(!$user){
            return response()->json([
                'status' => false,
                'message' => 'Gagal membuat akun pengguna',
            ]);
        }else{
            if($cek['status'] == 0){
                verifKey($request->serial_key, $request->email);
            }
        }

        return response()->json([
            'status' => true,
            'message' => 'Berhasil Register',
            'data' => $user->toArray(),
        ]);
    }

    public function login(Request $request){
        $validasi = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required',
        ]);

        if($validasi->fails()){
            return response()->json([
                'status' => false,
                'message' => $validasi->errors(),
            ], 401);
        }

        if(!Auth::attempt($request->only('email','password'))){
            return response()->json([
                'status' => false,
                'message' => 'email dan password tidak sesuai !'
            ], 401);
        }

        $user = User::where('email', $request->email)->first();

        $token = $user->createToken($user->name.'-AuthToken')->plainTextToken;

        $response = response()->json([
            'status' => true,
            'message' => 'Berhasil Masuk',
            'access_token' => $token,
            'token_type' => 'Bearer',
        ]);

        $minutes = 60;
        $response->cookie('authToken', $token, $minutes);

        return $response;
    }

    public function logout(Request $request)
    {
        $request->user()->currentAccessToken()->delete();

        return response()->json([
            'status' => true,
            'message' => 'logout success',
        ]);
    }
}
