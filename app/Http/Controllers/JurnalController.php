<?php

namespace App\Http\Controllers;

use Exception;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade\Pdf;
use DateTime;
use Illuminate\Support\Collection;

class JurnalController extends Controller
{

    public function index($option='default'){

        $select = [
            'select' => [
                'id',
                'voucher',
                'trans_no',
                'jurnal_tgl',
                'keterangan',
                'company_id',
                'subtotal',
                'lampiran'
            ],
        ];

        if($option == 'detail'){
            $select['detail'] = [
                [
                    'table' => 'jurnal_details',
                    'foreign' => [
                        'jurnal_id' => 'id'
                    ],
                    'select' => ['*']
                ],
            ];
        }

        $data = $this->Resdata('jurnal_headers',$select);

        return $this->printJSON($data);
    }

    public function view($id = ""){
        $data = DB('jurnal_headers')->where(['id' => $id])->first();
        if(!$data){
            return response()->json([
                'status' => false,
                'message' => 'data tidak ditemukan !'
            ]);
        }
        $dataDetail = DB('jurnal_details')->where(['jurnal_id' => $id])->get();
        foreach($dataDetail as $key => $val){
            $company = DB('companies')->first();
            $dataAkun = DB('coas')->where(['akun_no' => $val->jurnal_akun])->first();
            $data->company_id = $company;
            $dataDetail[$key]->jurnal_akun = $dataAkun;
        }

        $data->detail = $dataDetail;

        return $this->printJSON($data);
    }

    public function dataTable(){

        $data = $this->ResdataTable('jurnal_headers',[
            'select' => ['id','voucher','trans_no','jurnal_tgl','keterangan','lampiran','company_id']
        ]);

        return $this->printJSON($data);
    }

    public function add()
    {
        $this->mulai();
        $data = $this->req;




        try {
            if (!is_array($data['voucher'])) {
                $data['jurnal_tgl'] = array($data['tanggalTrans']);
                $data['keterangan'] = array($data['nama']);
                $data['lampiran'] = array($data['lampiran']);
                $data['voucher'] = array($data['voucher']);
                $data['totalDebit'] = array($data['totalDebit']);
            }

            foreach ($data['voucher'] as $index => $voucher) {
                $trans_no = DB('jurnal_headers')->where('voucher', $voucher)->count() + 1;
                $tanggal = new DateTime($data['tanggalTrans']);
                $id = uuid();

                $headerData = [
                    'id' => $id,
                    'voucher' => $voucher,
                    'trans_no' => $trans_no,
                    'jurnal_tgl' => $tanggal->format('Y-m-d H:i:s'),
                    'keterangan' => $data['nama'],
                    'lampiran' => $data['lampiran'][$index],
                    'subtotal' => $data['totalDebit'][$index],
                    'company_id' => Auth::user()->company_id,
                    'create_by' => Auth::user()->id,
                    'created_at' => now(),
                    'updated_at' => now()
                ];

                $detailDatas = [];
                foreach ($data['details'] as $key => $value) {
                    $debits = (int) $value['debit'];
                    $kredits = (int) $value['kredit'];

                    $detailDatas[] = [
                        'id' => uuid(),
                        'jurnal_id' => $id,
                        'jurnal_no' => "$voucher-$trans_no",
                        'jurnal_akun' => $value['jurnal_akun'],
                        'debit' => $debits,
                        'credit' => $kredits,
                        'keterangan' => $value['keterangan'],
                        'create_by' => Auth::user()->id,
                        'created_at' => date('Y-m-d H:i:s'),
                        'updated_at' => date('Y-m-d H:i:s')
                    ];

                    $coa = DB('coas')->where('akun_no', $value['jurnal_akun'])->first();
                    if($coa->current_saldo_debit == 0 || $coa->current_saldo_debit == '0' || $coa->current_saldo_credit == 0 || $coa->current_saldo_credit == '0'){
                        // Saldo Awal
                        $saldo_awal_debit = $coa->saldo_awal_debit;
                        $saldo_awal_credit = $coa->saldo_awal_credit;
                    }else{
                        // Saldo awal
                        $saldo_awal_debit = $coa->current_saldo_debit;
                        $saldo_awal_credit = $coa->current_saldo_credit;
                    }

                    // Saldo Berjalan
                    $current_debit = $saldo_awal_debit + $debits - $kredits;
                    $current_credit = $saldo_awal_credit + $kredits - $debits;

                    // Saldo Total
                    $total_debit = $coa->total_saldo_debit + $debits;
                    $total_credit = $coa->total_saldo_credit + $kredits;

                    // Saldo Sisa
                    $sisa_debit = $coa->saldo_awal_debit + $coa->total_saldo_debit - $coa->total_saldo_credit;
                    $sisa_credit = $coa->saldo_awal_credit + $coa->total_saldo_credit - $coa->total_saldo_debit;

                    DB('coas')->where('akun_no', $value['jurnal_akun'])->update([
                        'current_saldo_debit' => $current_debit,
                        'current_saldo_credit' => $current_credit,
                        'sisa_saldo_debit' => $sisa_debit,
                        'sisa_saldo_credit' => $sisa_credit,
                        'total_saldo_debit' => $total_debit,
                        'total_saldo_credit' => $total_credit,
                        'total_transaksi_debit' => $coa->total_transaksi_debit + $debits,
                        'total_transaksi_credit' => $coa->total_transaksi_credit + $kredits,
                        'modi_by' => Auth::user()->id,
                    ]);
                }

                DB('jurnal_headers')->insert($headerData);
                DB('jurnal_details')->insert($detailDatas);
            }

        } catch (Exception $e) {
            $this->rollback();
            return $this->printJSON([
                'status' => false,
                'message' => $e->getMessage()
            ]);
        }

        $this->commit();
        return $this->printJSON([
            'status' => true,
            'message' => $headerData
        ]);
    }



    public function edit($id='')
    {
        $this->mulai();

        $totalDebit = 0;
        $totalCredit = 0;

        foreach ($this->req['detail'] as $detail) {
            $totalDebit += $detail['debit'];
            $totalCredit += $detail['credit'];
        }

        if ($totalDebit != $totalCredit) {
            return $this->printJSON([
                'status' => false,
                'message' => 'Total debit dan credit tidak sama. Harap periksa kembali input Anda.'
            ]);
        }

        try {
            $voucher = $this->req['voucher'];
            $jurnal_tgl = $this->req['jurnal_tgl'];
            $keterangan = $this->req['keterangan'];
            $lampiran = $this->req['lampiran'];
            $detail = $this->req['detail'];

            if (empty($detail)) {
                return $this->printJSON([
                    'status' => false,
                    'message' => 'Detail Jurnal Tidak Boleh Kosong!'
                ]);
            }

            DB('jurnal_headers')->where(['id' => $id])->update([
                'jurnal_tgl' => $jurnal_tgl,
                'keterangan' => $keterangan,
                'lampiran' => $lampiran,
                'modi_by' => Auth::user()->id,
                'updated_at' => date('Y-m-d H:i:s'),
            ]);

            DB('jurnal_details')->where(['jurnal_id' => $id])->delete();

            foreach ($detail as $item) {
                $detailData = [
                    'id' => uuid(),
                    'jurnal_id' => $id,
                    'jurnal_no' => $voucher,
                    'jurnal_akun' => $item['jurnal_akun']['akun_no'],
                    'debit' => numberOnly($item['debit']),
                    'credit' => numberOnly($item['credit']),
                    'create_by' => Auth::user()->id,
                    'modi_by' => Auth::user()->id,
                    'created_at' => date('Y-m-d H:i:s'),
                    'updated_at' => date('Y-m-d H:i:s')
                ];

                $dataDetail[] = $detailData;

                $debits = (int) $item['debit'];
                $kredits = (int) $item['credit'];
                $coa = DB('coas')->where('akun_no', $item['jurnal_akun']['akun_no'])->first();

                if($coa->current_saldo_debit == 0 || $coa->current_saldo_debit == '0' || $coa->current_saldo_credit == 0 || $coa->current_saldo_credit == '0'){
                    // Saldo Awal
                    $saldo_awal_debit = $coa->saldo_awal_debit;
                    $saldo_awal_credit = $coa->saldo_awal_credit;
                }else{
                    // Saldo awal
                    $saldo_awal_debit = $coa->current_saldo_debit;
                    $saldo_awal_credit = $coa->current_saldo_credit;
                }

                // Saldo Berjalan
                $current_debit = $saldo_awal_debit + $debits - $kredits;
                $current_credit = $saldo_awal_credit + $kredits - $debits;

                // Saldo Total
                $total_debit = $coa->total_saldo_debit + $debits;
                $total_credit = $coa->total_saldo_credit + $kredits;

                // Saldo Sisa
                $sisa_debit = $coa->saldo_awal_debit + $coa->total_saldo_debit - $coa->total_saldo_credit;
                $sisa_credit = $coa->saldo_awal_credit + $coa->total_saldo_credit - $coa->total_saldo_debit;

                // Update sisa_saldo_debit, sisa_saldo_credit, total_saldo_debit, dan total_saldo_credit
                DB('coas')->where('akun_no', $item['jurnal_akun']['akun_no'])->update([
                    'current_saldo_debit' => $current_debit,
                    'current_saldo_credit' => $current_credit,
                    'sisa_saldo_debit' => $saldo_sisa_debit,
                    'sisa_saldo_credit' => $saldo_sisa_credit,
                    'total_saldo_debit' => $total_saldo_debit,
                    'total_saldo_credit' => $total_saldo_credit,
                    'modi_by' => Auth::user()->id,
                ]);
            }

            DB('jurnal_details')->insert($dataDetail);

            $this->commit();

            return $this->printJSON([
                'status' => true,
                'message' => 'Data Berhasil diEdit!'
            ]);

        } catch (Exception $e) {
            $this->rollback();
            return $this->printJSON([
                'status' => false,
                'message' => $e->getMessage()
            ]);
        }
    }

    public function delete($id=''){
        $this->mulai();

        try{
            DB('jurnal_headers')->where(['id' => $id])->delete();
            DB('jurnal_details')->where(['jurnal_id' => $id])->delete();

        }catch(Exception $e){
            $this->rollback();
            return $this->printJSON([
                'status' => false,
                'message' => $e->getMessage()
            ]);
        }

        $this->commit();
        return $this->printJSON([
            'status' => true,
            'message' => 'Data Berhasil diHapus!'
        ]);
    }

    public function report($id = ""){

        $data = DB('jurnal_headers')->select(['id','jurnal_tgl','voucher','keterangan','company_id','lampiran','trans_no'])
        ->where(['id' => $id,'company_id' => Auth::user()->company_id]);

        $custom_condtion = @$this->req['custom_condtion'];

        if(!empty($custom_condtion)){

            foreach($custom_condtion as $key => $value){
                if(str_contains(' IN',$key) || str_contains(' in',$key)){
                    $value = explode(',',$value);
                    $data->where([$key => "('".implode("','",$value)."')"]);
                }else if(str_contains(' LIKE',$key) || str_contains(' like',$key)){
                    $data->where([$key => "%$value%"]);
                }else{
                    $data->where([$key => $value]);
                }
            }
        }

        $data = $data->orderBy('voucher','asc')->get();

        $dataC = collect($data)->map(function($row){

            $getakun = DB('jurnal_details')->select([
                'jurnal_details.debit',
                'jurnal_details.credit',
                'coas.akun_nama',
                'coas.akun_no',
            ])->leftJoin('coas','jurnal_details.jurnal_akun','=','coas.akun_no')
            ->where(['jurnal_details.jurnal_id' => $row->id])->get();

            $findcoa = collect($getakun)->map(function($no){
                $parentNo = substr($no->akun_no, 0, 4);
                return DB('coas')->select(['akun_no','akun_nama'])->where(['akun_no' => $parentNo])->first();
            });

            $coa = $findcoa->unique(function ($item) {
                return $item->akun_no . $item->akun_nama;
            });

            $manipulate = collect($getakun)->map(function($rowx){
                $rowx->debit = (int) $rowx->debit;
                return $rowx;
            });

            $bod = $manipulate->groupBy(function ($item) use ($coa) {
                foreach ($coa as $pitem) {
                    if (isParent($pitem->akun_no, $item->akun_no)) {
                        return $pitem->akun_no;
                    }
                }
                return $item->akun_no;
            });

            $result = $coa->map(function ($pitem) use ($bod) {
                $pol = $bod->get($pitem->akun_no, new Collection());
                $subtotal = 0;
                $pol = $pol->map(function ($item) use (&$subtotal) {
                    $subtotal += $item->debit + $item->credit;
                    return $item;
                });
                return [
                    'akun_no' => $pitem->akun_no,
                    'akun_nama' => $pitem->akun_nama,
                    'subtotal' => $subtotal,
                    'child' => $pol,
                ];
            });

            $row->detail = $result;

            return $row;
        });

        $data = $dataC->toArray();
        $user = Auth::user();
        $userInfo = userInfo();

        $pdf = Pdf::loadView('pdf.jurnal', compact('data','userInfo'));
        return $pdf->download('laporan jurnal keuangan.pdf');
    }
}
