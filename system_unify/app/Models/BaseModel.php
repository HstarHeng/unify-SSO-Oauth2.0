<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class BaseModel extends Model
{
    //软删除
//    use SoftDeletes;
//    protected $dates = ['deleted_at'];
    //设置添加时的黑名单
    protected $guarded = [];
}
