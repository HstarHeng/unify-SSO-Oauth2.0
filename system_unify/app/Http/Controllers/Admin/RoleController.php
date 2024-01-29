<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Permission;
use App\Models\Role;
use App\Models\User;
use Illuminate\Http\Request;

class RoleController extends Controller
{
    //角色列表
    public function index(Request $request)
    {
        //获取搜索框
        $name = $request->get('name');
        //获取数据
        if ($name) {
            $data = Role::where('name', 'like', "%{$name}%")->get();
        } else {
            $data = Role::get();
        }
        return view('admin.role.index', compact('data'));
    }

    //添加角色显示
    public function create()
    {
        return view('admin.role.create');
    }

    //添加角色处理
    public function store(Request $request)
    {
        //数据验证
        $this->validate($request, [
            'name' => 'required|unique:roles,name',
        ]);
        //数据添加
        Role::create([
            'name' => $request->name,
        ]);
        //跳转
        return response()->json(['status' => 'success', 'message' => '添加成功']);
    }

    //根据id获取角色信息
    public function show(int $id)
    {
        //
    }

    //角色编辑显示
    public function edit(int $id)
    {
        $model = Role::find($id);
        return view('admin.role.edit', compact('model'));
    }

    //角色编辑处理
    public function update(Request $request, int $id)
    {
        //数据验证
        $this->validate($request, [
            'name' => 'required|unique:roles,name,' . $id
        ]);
        //数据修改
        Role::where('id', $id)->update($request->only('name'));
        //跳转
        return response()->json(['status' => 'success', 'message' => '修改成功']);
    }

    //角色删除
    public function destroy(int $id)
    {
        //删除数据(当配置软删除后为软删除，不然为物理删除)
        Role::find($id)->delete();
        //强制删除(即使配置软删除，也能物理删除)
        //Role::find($id)->forceDelete();
        return response()->json(['status' => 'success', 'message' => '删除成功']);
    }

    //角色还原
//    public function restore(int $id)
//    {
//        //数据还原
//        Role::onlyTrashed()->where('id', $id)->restore();
//        return redirect()->route('admin.role.index')->with('success', '还原成功');
//    }


    //分配权限显示
    public function permission(Role $role)
    {
        //获取所有权限
        $permissions = Permission::get()->toArray();
        //获取当前角色的权限
        $rolePermissions = $role->permissions()->pluck('permissions.id')->toArray();
        return view('admin.role.permission', compact('role', 'permissions', 'rolePermissions'));
    }

    //分配权限处理
    public function permissionUpdate(Request $request, Role $role)
    {
        //获取权限id，同步权限
        $role->permissions()->sync($request->get('permission'));
        //跳转
        return response()->json(['status' => 'success', 'message' => '分配成功']);
    }
}
