<?php

use App\Http\Controllers\Admin\IndexController;
use App\Http\Controllers\Admin\LoginController;
use App\Http\Controllers\Admin\PermissionController;
use App\Http\Controllers\Admin\RoleController;
use App\Http\Controllers\Admin\UserController;

use GuzzleHttp\Middleware;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


//重写授权路由
Route::middleware(['web', 'auth', 'check-client'])
    ->get('/oauth/authorize', [\Laravel\Passport\Http\Controllers\AuthorizationController::class,'authorize'])
    ->name('passport.authorizations.authorize');

//用户未登录时进行授权，被拦截重定向到登录页面
Auth::routes(['login' => true]);

Route::group(['prefix' => 'admin'], function(){
    //登录
    Route::get('/login', [LoginController::class, 'index'])->name('admin.login');
    Route::post('/login', [LoginController::class, 'login'])->name('admin.login2');

    //登录后才能访问的路由
    Route::group(['middleware' => 'check-admin'], function () {
        //后台首页
        Route::get('/index', [IndexController::class, 'index'])->name('admin.index');
        //欢迎页面显示
        Route::get('/welcome', [IndexController::class, 'welcome'])->name('admin.welcome');
        //退出登录
        Route::get('/logout', [IndexController::class, 'logout'])->name('admin.logout');

        //用户管理
        Route::group(['prefix' => 'user'], function () {
            //用户列表
            Route::get('/index', [UserController::class, 'index'])->name('admin.user.index');
            //用户添加
            Route::get('/create', [UserController::class, 'create'])->name('admin.user.create');
            //用户添加处理
            Route::post('/create', [UserController::class, 'store'])->name('admin.user.store');
            //用户编辑
            Route::get('/edit/{id}', [UserController::class, 'edit'])->name('admin.user.edit');
            //用户编辑处理
            Route::post('/edit/{id}', [UserController::class, 'update'])->name('admin.user.update');
            //用户删除
            Route::delete('/destroy/{id}', [UserController::class, 'destroy'])->name('admin.user.destroy');
            //用户批量删除
            Route::delete('/destroyall', [UserController::class, 'destroyAll'])->name('admin.user.destroyAll');
            //用户还原
            Route::get('/restore/{id}', [UserController::class, 'restore'])->name('admin.user.restore');
            //分配角色
            Route::get('/role/{user}', [UserController::class, 'role'])->name('admin.user.role');
            //分配角色处理
            Route::post('/role/{user}', [UserController::class, 'roleUpdate'])->name('admin.user.roleUpdate');
        });
        //角色管理
        Route::group(['prefix' => 'role'], function () {
            //角色列表
            Route::get('/index', [RoleController::class, 'index'])->name('admin.role.index');
            //角色添加
            Route::get('/create', [RoleController::class, 'create'])->name('admin.role.create');
            //角色添加处理
            Route::post('/create', [RoleController::class, 'store'])->name('admin.role.store');
            //角色编辑
            Route::get('/edit/{id}', [RoleController::class, 'edit'])->name('admin.role.edit');
            //角色编辑处理
            Route::post('/edit/{id}', [RoleController::class, 'update'])->name('admin.role.update');
            //角色删除
            Route::delete('/destroy/{id}', [RoleController::class, 'destroy'])->name('admin.role.destroy');
            //分配权限
            Route::get('/permission/{role}', [RoleController::class, 'permission'])->name('admin.role.permission');
            //分配权限处理
            Route::post('/permission/{role}', [RoleController::class, 'permissionUpdate'])->name('admin.role.permissionUpdate');

            //角色还原
//            Route::get('/restore/{id}', [RoleController::class, 'restore'])->name('admin.role.restore');
        });

        //权限管理
        Route::group(['prefix' => 'permission'], function () {
            //权限列表
            Route::get('/index', [PermissionController::class, 'index'])->name('admin.permission.index');
            //权限添加
            Route::get('/create', [PermissionController::class, 'create'])->name('admin.permission.create');
            //权限添加处理
            Route::post('/create', [PermissionController::class, 'store'])->name('admin.permission.store');
            //权限编辑
            Route::get('/edit/{id}', [PermissionController::class, 'edit'])->name('admin.permission.edit');
            //权限编辑处理
            Route::post('/edit/{id}', [PermissionController::class, 'update'])->name('admin.permission.update');
            //权限删除
            Route::delete('/destroy/{id}', [PermissionController::class, 'destroy'])->name('admin.permission.destroy');
            //权限还原
//            Route::get('/restore/{id}', [PermissionController::class, 'restore'])->name('admin.permission.restore');
        });
    });
});

//Route::get('/login', [LoginController::class, 'index'])->name('admin.login');
//Route::post('/login', [LoginController::class, 'login'])->name('admin.login');


Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('index');

Route::post('/different-account', [App\Http\Controllers\HomeController::class, 'getDifferentAccount'])->name('different-account');

