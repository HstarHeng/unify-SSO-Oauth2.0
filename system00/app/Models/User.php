<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;

class User extends Authenticatable
{
    use HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name',
        'email',
        'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function logoutFromSSOServer(){
        $access_token = session()->get('access_token');
        /*// 请求服务端a获取所有客户端的登出接口
        $response = Http::withHeaders([
            "Accept" => "application/json",
            "Authorization" => "Bearer " . $access_token
        ])->get("http://unify.com/api/clientsLogoutUris");

        // 向所有客户端发送登出请求
        if($response->successful()) {
            $logoutUris = $response->json();
            foreach($logoutUris as $uri) {
                if($uri != "http://system00.com/logout"){
                    $postResponse = Http::get($uri);
                    //如果请求失败，就dd()出来看看
                    if(!$postResponse->successful()){
                        dd($postResponse);
                        //Log::log("error", $postResponse);
                    }
                }
            }
        }*/
        //向SSO服务器发送吊销令牌请求
        $responses = Http::withHeaders([
            "Accept" => "application/json",
            "Authorization" => "Bearer " . $access_token
        ])->get("http://unify.com/api/logmeout");
    }
}
//config("auth.sso_host")
