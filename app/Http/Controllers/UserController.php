<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use App\Mail\LaraEmail;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Str;
//use Illuminate\Support\Facades\Crypt;

class UserController extends Controller
{
    //
    public function register (Request $request) {
        $output = [];
        $name = $request->name;
        $mobile = $request->mobile;

        $validator = Validator::make($request->all(), [
            'mobile' => 'required|numeric|digits:10'
        ]);
        if ($validator->fails()) {
            $output['response']=false;
            $output['message']='Validation error!';
            $output['data'] = $validator->errors();
            $output['error'] = "Validation error!";
        } else {

        $count = User::where(['mobile'=>$mobile])->count();
        if ($count==0) {
            $insert = User::insert(['name'=>$name,'mobile'=>$mobile]);
            $user = User::where(['mobile'=>$mobile])->first();
            $token = $user->createToken('auth_token')->plainTextToken;
            $user->token_type = 'Bearer';
            $user->access_token = $token;

            $output['response'] = true;
            $output['message'] = 'User Data Added';
            $output['data'] = $user;
            $output['error'] = '';
        } else if ($count==1) {
            // $user = DB::table('users as u')
            //             ->join('personal_access_tokens as t','t.tokenable_id','=','u.id')
            //             ->select('u.id as id','u.name','u.email','u.mobile','u.email_verified_at',
            //             'u.created_at','u.updated_at','t.token','t.id as tid')
            //             ->where(['u.mobile'=>$mobile])
            //             ->first();

            $user = User::where(['mobile'=>$mobile])->first();
            $token = $user->createToken('auth_token')->plainTextToken;
            $user->token_type = 'Bearer';
            $user->access_token = $token;

            $output['response'] = true;
            $output['message'] = 'Existed User';
            $output['data'] = $user;
            $output['error'] = '';
        } else {
            $output['response'] = false;
            $output['message'] = 'Failed';
            $output['data'] = '';
            $output['error'] = '';
        }

        }
        return $output;
    }

    public function fifty_fifty_apply (Request $request) {
        $output = [];$data=[];
        $q_id  = $request->q_id;
        $login_data = $request->user();
        $id = $login_data['id'];

        $validator = Validator::make($request->all(), [
            'q_id' => 'required|numeric'
        ]);
        if ($validator->fails()) {
            $output['response']=false;
            $output['message']='Validation error!';
            $output['data'] = $validator->errors();
            $output['error'] = "Validation error!";
        } else {

        $update = DB::table('users')->where(['id'=>$id])->update(['fifty_fifty'=>1,'fifty_fifty_q_id'=>$q_id]);
        if ($update) {
            $output['response'] = true;
            $output['message'] = 'Fifty - Fifty Applied';
            $output['data'] = $update;
            $output['error'] = '';
        } else {
            $output['response'] = false;
            $output['message'] = 'Failed';
            $output['data'] = $update;
            $output['error'] = '';
        }

        }
        return $output;
    }

    public function report (Request $request) {
        $new=[];
        $star = 0;$score=[];
        $data = DB::table('users')->orderBy('id','desc')->get();
        foreach ($data as $val) {
            $id = $val->id;
            $name = $val->name;
            $mobile = $val->mobile;
            $fifty_fifty = $val->fifty_fifty;

            $score_data = DB::table('data_save')->where(['user_id'=>$id])->get();
            foreach ($score_data as $val1) {
                $sid = $val1->id;
                $level = $val1->level;
                $q_id = $val1->q_id;
                $answare_id = $val1->answare_id;
                $status = $val1->status;
                if ($status==1) {
                    $star += 1;
                }
                $score[] = ['id'=>$sid,'level'=>$level,'q_id'=>$q_id,'answare_id'=>$answare_id,'status'=>$status];
            }
            $new[] = ['id'=>$id,'name'=>$name,'mobile'=>$mobile,'fifty_fifty'=>$fifty_fifty,'score'=>$score,'star'=>$star];

        }
        $output['response'] = true;
        $output['message'] = 'Score';
        $output['data'] = $new;
        $output['error'] = '';
        return $output;
    }

}
