<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }

    public function getDifferentAccount(Request $request)
    {
        //注销当前用户
        Auth::logout();
        //将url.intended设置为授权url
        Session::put('url.intended', $request->current_url);
        //重定向到登录表单
        return redirect("login");
    }
}

