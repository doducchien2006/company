<?php
namespace App\Http\Controllers;

use App\UserBank;
use Illuminate\Http\Request;

class UserBankController extends Controller
{

    public function LisBank(Request $request){

        if(isset($request->acc_bank)){
            $banks=UserBank::where('acc_bank',$request->acc_bank)->paginate(5);

        }else{
            $banks = UserBank::paginate(5);
        }



        $title = 'Danh sách ngân hàng';
        return view('user.user_bank_list', compact('banks','title'));
    }

    public function test(){
        //$test =UserBank::find(9);
        //$test = UserBank::where('id',9)->first();
        //$test = UserBank::where('user_id','<',2)->orderBy('id','asc')->get()->count();
        //$test = UserBank::where('user_id',2)->sum('balance');
        //$test = UserBank::where('id',7)->select('acc_num','balance')->first();
        //$test = UserBank::where('user_id',3)->limit(3)->get();
        //$test = UserBank::where('user_id',1)->limit(3)->get()->toArray();
        $test = UserBank::where('user_id',2)->pluck('acc_name','acc_num');
        dd($test);

    }


}
