@extends('admin.common.main')
@section('content')
    <nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页
        <span class="c-gray en">&gt;</span> 用户中心
        <span class="c-gray en">&gt;</span> 权限列表
    </nav>

    <div class="page-container">
        <form method="get" class="text-c">
            权限名：
            <input type="text" class="input-text" style="width:250px" placeholder="" name="name" autocomplete="off">
            <button type="submit" class="btn btn-success radius" ><i class="Hui-iconfont">&#xe665;</i> 搜索</button>
        </form>
        <div class="cl pd-5 bg-1 bk-gray mt-20">
            <span class="l">
                <a href="javascript:;" onclick="member_add('添加权限','{{route('admin.permission.create')}}','','400')" class="btn btn-primary radius">
                    <i class="Hui-iconfont">&#xe600;</i> 添加权限
                </a>
            </span>
        </div>
        <div class="mt-20">
            <table class="table table-border table-bordered table-hover table-bg table-sort">
                <thead>
                <tr class="text-c">
                    <th width="80">ID</th>
                    <th width="100">权限名</th>
                    <th width="150">回调地址</th>
                    <th width="130">创建时间</th>
                    <th width="130">修改时间</th>
                    <th width="100">操作</th>
                </tr>
                </thead>
                <tbody>
                @foreach($data as $item)
                    <tr class="text-c">
                        <td>{{$item->id}}</td>
                        <td>{{$item->name}}</td>
                        <td>{{$item->redirect_uri}}</td>
                        <td>{{$item->created_at}}</td>
                        <td>{{$item->updated_at}}</td>
                        <td class="td-manage">
                            <a href="#" onclick="member_edit('编辑权限','{{route('admin.permission.edit', ['id' => $item->id])}}','', '400')" class="label label-secondary radius">编辑</a>
                            <a href="{{route('admin.permission.destroy',['id' => $item->id]) }}" class="label label-danger radius delbtn">删除</a>
                            {{--@if($item->deleted_at != null)
                                <a href="{{route('admin.permission.restore',['id' => $item->id]) }}" class="label label-warning radius ">还原</a>
                            @else
                                <a href="{{route('admin.permission.destroy',['id' => $item->id]) }}" class="label label-danger radius delbtn">删除</a>
                            @endif--}}
                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
    </div>
@endsection

@section('js')
    <script type="text/javascript">

        $('table').dataTable({
            "aaSorting": [[ 0, "asc" ]],//默认第几个排序
            "searching": false,//搜索框
            "bStateSave": true,//状态保存
            "aoColumnDefs": [
                //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
                {"bSortable":false,"aTargets":[1,2,5]}// 制定列不参与排序
            ]
        });

        /*用户-添加*/
        function member_add(title,url,w,h){
            layer_show(title,url,w,h);
        }
        /*用户-查看*/
        function member_show(title,url,id,w,h){
            layer_show(title,url,w,h);
        }
        /*用户-编辑*/
        function member_edit(title,url,w,h){
            layer_show(title,url,w,h);
        }
        /*密码-修改*/
        function change_password(title,url,id,w,h){
            layer_show(title,url,w,h);
        }
        /*用户-删除*/
        //生成一个token csrf
        const _token = "{{csrf_token()}}";
        $('.delbtn').click(function(){
            // 得到请求的url地址
            let url = $(this).attr('href');
            layer.confirm('确认要删除吗？',function(index){
                // 发起delete请求
                $.ajax({
                    url,
                    data:{_token},
                    type:'DELETE',
                    dataType:'json'
                }).then(({status,message})=>{
                    if(status === 'success'){
                        // 提示插件
                        layer.msg(message,{icon:1, time:1000},()=>{
                            // 删除当前行
                            $(this).parents('tr').remove();
                        });
                        // 删除成功后，刷新当前页面
                        window.location.reload();
                    }
                })
            });
            return false
        });
    </script>
@endsection
