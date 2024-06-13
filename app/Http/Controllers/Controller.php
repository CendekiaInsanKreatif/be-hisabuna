<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Support\Facades\Validator;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class Controller extends BaseController
{
    use AuthorizesRequests, ValidatesRequests;

    public $req;

    function __construct(){
        $this->req = $_REQUEST;
        $this->middleware('auth:sanctum')->except(['login','register']);
    }

    public function printJSON($json=[]){
        return response()->json($json);
    }

    public function Validation($data=[]){

        $field = $data['field'];
        $message = @$data['message'];
        $alias = @$data['alias'];

        if(empty($message)){
            $message['required'] = ":attribute Wajib Diisi";
        }

        $validasi = Validator::make($this->req, $field, $message, $alias);

        $tmp = collect($validasi->messages())->toarray();

        $pesan = [];
        foreach($data['field'] as $key => $value){
            if(array_key_exists($key,$tmp)){
                $pesan[] = $tmp[$key][0];
            }
        }

        if($validasi->fails()){
           return [
                'status' => '1',
                'message' => implode(' ,',$pesan)
           ];
        }else{
            return [
                'status' => '0',
            ];
        }
    }

    public function Resdata($table='',$tmp=[]){

        $select = @$tmp['select'];
        $detail = @$tmp['detail'];
        $join   = @$tmp['join'];

        $search = @$this->req;

        $getData = DB($table)->select(empty($select) ? '*' : $select);

        if(!empty($join)){
            foreach($join as $joins){

                $condition = explode(',',$joins['condition']);

                if($joins['method'] == 'I'){

                    $getData->join($joins['table'],$condition[0],$condition[1],$condition[2]);
                }else if($joins['method'] == 'R'){

                    $getData->rightJoin($joins['table'],$condition[0],$condition[1],$condition[2]);
                }else if($joins['method'] == 'L'){

                    $getData->leftJoin($joins['table'],$condition[0],$condition[1],$condition[2]);
                }
            }
        }

        if(!empty($search)){
            foreach($search as $key => $value){
                $getData->where("$key",'LIKE',"%$value%");
            }
        }

        $count = $getData->count();
        $map = $getData->get()->map(function($row) use($detail){
            if(!empty($detail)){
                foreach($detail as $dt){
                    $nama = $dt['table'];
                    $select = $dt['select'];
                    $foreign = $dt['foreign'];

                    $where = [];
                    foreach($foreign as $key => $value){
                        $where[$key] = $row->$value;
                    }

                    $$nama = DB($nama)->select($select)->where($where)->first();

                    $row->$nama = $$nama;
                }
            }

            // $row->id = cry($row->id);
            return $row;
        });

        $data = [
            'status' => true,
            'total_data' => $count,
            'data' => $map
        ];

        return $data;
    }

    public function ResdataTable($table='',$tmp=[]){

        $search = @$this->req['search'];
        $getData = DB($table)->select($tmp['select'])->where(['company_id' => Auth::user()->company_id]);

        if(!empty($search)){
            foreach($search as $key => $value){
                $getData->where("$key",'LIKE',"%$value%");
            }
        }

        $count = $getData->count();
        $map = $getData->get()->map(function($row){
            $row->id = cry($row->id);
            return $row;
        });

        $data = [
            'draw' => '1',
            'recordsTotal' => $count,
            'recordsFiltered' => $count,
            'data' => $map
        ];

        return $data;
    }

    protected function mulai(){
        return DB::beginTransaction();
    }

    protected function commit(){
        return DB::commit();
    }

    protected function rollback(){
        return DB::rollBack();
    }

}
