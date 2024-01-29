<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class CheckAdminLogin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @param  string $param 中间件传参 在绑定中间件时传递参数：值
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        //判断用户是否已经登录
        if(!auth()->check()){
            return redirect(route('admin.login'))->withErrors(['error'=>'请先登录']);
        }

        //如果没有停止则向后执行
        return $next($request);
    }
}
