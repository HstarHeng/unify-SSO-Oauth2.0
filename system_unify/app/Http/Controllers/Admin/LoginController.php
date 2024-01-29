<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Dflydev\DotAccessData\Data;
use Illuminate\Http\Request;

class LoginController extends Controller
{
    //登录显示 别名admin.login
    public function index()
    {
        //判断用户是否已经登录
        if(auth()->check()){
            return redirect(route('admin.index'));
        }
        return view('admin.login.login');
    }
    //登录 别名admin.login2 根据别名生成url route('admin.login2')
    public function login(Request $request){
        //验证
        $post = $this->validate($request,[
            'email'=>'required|email',
            'password'=>'required',
            //'captcha'=>'required|captcha'
        ]);

        //登录
        $bool = auth()->attempt($post);
        if($bool) {
            $loginPermission = auth()->user()->roles()->first()->permissions()->pluck('redirect_uri', 'permissions.id')->toArray();
            //权限保持到session中
            session(['loginPermission'=>$loginPermission]);
            //如果session中的loginPermission中键值全部没有null，说明没有权限
            if(!in_array(null, session('loginPermission'))){
                auth()->logout();
                return redirect(route('admin.login'))->withErrors(['error'=>'您没有权限登录']);
            }

            //登录成功，其中auth()->user()获取当前登录用户的模型对象，存储在session中
            //laravel默认session是存储在文件中，可以通过配置文件修改为memcached redis等
            //dump(auth()->user()->toArray());

            return redirect(route('admin.index'));

        }else{
            //登录失败
            return redirect(route('admin.login'))->withErrors(['error'=>'用户名或密码错误']);
        }
    }
}
