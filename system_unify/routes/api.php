<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api', 'scope:view-user')->get('/user', function (Request $request) {
    return $request->user();
});

Route::middleware('auth:api')->get('/logmeout', function (Request $request) {
    $user = $request->user();
    $accessToken = $user->token();
    DB::table('oauth_refresh_tokens')
        ->where('access_token_id', $accessToken->id)
        ->delete();
    $accessToken->delete();
    return response()->json([
        'message' => 'Revoked'
    ]);
});


/*Route::middleware('auth:api')->get('/clientsLogoutUris', function (Request $request) {
    $user = $request->user();
    $redirectUris = $user->roles()->first()->permissions()->pluck('redirect_uri', 'permissions.id')->toArray();
    foreach ($redirectUris as $key => $redirectUri) {
        //如果$redirectUri不为null
        if ($redirectUri) {
            $parsedUrl = parse_url($redirectUri);
            if ($parsedUrl && isset($parsedUrl['scheme'], $parsedUrl['host'])) {
                // 重新构建域名部分
                $domain = $parsedUrl['scheme'] . '://' . $parsedUrl['host'];
            }
            $logoutUris[$key] = $domain . '/logout';
        }
    }
    return response()->json($logoutUris);
});*/



