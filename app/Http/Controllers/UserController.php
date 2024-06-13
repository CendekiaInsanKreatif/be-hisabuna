<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use App\Models\User;

class UserController extends Controller
{
    public function index()
    {
        $users = DB('users')->get()->toArray();
        $companies = DB('companies')->get()->toArray();

        foreach ($users as $user) {
            foreach ($companies as $company) {
                if ($user->company_id == $company->id) {
                    $user->company_id = $company;
                }
            }
        }

        return response()->json($users);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        $data['id'] = uuid();
        $data['password'] = bcrypt($data['password']);
        $data['company_id'] = Auth::user()->company_id;
        $data['code'] = genCode();

        $validasi = Validator::make($data, [
            'name' => 'required',
            'email' => 'required|email|unique:users,email',
            'password' => 'required'
        ]);

        if ($validasi->fails()) {
            return response()->json([
                'status' => 0,
                'message' => $validasi->errors()->first()
            ]);
        }

        $buat = User::create($data);
        if(!$buat){
            return response()->json([
                'status' => 0,
                'message' => 'Gagal membuat data pengguna !'
            ]);
        }

        return response()->json([
            'status' => 1,
            'message' => 'Berhasil add user !'
        ]);
    }

    public function show(string $id)
    {
        $data = DB('users')->where(['id' => $id])->first();
        if(!$data){
            return response()->json([
                'status' => 0,
                'message' => 'data tidak ditemukan !',
                'data' => []
            ]);
        }

        return response()->json([
            'status' => 1,
            'message' => 'data berhasil ditemukan !',
            'data' => $data
        ]);
    }

    public function update(Request $request, string $id)
    {
        $find = DB('users')->where('id', $id)->first();

        if(!password_verify($request->password, $find->password)){
            return response()->json([
                'status' => 0,
                'message' => 'Gagal update, password verifikasi tidak sesuai !'
            ]);
        }

        $data = $request->all();
        if(isset($data['password'])) {
            $data['password'] = bcrypt($data['password']);
        }

        $update = DB('users')->where('id', $id)->update($data);

        if(!$update){
            return response()->json([
                'status' => 0,
                'message' => 'gagal update user !'
            ]);
        }

        return response()->json([
            'status' => 1,
            'message' => 'berhasil update user !'
        ]);
    }

    public function destroy(string $id)
    {
        $data = DB('users')->where('id', $id)->delete();

        if ($data) {
            return response()->json([
                'status' => 1,
                'message' => 'Data pengguna berhasil dihapus'
            ]);
        } else {
            return response()->json([
                'status' => 0,
                'message' => 'Gagal menghapus data pengguna'
            ]);
        }
    }
}
