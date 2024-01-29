<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Role;
use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    //用户列表
    public function index(Request $request)
    {
        //获取搜索框
        $name = $request->get('name');
        $email = $request->get('email');
        //获取数据
        if ($name != null) {
            $data = User::where('name', 'like', "%{$name}%")->get();
        } else if($email != null){
            $data = User::where('email', 'like', "%{$email}%")->get();
        }else{
            $data = User::get();
        }
        return view('admin.user.index', compact('data'));
    }
    //添加用户显示
    public function create()
    {
        return view('admin.user.create');
    }
    //添加用户处理
    public function store(Request $request)
    {
        //数据验证
        $this->validate($request, [
            'name' => 'required',
            'password' => 'required|confirmed',
            'email' => 'required|email|unique:users,email',
        ]);
        //数据添加
        User::create([
            'name' => $request->name,
            'password' => bcrypt($request->password),
            'email' => $request->email,
        ]);
        //跳转
        return response()->json(['status' => 'success', 'message' => '添加成功']);
    }

    //删除用户
    public function destroy(int $id)
    {
        //删除数据(当配置软删除后为软删除，不然为物理删除)
        User::find($id)->delete();
        //强制删除(即使配置软删除，也能物理删除)
        //User::find($id)->forceDelete();
        return response()->json(['status' => 'success', 'message' => '删除成功']);
    }

    //用户批量删除
    public function destroyAll(Request $request)
    {
        //如果没有要删除的id
        if (!$request->has('id')) {
            return response()->json(['status' => 'error', 'message' => '请选择要删除的数据']);
        }
        //获取要删除的id
        $ids = $request->get('id');
        //删除数据
        User::destroy($ids);
        return response()->json(['status' => 'success', 'message' => '删除成功']);
    }

    /*//用户还原
    public function restore(int $id)
    {
        //数据还原
        User::onlyTrashed()->where('id', $id)->restore();
        return redirect()->route('admin.user.index')->with('success', '还原成功');
    }*/

    //用户编辑显示
    public function edit(int $id)
    {
        $model = User::find($id);
        return view('admin.user.edit', compact('model'));
    }

    //用户编辑处理
    public function update(Request $request, int $id)
    {
        //数据验证
        $this->validate($request, [
            'name' => 'required',
            'password' => 'nullable|confirmed',
            'email' => 'required|email|unique:users,email,' . $id,
        ]);
        $model = User::find($id);
        //修改
        $data = $request->only(['name', 'email', 'password']);
        if($data['password']){
            $data['password'] = bcrypt($data['password']);
        }else{
            unset($data['password']);
        }
        $model->update($data);
        //跳转
        return response()->json(['status' => 'success', 'message' => '修改成功']);
    }

    //分配角色
    public function role(User $user)
    {
        //获取所有角色
        $roles = Role::all()->toArray();
        //获取当前用户已有的角色
        $userRoles = $user->roles()->pluck('roles.id')->toArray();
        return view('admin.user.role', compact('user', 'roles', 'userRoles'));
    }

    //分配角色处理
    public function roleUpdate(Request $request, User $user)
    {
        //数据验证
        $this->validate($request, [
            'role' => 'required',
        ], [
            'role.required' => '请选择角色',
        ]);
        //分配角色
        $user->roles()->sync($request->get('role'));
        //跳转
        return response()->json(['status' => 'success', 'message' => '分配成功']);
    }
}
