<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Laravel\Passport\Client;
class Passport extends Client
{
    public function skipsAuthorization(): bool
    {
        //false：所有客户端都应该停止进行授权
        return false;
    }
}
