<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CheckClient
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        $redirectUri = $request->get('redirect_uri');

        //查询出用户的所有权限
        $permissions = auth()->user()->roles()->first()->permissions()->pluck('redirect_uri', 'permissions.id')->toArray();

        //检查当前redirectUri是否在权限范围内
        $hasPermission = in_array($redirectUri, $permissions);
        if(!$hasPermission){
            /*auth()->logout();
            $parsedUrl = parse_url($redirectUri);
            if ($parsedUrl && isset($parsedUrl['scheme'], $parsedUrl['host'])) {
                // 重新构建域名部分
                $domain = $parsedUrl['scheme'] . '://' . $parsedUrl['host'];
            }
            return redirect($domain. '/login?message=' . urlencode('没有权限!请重新登录！'));*/
            return redirect('http://system00.com'. '/home?message=' . urlencode('没有权限!请重新登录！'));
        }
        return $next($request);
    }
}
