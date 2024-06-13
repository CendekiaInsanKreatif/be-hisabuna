<?php

namespace App\Http\Controllers;

use Exception;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\CoaExport;
use Illuminate\Support\Facades\Auth;

class CoaController extends Controller
{

    public function index(){
        $coa = $this->Resdata('coas',
        ['select' => ['*']]);

        dd($coa);

        $saldo = $this->Resdata('saldo_coas',
        ['select' => ['*'],
        'where' => ['company_id' => Auth::user()->company_id,'coa_id' => $coa->id]]);
        // dd($saldo);
        dd($saldo);

        return $this->printJSON($data);
    }

    public function add(){

        $this->mulai();

        $forms = [
            'akun_no',
            'akun_nama',
            'saldo_awal_debit',
            'saldo_awal_credit',
            'arus_kas',
            'anggaran'
        ];


        $cek = DB('coas')->select('id')->where(['akun_no' => @$this->req['akun_no']])->first();

        if($cek){
            return $this->printJSON([
                'status' => false,
                'message' => 'Duplikat Data Untuk Akun No '.$this->req['akun_no']
            ]);
        }
        try{
            $data = [];
            $data['id'] = uuid();
            foreach($forms as $form){
                $data[$form] = @$this->req[$form];
            }
            $data['company_id'] = Auth::user()->company_id;

            DB('coas')->insert($data);

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
            'message' => 'Data Berhasil Disimpan'
        ]);

    }

    public function edit($id=''){

        $this->mulai();

        $forms = [
            'akun_no',
            'akun_nama',
            'saldo_awal_debit',
            'saldo_awal_credit',
            'arus_kas',
            'anggaran'
        ];


        $cek = DB('coas')->select('id')->where(['akun_no' => @$this->req['akun_no']])->first();

        if($cek && $cek->id != $id){
            return $this->printJSON([
                'status' => false,
                'message' => 'Duplikat Data Untuk Akun No '.$this->req['akun_no']
            ]);
        }
        try{
            $data = [];
            foreach($forms as $form){
                $data[$form] = $this->req[$form];
            }

            DB('coas')->where(['id' => $id])->update($data);

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
            'message' => 'Data Berhasil DiEdit'
        ]);

    }

    public function delete($id=''){

        $this->mulai();

        try{

            DB('coas')->where(['id' => $id])->delete();

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
            'message' => 'Data Berhasil DiHapus'
        ]);

    }

    public function export()
    {
        $export = new CoaExport;
        return Excel::download($export, 'coa.xlsx');
    }
}
