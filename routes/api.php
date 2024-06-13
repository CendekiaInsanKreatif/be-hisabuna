<?php

use App\Http\Controllers\CoaController;
use App\Http\Controllers\JurnalController;
use App\Http\Controllers\CompanyController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Report\PdfController;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Auth;

Route::get('/check', function () {
    $cek = ceKey();
    if($cek['status'] == 1){
        return response()->json([
            'status' => true,
            'message' => 'Serial Key Valid'
        ]);
    }else{
        return response()->json([
            'status' => false,
            'message' => 'Serial Key Tidak Valid'
        ]);
    }
});
Route::post('/register', [AuthController::class,'register']);
Route::post('/login', [AuthController::class,'login'])->withoutMiddleware(['auth:sanctum']);

Route::get('/unauthenticated', function () {
    return response()->json([
        'error' => 'Unauthenticated.'
    ], 401);
})->name('unauthenticated');

Route::middleware('auth:sanctum')->group(function () {

    Route::resource('users', UserController::class);

    Route::prefix('coa')->group(function () {
        Route::get('/', [CoaController::class, 'index']);
        Route::post('/add', [CoaController::class, 'add']);
        Route::post('/edit/{id}', [CoaController::class, 'edit']);
        Route::post('/delete/{id}', [CoaController::class, 'delete']);
        Route::get('/export', [CoaController::class, 'export']);
    });

    Route::prefix('company')->group(function(){
        Route::get('/', [CompanyController::class, 'index']);
        Route::post('/add', [CompanyController::class, 'add']);
        Route::post('/edit/{id}', [CompanyController::class, 'edit']);
        Route::post('/delete/{id}', [CompanyController::class, 'delete']);
    });

    Route::prefix('jurnal')->group(function () {
        Route::get('/{option?}', [JurnalController::class, 'index']);
        Route::post('/dataTable', [JurnalController::class, 'dataTable']);
        Route::post('/add', [JurnalController::class, 'add']);
        Route::post('/report/{id}', [JurnalController::class, 'report']);
        Route::get('/view/{id}', [JurnalController::class, 'view']);
        Route::post('/edit/{id}', [JurnalController::class, 'edit']);
        Route::post('/delete/{id}', [JurnalController::class, 'delete']);
    });

    Route::prefix('report')->group(function() {
        Route::get('daftar-jurnal', [PdfController::class, 'jurnalReport']);
        Route::post('buku-besar', [PdfController::class, 'bukuBesar']);
        Route::post('laba-rugi', [PdfController::class, 'labaRugi']);
        Route::post('perubahan-ekuitas', [PdfController::class, 'perubahanEkuitas']);
        Route::post('neraca-perbandingan', [PdfController::class, 'neracaPerbandingan']);
        Route::get('test-tree', function(){
            // Data awal
            $data = [
                "1" => "Aset",
                "11" => "Aset Lancar",
                "111" => "Kas dan Setara Kas",
                "1111" => "Kas",
                "1111-01" => "Kas Kecil",
                "1111-02" => "Kas Besar",
                "1112" => "Bank",
                "1112-01" => "Bank Mandiri No. Rek. 1030007709617",
                "1112-02" => "Bank Mandiri",
                "1112-08" => "Deposito",
                "112" => "Piutang Usaha",
                "1121" => "Piutang Usaha",
                "1121-01" => "Piutang Usaha",
                "113" => "Persediaan",
                "1131" => "Persediaan",
                "1131-01" => "Persediaan",
                "114" => "Piutang Pendapatan",
                "115" => "Biaya Dibayar di Muka",
                "1151" => "Biaya Dibayar di Muka",
                "1151-01" => "Sewa Dibayar di Muka",
                "1151-02" => "Talangan Gaji Karyawan",
                "116" => "Piutang Karyawan",
                "1161" => "Uang Muka Karyawan",
                "1161-01" => "Uang Muka - Hikari",
                "1161-02" => "Uang Muka -Usman",
                "1161-03" => "Uang Muka - Nabila",
                "1162" => "Pinjaman Karyawan",
                "1162-01" => "Pinjaman Karyawan",
                "12" => "Aset Tidak Lancar",
                "121" => "Aset Tetap",
                "1211" => "Aset Tetap",
                "1211-01" => "Tanah",
                "1211-02" => "Bangunan",
                "1211-03" => "Peralatan",
                "2" => "Liabilitas",
                "21" => "Hutang Lancar",
                "211" => "Hutang Usaha",
                "2111" => "Hutang Usaha",
                "2111-01" => "Hutang Usaha",
                "216" => "Hutang Pajak",
                "219" => "Hutang Lancar Lainnya",
                "22" => "Hutang Tidak Lancar",
                "221" => "Hutang Bank",
                "2211" => "Hutang Bank"
            ];

            function generateTree($data, $depth = 0)
            {
                $tree = [];
                foreach ($data as $key => $value) {
                    $keys = explode('-', $key);
                    if (count($keys) == $depth + 1) {
                        $tree[$key] = $value;
                    } elseif (count($keys) > $depth + 1) {
                        $tree[$key] = generateTree($data, $depth + 1);
                    }
                }
                return $tree;
            }

            function displayTree($tree, $depth = 0)
            {
                foreach ($tree as $key => $value) {
                    $tag = ($depth == 0) ? 'h1' : (($depth == 1) ? 'h2' : 'h3');
                    if(is_array($value)) {
                        echo "<$tag>" . $key . "</$tag><br>";
                    } else {
                        echo "<$tag>$value</$tag><br>";
                    }

                    if (is_array($value)) {
                        displayTree($value, $depth + 1);
                    }
                }
            }

            $tree = generateTree($data);

            displayTree($tree);

        });
    });

    Route::post('/logout', [AuthController::class,'logout']);
    Route::get('/user', function (Request $request) {
        $company = DB('companies')->select(['company_name','company_logo'])->first();
        $response = response()->json([
            'email' => $request->user()->email,
            'name' => $request->user()->name,
            'foto_profil' => $request->user()->foto_profil,
            'company' => $company->company_name,
            'company_logo' => $company->company_logo
        ]);
        return $response;
    });

    Route::post('/uploads', function(Request $request){
        if($request->has('image')){
            $file = $request->file('image');
            $ext = $file->getClientOriginalExtension();
            $filename = time().'.'.$ext;
            $path = 'uploads/company_logo/';
            DB('companies')->update(['company_logo' => $path.$filename]);
            $file->move($path, $filename);
        }
    });
});



Route::get('/clear', function() {

    Artisan::call('cache:clear');
    Artisan::call('config:clear');
    Artisan::call('config:cache');
    Artisan::call('view:clear');
    Artisan::call('optimize');

    return response()->json([
        'status' => true,
        'message' => 'Cache Cleared'
    ]);
 });



