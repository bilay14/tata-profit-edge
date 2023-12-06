<?php

namespace App\Http\Controllers;

use App\Models\question;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use App\Mail\LaraEmail;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Str;

class QuestionController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    // public function index()
    // {
    //     //
    // }

    // /**
    //  * Show the form for creating a new resource.
    //  */
    // public function create()
    // {
    //     //
    // }

    // /**
    //  * Store a newly created resource in storage.
    //  */
    // public function store(Request $request)
    // {
    //     //
    // }

    // /**
    //  * Display the specified resource.
    //  */
    // public function show(question $question)
    // {
    //     //
    // }

    // /**
    //  * Show the form for editing the specified resource.
    //  */
    // public function edit(question $question)
    // {
    //     //
    // }

    // /**
    //  * Update the specified resource in storage.
    //  */
    // public function update(Request $request, question $question)
    // {
    //     //
    // }

    // /**
    //  * Remove the specified resource from storage.
    //  */
    // public function destroy(question $question)
    // {
    //     //
    // }

    public function question (Request $request) {
        $output = [];$data=[];
        $level = $request->level;
        $q_id  = $request->q_id;
        $login_data = $request->user();
        $id = $login_data['id'];
        $validator = Validator::make($request->all(), [
            'level' => 'required|numeric'
        ]);
        if ($validator->fails()) {
            $output['response']=false;
            $output['message']='Validation error!';
            $output['data'] = $validator->errors();
            $output['error'] = "Validation error!";
        } else {

        $question_arr = question::where(['level'=>$level,'status'=>1])->inRandomOrder()->get();
        foreach ($question_arr as $question) {
            if ($q_id=='' || $question->id!=$q_id) {

            $data['q_id'] = $question->id;
            $data['created_at'] = $question->created_at;
            $data['updated_at'] = $question->updated_at;
            $data['level'] = $question->level;
            $data['question'] = $question->question;
            $data['option_one'] = $question->option_one;
            $data['option_two'] = $question->option_two;
            $data['option_three'] = $question->option_three;
            $data['option_four'] = $question->option_four;
            $data['correct_ans'] = $question->correct_ans;
            $data['correct_ans_str'] = $question->correct_ans_str;
            $data['status'] = $question->status;
            $data['fifty_fifty'] = User::where(['id'=>$id])->value('fifty_fifty');
            
            }
        }

            $output['response']=true;
            $output['message']='Question';
            $output['data'] = $data;
            $output['error'] = "";
        }
        return $output;
    }

    public function data_save (Request $request) {
        $output = [];$data=[];
        $level = $request->level;
        $q_id  = $request->q_id;
        $answare_id = $request->answare_id;
        $status = $request->status;

        $login_data = $request->user();
        $id = $login_data['id'];
        $validator = Validator::make($request->all(), [
            'level' => 'required|numeric',
            'q_id' => 'required|numeric',
            'answare_id' => 'required|numeric',
            'status' => 'required|numeric'
        ]);
        if ($validator->fails()) {
            $output['response']=false;
            $output['message']='Validation error!';
            $output['data'] = $validator->errors();
            $output['error'] = "Validation error!";
        } else {
            $insert = DB::table('data_save')->insert(['user_id'=>$id,'level'=>$level,'q_id'=>$q_id,'answare_id'=>$answare_id,
            'status'=>$status]);
            if ($insert) {
                $output['response']=true;
                $output['message']='Data Inserted Successfully';
                $output['data'] = $insert;
                $output['error'] = "";
            }
        }
        return $output;
    }
    
}
