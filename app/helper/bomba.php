<?php

use Ramsey\Uuid\Uuid;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;

//uuid buat id
function uuid(){
    return Uuid::uuid1()->toString();
}

function genCode(){
    $code = fake()->bothify('USR####');
    $cek = DB('users')->where('code', $code)->first();

    if($cek){
        genCode();
    }

    return $code;
}

function f_char($id){
    $x = explode('-', $id);

    $fc = array_map(function($a){
        return $a[0];
    }, $x);

    $z = implode('', $fc);

    return $z;
}


//encrypt/decrypt
function cry($string, $action = 'encrypt')
{
    $encrypt_method = "AES-256-CBC";
    $secret_key = 'AA74CDCC2BBRT935136HH7B63C27'; // user define private key
    $secret_iv = '5fgf5HJ5g27'; // user define secret key
    $key = hash('sha256', $secret_key);
    $iv = substr(hash('sha256', $secret_iv), 0, 16); // sha256 is hash_hmac_algo
    if ($action == 'encrypt') {
        $output = openssl_encrypt($string, $encrypt_method, $key, 0, $iv);
        $output = base64_encode($output);
    } else if ($action == 'decrypt') {
        $output = openssl_decrypt(base64_decode($string), $encrypt_method, $key, 0, $iv);
    }
    return $output;
}

//buat jadiin integer rupiah
function rupiah($angka=0){
    if ($angka=="") {
        $angka = 0;
    }

    $angka = filter_var($angka, FILTER_SANITIZE_NUMBER_INT);
    $hasil_rupiah = number_format($angka,0,',','.');

    return $hasil_rupiah;
}

//buat ilangin titik
function numberOnly($value=''){
    $value = str_replace('.', '', $value);
    $value = str_replace(',', '.', $value);

    return $value;
}

//terbilang nominal
function terbilang($x) {
    $angka = ["", "satu", "dua", "tiga", "empat", "lima", "enam", "tujuh", "delapan", "sembilan", "sepuluh", "sebelas"];

    if ($x < 12)
      return " " . $angka[$x];
    elseif ($x < 20)
      return terbilang($x - 10) . " belas";
    elseif ($x < 100)
      return terbilang($x / 10) . " puluh" . terbilang($x % 10);
    elseif ($x < 200)
      return "seratus" . terbilang($x - 100);
    elseif ($x < 1000)
      return terbilang($x / 100) . " ratus" . terbilang($x % 100);
    elseif ($x < 2000)
      return "seribu" . terbilang($x - 1000);
    elseif ($x < 1000000)
      return terbilang($x / 1000) . " ribu" . terbilang($x % 1000);
    elseif ($x < 1000000000)
      return terbilang($x / 1000000) . " juta " . terbilang($x % 1000000);
}



function DB($table='',){

    $su = Auth::user()->name == 'superadmin';

    if($su){
        return DB::table($table);
    }

    $cek = '';
    if($table == 'companies'){
        $cek = 'id';
    }else{
        $cek = 'company_id';
    }
    return DB::table($table)->where($cek, Auth::user()->company_id);
}

function verifKey($key, $email) {
    try {
        $body = [
            'serial_key' => $key,
            'email' => $email
        ];

        $response = Http::post('https://serverx.lokaldown.com/api/verif-key', $body);
        $statusCode = $response->status();

        if ($response->successful()) {
            return $response->json();
        } else {
            return [
                'status' => $statusCode,
                'error' => 'Request failed with status code: ' . $statusCode
            ];
        }
    } catch (\Exception $e) {
        return [
            'error' => $e->getMessage()
        ];
    }
}

// function vSerialKey(Request $request)
// {
//     $x = $request->input('key');
//     $y = $request->input('value');
//     $i = base_path('.env');

//     $edit = file_get_contents($i);

//     if (!preg_match("/^$x=/m", $edit)) {
//         $edit .= "\n$x=$y\n";
//     } else {
//         $edit = preg_replace("/^$x=.*/m", "$x=$y", $edit);
//     }

//     file_put_contents($i, $edit);
// }

function ceKey(){
    try {
        $userAdmin = DB::table('users')->where('name', 'superadmin')->first();

        if(!$userAdmin){
            return ['status' => 0, 'message' => 'User superadmin tidak ditemukan'];
        }

        $keys = $userAdmin->serial_key;

        if($keys != ""){
            $link = 'https://serverx.lokaldown.com/api/check';
            $response = Http::asForm()->post($link, ['serial_key' => $keys]);

            if($response->successful()){
                return $response->json();
            } else {
                return [
                    'status' => $response->status(),
                    'error' => 'Request failed with status code: ' . $response->status()
                ];
            }
        } else {
            return ['status' => 0, 'message' => 'Serial key kosong'];
        }
    } catch (\Exception $e) {
        return [
            'error' => $e->getMessage()
        ];
    }
}

function isParent($parent, $child)
{
    return strpos($child, $parent) === 0;
}

function da($arr) {
    echo '<pre>'.print_r($arr,1).'</pre>';
}

function userInfo(){
    $companyId = Auth::user()->company_id;
    $company = DB('companies')->select(['company_name','company_logo','company_desc'])->where(['id' => $companyId])->first();
    $response = response()->json([
        'email' => Auth::user()->email,
        'name' => Auth::user()->name,
        'foto_profil' => Auth::user()->foto_profil,
        'company' => $company->company_name,
        'company_desc' => $company->company_desc,
        'company_logo' => $company->company_logo
    ]);
    $data = $response->original;
    return $data;
}

