<?php

namespace App\Http\Controllers;

use Exception;
use Illuminate\Http\Request;

class ContohController extends Controller
{

    //pake join
    public function join(){
        $data = $this->Resdata('jurnal_headers',[
            'select' => ['id','voucher','trans_no','jurnal_tgl','keterangan'],
            'join' => [
                [
                    'table' => 'jurnal_details',
                    'condition' => 'jurnal_header.id,=,jurnal_details.jurnal_id'
                ]
            ],
        ]);

        return $this->printJSON($data);
    }

    //detail
    public function detail(){
        $data = $this->Resdata('jurnal_headers',[
            'select' => [
                'id',
                'voucher',
                'trans_no',
                'jurnal_tgl',
                'keterangan'
            ],
            'detail' => [
                [
                    'table' => 'jurnal_details',
                    'foreign' => ['jurnal_id' => 'id'],
                    'select' => ['jurnal_id']
                ],
            ]
        ]);

        return $this->printJSON($data);
    }

    public function dataTable(){

        $data = $this->ResdataTable('jurnal_headers',[
            'select' => ['id','voucher','trans_no','jurnal_tgl','keterangan']
        ]);

        return $this->printJSON($data);
    }

    public function add(){

        $this->mulai();

        $form = [
            'voucher',
            'keterangan',
            'jurnal_akun',
            'debit',
            'credit'
        ];

        foreach($form as $f){
            $$f = @$this->req[$f];
        }

        try{

            $trans_no = DB('jurnal_headers')->count() + 1;
            $id = uuid();

            $data = [];
            $data['id'] = $id;
            $data['trans_no'] = $trans_no;
            $data['jurnal_tgl'] = date('Y-m-d H:i:s');
            $data['voucher'] = $voucher;
            $data['keterangan'] = $keterangan;

            $dataDetail = [];
            foreach($debit as $i => $db){
                $detail = [];
                $detail['id'] = uuid();
                $detail['jurnal_id'] = $id;
                $detail['jurnal_no'] = "$voucher-$trans_no";
                $detail['jurnal_akun'] = $jurnal_akun[$i];
                $detail['debit'] = numberOnly($db);
                $detail['credit'] = numberOnly($credit[$i]);

                $dataDetail[] = $detail;
            }

            DB('jurnal_headers')->insert($data);
            DB('jurnal_details')->insert($dataDetail);

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
            'message' => 'Data Berhasil diTambah'
        ]);
    }

    public function edit($id=''){

        $this->mulai();

        $form = [
            'voucher',
            'keterangan',
            'jurnal_akun',
            'debit',
            'credit'
        ];

        foreach($form as $f){
            $$f = @$this->req[$f];
        }

        if(empty($jurnal_akun)){
            return $this->printJSON([
                'status' => false,
                'message' => 'Detail Jurnal Tidak Boleh Kosong!'
            ]);
        }

        try{

            $getData = DB('jurnal_headers')->where(['id' => $id])->first();

            $data = [];
            $data['voucher'] = $voucher;
            $data['keterangan'] = $keterangan;
            $data['updated_at'] = date('Y-m-d H:i:s');

            $detailLama = DB('jurnal_details')->select('id')->where(['jurnal_id' => $id])->get();

           DB('jurnal_details')->where(['jurnal_id' => $id])->delete();
            $dataDetail = [];
            foreach($debit as $i => $db){
                $detail = [];
                $detail['id'] = uuid();
                $detail['jurnal_id'] = $id;
                $detail['jurnal_no'] = "$voucher-$getData->trans_no";
                $detail['jurnal_akun'] = $jurnal_akun[$i];
                $detail['debit'] = numberOnly($db);
                $detail['credit'] = numberOnly($credit[$i]);

                $dataDetail[] = $detail;
            }

            DB('jurnal_headers')->where(['id' => $id])->update($data);
            DB('jurnal_details')->insert($dataDetail);

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
            'message' => 'Data Berhasil diEdit!'
        ]);
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
}
