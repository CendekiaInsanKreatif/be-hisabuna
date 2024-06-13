<?php

namespace App\Http\Controllers\Report;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class PdfController extends Controller
{
    public function jurnalReport(){
        $data = DB('jurnal_headers')->select(['id','jurnal_tgl','voucher','keterangan','company_id','lampiran','trans_no','subtotal'])->orderBy('jurnal_tgl')->orderBy('trans_no')->get();
        $data = $data->toArray();
        $user = Auth::user();
        $userInfo = userInfo();
        $pdf = Pdf::loadView('report.daftar_jurnal', compact('userInfo','data'));
        return $pdf->download('daftar_'.'jurnal_'.Auth::user()->company.date('Y-m-d').'.pdf');
    }

    public function bukuBesar(Request $request){
        $jurnalData = DB::table('jurnal_headers as jh')
            ->leftJoin('jurnal_details as jd', 'jd.jurnal_id', '=', 'jh.id')
            ->leftJoin('coas as c', 'c.akun_no', '=', 'jd.jurnal_akun')
            ->select(
                'jh.jurnal_tgl',
                'c.akun_no',
                'c.akun_nama',
                'jd.debit',
                'jd.credit',
                'jh.subtotal'
            )
            ->where('jh.company_id', Auth::user()->company_id)
            ->whereBetween('jh.jurnal_tgl', [$request->tgl_awal, $request->tgl_akhir])
            ->orderBy('jh.jurnal_tgl')
            ->get();

        $bukuBesar = [];

        foreach ($jurnalData as $data) {
            $akunNo = $data->akun_no;
            $akunNama = $data->akun_nama;

            if (!isset($bukuBesar[$akunNo])) {
                $bukuBesar[$akunNo] = [
                    'akun_no' => $akunNo,
                    'akun_nama' => $akunNama,
                    'details' => [],
                    'saldo_akhir' => 0
                ];
            }

            $bukuBesar[$akunNo]['saldo_akhir'] += $data->debit - $data->credit;

            $bukuBesar[$akunNo]['details'][] = [
                'jurnal_tgl' => date('d M Y', strtotime($data->jurnal_tgl)),
                'debit' => $data->debit,
                'credit' => $data->credit,
                'subtotal' => $data->subtotal,
                'saldo_akhir' => $bukuBesar[$akunNo]['saldo_akhir']
            ];
        }

        $userInfo = userInfo();

        $pdf = Pdf::loadView('report.buku_besar', compact('bukuBesar','userInfo'));
        return $pdf->download('buku_'.'besar_'.$request->akun_no.'_'.Auth::user()->company.'_'.date('Y-m-d').'.pdf');
    }

    public function labaRugi(Request $request){
        $awal = $request->tgl_awal;
        $akhir = $request->tgl_akhir;
        $data = [];

        $pendapatan = DB('jurnal_headers')
                    ->select('keterangan', DB::raw('SUM(subtotal) as total_pendapatan'))
                    ->where('voucher', 'RV')
                    ->groupBy('keterangan')
                    ->get()->map(function ($item) {
                        $item->total_pendapatan = number_format($item->total_pendapatan, 0, ',', '.');
                        return $item;
                    })->toArray();

        $totalPendapatan = array_sum(array_map(function($item) {
            return (int) str_replace('.', '', $item->total_pendapatan);
        }, $pendapatan));

        $beban = DB('jurnal_headers')
                  ->select('keterangan', DB::raw('SUM(subtotal) as total_beban'))
                  ->where('voucher', 'PV')
                  ->groupBy('keterangan')
                  ->get()->map(function ($item) {
                        $item->total_beban = number_format($item->total_beban, 0, ',', '.');
                        return $item;
                    })->toArray();

        $totalBeban = array_sum(array_map(function($item) {
            return (int) str_replace('.', '', $item->total_beban);
        }, $beban));

        $data['pendapatan'] = $pendapatan;
        $data['total_pendapatan'] = number_format($totalPendapatan, 0, ',', '.');
        $data['beban'] = $beban;
        $data['total_beban'] = number_format($totalBeban, 0, ',', '.');
        $data['hasil'] = number_format($totalPendapatan-$totalBeban, 0, ',', '.');

        $userInfo = userInfo();

        $pdf = Pdf::loadView('report.laba_rugi', compact('data', 'userInfo','awal','akhir'));
        return $pdf->download('laba_rugi_'.Auth::user()->company.'_'.date('Y-m-d').'.pdf');
    }

    public function perubahanEkuitas(Request $request){
        $queryResult = DB::table('jurnal_headers as jh')
            ->leftJoin('jurnal_details as jd', 'jd.jurnal_id', '=', 'jh.id')
            ->select(
                'jh.subtotal as modal_awal',
                DB::raw("(SELECT SUM(subtotal) - (SELECT SUM(subtotal) FROM jurnal_headers WHERE voucher = 'RV') FROM jurnal_headers WHERE voucher = 'PV') as laba_rugi"),
                DB::raw("SUM(jh.subtotal - (SELECT SUM(subtotal) - (SELECT SUM(subtotal) FROM jurnal_headers WHERE voucher = 'RV') FROM jurnal_headers WHERE voucher = 'PV')) as modal_akhir")
            )
            ->where('jd.jurnal_no', 'JV-1')
            ->limit(1)
            ->first();

        $data = [
            'modal_awal' => number_format($queryResult->modal_awal, 0, ',', '.'),
            'laba_rugi' => number_format($queryResult->laba_rugi, 0, ',', '.'),
            'modal_akhir' => number_format($queryResult->modal_akhir, 0, ',', '.')
        ];

        $userInfo = userInfo();

        $pdf = Pdf::loadView('report.perubahan_ekuitas', compact('data', 'userInfo'));
        return $pdf->download('perubahan_ekuitas_'.Auth::user()->company.'_'.date('Y-m-d').'.pdf');
    }

    public function neracaPerbandingan(Request $request){
        $awal = $request->tgl_awal;
        $akhir = $request->tgl_akhir;
        $saldoAwalAset = DB('jurnal_details')
            ->join('jurnal_headers', 'jurnal_details.jurnal_id', '=', 'jurnal_headers.id')
            ->where('jurnal_headers.jurnal_tgl', '<', $request->tgl_awal)
            ->whereIn('jurnal_details.jurnal_akun', function($query){
                $query->select('akun_no')->from('coas')->where('akun_no', 'like', '1%');
            })
            ->selectRaw('SUM(jurnal_details.debit) - SUM(jurnal_details.credit) as saldo_awal')
            ->first();

        $saldoAwalKewajibanDanModal = DB('jurnal_details')
            ->join('jurnal_headers', 'jurnal_details.jurnal_id', '=', 'jurnal_headers.id')
            ->where('jurnal_headers.jurnal_tgl', '<', $request->tgl_awal)
            ->whereIn('jurnal_details.jurnal_akun', function($query){
                $query->select('akun_no')->from('coas')->where('akun_no', 'like', '2%')
                      ->orWhere('akun_no', 'like', '3%');
            })
            ->selectRaw('SUM(jurnal_details.credit) - SUM(jurnal_details.debit) as saldo_awal')
            ->first();

        $periodeAset = DB('jurnal_details')
            ->join('jurnal_headers', 'jurnal_details.jurnal_id', '=', 'jurnal_headers.id')
            ->whereBetween('jurnal_headers.jurnal_tgl', [$request->tgl_awal, $request->tgl_akhir])
            ->whereIn('jurnal_details.jurnal_akun', function($query){
                $query->select('akun_no')->from('coas')->where('akun_no', 'like', '1%');
            })
            ->selectRaw('SUM(jurnal_details.debit) - SUM(jurnal_details.credit) as periode')
            ->first();

        $periodeKewajibanDanModal = DB('jurnal_details')
            ->join('jurnal_headers', 'jurnal_details.jurnal_id', '=', 'jurnal_headers.id')
            ->whereBetween('jurnal_headers.jurnal_tgl', [$request->tgl_awal, $request->tgl_akhir])
            ->whereIn('jurnal_details.jurnal_akun', function($query){
                $query->select('akun_no')->from('coas')->where('akun_no', 'like', '2%')
                      ->orWhere('akun_no', 'like', '3%');
            })
            ->selectRaw('SUM(jurnal_details.credit) - SUM(jurnal_details.debit) as periode')
            ->first();
        $data = [
            'SaldoAwal' => [
                'Aset' => $saldoAwalAset->saldo_awal,
                'KewajibanDanModal' => $saldoAwalKewajibanDanModal->saldo_awal,
            ],
            'Periode' => [
                'Aset' => $periodeAset->periode,
                'KewajibanDanModal' => $periodeKewajibanDanModal->periode,
            ]
        ];

        $userInfo = userInfo();
        $pdf = Pdf::loadView('report.neraca_perbandingan', compact('data', 'userInfo', 'request','awal','akhir'));
        return $pdf->download('neraca_perbandingan_'.Auth::user()->company.'_'.date('Y-m-d').'.pdf');
    }
}
