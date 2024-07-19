<?php

namespace App\Http\Controllers;

use App\UserLang;
use Illuminate\Http\Request;

class UserLangController extends Controller
{
    public function lislangs(Request $request)
    {

        $title = 'danh sách ngôn ngữ';
        $langs = UserLang::paginate(5);

        return view('user.user_lang_list', compact('title', 'langs'));
    }

    public function test(){
        //$test = UserLang::find(7);
        //$test = UserLang::where('id',5)->sum('balance');
        //$test = UserLang::where('id',2)->orderBy('id','desc')->first();
        //$test = UserLang::whereIN('name',["c4","c5"])->orderBy('name','asc')->get();
        //$test = UserLang::where('level','3')->orderBy('name','asc')->get();
        //$test = UserLang::where('id',6)->sum('balance');
        //$test = UserLang::where('id',3)->limit(3)->get()->toArray();
        dd($test);
    }
    public function top(){
        $top = UserLang::where('id',5)->sum('balance');
        $top = UserLang::where('level',6)->orderBy('level','desc')->get();
        $top = UserLang::where('description',5)->sum('balance');
        $top = UserLang::where('name','c6')->orderBy('name','asc')->get();
        $top = UserLang::whereIN('id',["5","7"])->orderBy('id','asc')->get();
        dd($top);


   }
}
