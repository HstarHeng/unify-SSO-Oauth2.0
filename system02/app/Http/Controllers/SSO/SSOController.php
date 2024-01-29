<?php

namespace App\Http\Controllers\SSO;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Str;
use InvalidArgumentException;

class SSOController extends Controller
{
    public function getLogin(Request $request)
    {
        $request->session()->put("state", $state = Str::random(40));
        $query = http_build_query([
            "client_id" => config('sso.client_id'),
            'redirect_uri' => 'http://system02.com/callback',
            'response_type' => 'code',
            'scope' => 'view-user',
            "state" => $state
        ]);
        return redirect('http://unify.com/oauth/authorize?' . $query);
    }

    public function getCallback(Request $request)
    {
        $state = $request->session()->pull("state");
        Log::info('Session state: '.$state);
        Log::info('Request state: '.$request->state);
        throw_unless(
            strlen($state) > 0 && $state == $request->state,
            InvalidArgumentException::class
        );
        //$http = new GuzzleHttp\Client;
        $response = Http::timeout(10)->asForm()->post("http://unify.com/oauth/token", [
            "grant_type" => "authorization_code",
            "client_id" => config('sso.client_id'),
            "client_secret" => config('sso.client_secret'),
            "redirect_uri" => "http://system02.com/callback",
            "code" => $request->code
        ]);
        //return $response->json();
        $request->session()->put($response->json());
        return redirect(route("sso.connect"));
    }

    public function connectUser(Request $request){
        $access_token = $request->session()->get("access_token");
        $response = Http::timeout(10)->withHeaders([
            "Accept" => "application/json",
            "Authorization" => "Bearer " . $access_token
        ])->get("http://unify.com/api/user");
        $userArray = $response->json();
        try {
            $email = $userArray["email"];
        }catch (\Throwable $th){
            return redirect("login")->withErrors("Failed to get login information! Try again.<br>Error: " . $th->getMessage());
        }
        $user = User::where("email", $email)->first();
        if(!$user){
            $user = new User();
            $user->name = $userArray["name"];
            $user->email = $userArray["email"];
            //$user->email_verified_at = $userArray["email_verified_at"];
            $user->save();
        }
        Auth::login($user);
        return redirect(route("home"));
    }
}
