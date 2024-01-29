<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Permission;
use App\Models\Role;
use Illuminate\Http\Request;

class PermissionController extends Controller
{
    //权限列表
    public function index(Request $request)
    {
        //获取搜索框
        $name = $request->get('name');
        //获取数据
        if ($name) {
            $data = Permission::where('name', 'like', "%{$name}%")->get();
        } else {
            $data = Permission::get();
        }
        return view('admin.permission.index', compact('data'));
    }

    //添加权限显示
    public function create()
    {
        return view('admin.permission.create');
    }

    //添加权限处理
    public function store(Request $request)
    {
        //数据验证
        $this->validate($request, [
            'name' => 'required|unique:permissions,name',
            'redirect_uri' => 'unique:permissions,redirect_uri',
        ]);
        //数据添加
        Permission::create([
            'name' => $request->name,
            'redirect_uri' => $request->redirect_uri,
        ]);
        //跳转
        return response()->json(['status' => 'success', 'message' => '添加成功']);
    }

    //根据id获取权限信息
    public function show(Permission $permission)
    {
        //
    }

    //权限编辑显示
    public function edit(int $id)
    {
        $model = Permission::find($id);
        return view('admin.permission.edit', compact('model'));
    }

    //权限编辑处理
    public function update(Request $request, int $id)
    {
        //数据验证
        $this->validate($request, [
            'name' => 'required|unique:permissions,name,' . $id,
            'redirect_uri' => 'unique:permissions,redirect_uri,' . $id,
        ]);
        //数据修改
        Permission::where('id', $id)->update($request->only(['name', 'redirect_uri']));
        //跳转
        return response()->json(['status' => 'success', 'message' => '修改成功']);
    }

    //删除权限
    public function destroy(int $id)
    {
        //删除数据(当配置软删除后为软删除，不然为物理删除)
        Permission::find($id)->delete();
        //强制删除(即使配置软删除，也能物理删除)
        //Permission::find($id)->forceDelete();
        return response()->json(['status' => 'success', 'message' => '删除成功']);
    }

    //角色还原
//    public function restore(int $id)
//    {
//        //数据还原
//        Permission::onlyTrashed()->where('id', $id)->restore();
//        return redirect()->route('admin.permission.index')->with('success', '还原成功');
//    }
}
