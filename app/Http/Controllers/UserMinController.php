<?php

namespace App\Http\Controllers;

use App\UserMin;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;

class UserMinController extends Controller
{

    public function lismins(Request $request)
    {
        $title = 'ngôi nhà ';
        $mins = UserMin::paginate(5);

        return view('user.user_min_list',compact('title','mins'));

    }
    public function test()
    {
        $test = UserMin::where('id', 5)->limit(2)->get();
dd($test);
    }
}
