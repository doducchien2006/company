<?php

namespace App\Http\Controllers;

use App\UserFamily;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;

class UserFamilydController extends Controller {
    public function LisFamilyds(Request $request)
    {
        $title  = 'gia dinh';
        $familyds = UserFamily::paginate(5);
return view('user.user_familyd_list', compact('title','familyds' ));
}
   public function test(){
    //$test = UserFamily::whereIN('name',["c2","c3"])->orderBy('name','asc')->get();
    //$test = UserFamily::where('id',5)->orderBy('id','asc')->get();
    //$test = UserFamily::where('id',5)->limit(2)->first()->toArray();
    $test = UserFamily::where('level','9')->sum('balance');
    dd($test);
    }
    public function top(){
        //$top = UserFamily::where('id',7)->sum('balance');
        $top = UserFamily::whereIN('name',"!=",["c5","chien3"])->orderBy('name','asc')->get();
        //$top = UserFamily::wherenotIN('id',["5","8","3"])->get();
        //$top = UserFamily::where('level',3)->first();
        //$top = UserFamily::where('name','c5')->orderBy('name','asc')->get();
        //$top = UserFamily::where('level',7)->orderBy('level','desc')->get();
        dd($top);
    }


}
