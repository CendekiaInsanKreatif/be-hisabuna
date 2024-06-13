<?php

namespace App\Http\Controllers;

use Exception;

class CompanyController extends Controller
{

    public function index(){
        $data = $this->Resdata('companies');

        return $this->printJSON($data);
    }

    public function add(){

        $this->mulai();

        $validasi = $this->Validation([
            'field' => [
                'company_code' => 'required|unique:companies',
                'company_name' => 'required',
                'company_logo' => '',
                'is_active'    => 'required'
            ],
            'alias' => [
                'company_code' => 'Kode Perusahaan',
                'company_name' => 'Nama Perusahaan',
                'company_logo' => 'Logo Perusahaan',
                'is_active'    => 'Status Langganan'
            ]
        ]);

        if($validasi['status'] == '1'){
            return $this->printJSON([
                'status'  => false,
                'message' => $validasi['message']
            ]);
        }

        $forms = ['company_code','company_name','is_active'];

        foreach($forms as $form){
            $$form = @$this->req[$form];
        }

        try{
            $data = [];
            $data['id']           = uuid();
            $data['company_code'] = $company_code;
            $data['company_name'] = $company_name;
            $data['company_logo'] = $company_logo;
            $data['is_active']    = $is_active;

            DB('companies')->insert($data);

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

        $Company = DB('companies')->select('*')->where(['id' => $id])->first();

        $validasi = $this->Validation([
            'field' => [
                'company_name' => 'required',
                'is_active'    => 'required'
            ],
            'alias' => [
                'company_name' => 'Nama Perusahaan',
                'is_active'    => 'Status Langganan'
            ]
        ]);

        if($validasi['status'] == '1'){
            return $this->printJSON([
                'status'  => false,
                'message' => $validasi['message']
            ]);
        }

        $forms = ['company_name','is_active'];

        foreach($forms as $form){
            $$form = @$this->req[$form];
        }

        try{
            $data = [];
            $data['company_name'] = $company_name;
            $data['is_active']    = $is_active;
            $data['updated_at']   = date('Y-m-d H:i:s');

            DB('companies')->where(['id' => $id])->update($data);

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

            DB('companies')->where(['id' => $id])->delete();

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
}
