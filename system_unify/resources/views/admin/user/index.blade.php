<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="stylesheet" type="text/css" href="/admin/static/h-ui/css/H-ui.min.css" />
    <link rel="stylesheet" type="text/css" href="/admin/static/h-ui.admin/css/H-ui.admin.css" />
    <link rel="stylesheet" type="text/css" href="/admin/lib/Hui-iconfont/1.0.8/iconfont.css" />
    <link rel="stylesheet" type="text/css" href="/admin/static/h-ui.admin/skin/default/skin.css" id="skin" />
    <link rel="stylesheet" type="text/css" href="/admin/static/h-ui.admin/css/style.css" />
    <title>用户管理</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页
    <span class="c-gray en">&gt;</span> 用户中心
    <span class="c-gray en">&gt;</span> 用户管理
{{--    <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a>--}}
</nav>
<div class="page-container">
    <form method="get" class="text-c">
        姓名：
        <input type="text" class="input-text" style="width:250px" placeholder="" name="name" autocomplete="off">
        邮箱：
        <input type="text" class="input-text" style="width:250px" placeholder="" name="email" autocomplete="off">
        <button type="submit" class="btn btn-success radius" ><i class="Hui-iconfont">&#xe665;</i> 搜索</button>
    </form>
    <div class="cl pd-5 bg-1 bk-gray mt-20">
        <span class="l">
            <a href="javascript:;"  onclick="datadel()" class="btn btn-danger radius">
                <i class="Hui-iconfont">&#xe6e2;</i> 批量删除
            </a>
            <a href="javascript:;" onclick="member_add('添加用户','{{route('admin.user.create')}}','','400')" class="btn btn-primary radius">
                <i class="Hui-iconfont">&#xe600;</i> 添加用户
            </a>
        </span>
    </div>
    <div class="mt-20">
        <table class="table table-border table-bordered table-hover table-bg table-sort">
            <thead>
            <tr class="text-c">
                <th width="25"><input type="checkbox" class="checkall" name="" value=""></th>
                <th width="80">ID</th>
                <th width="100">姓名</th>
                <th width="150">邮箱</th>
                <th width="130">创建时间</th>
                <th width="130">修改时间</th>
                <th width="100">操作</th>
            </tr>
            </thead>
            <tbody>
            @foreach($data as $item)
                <tr class="text-c">
                    <td>
                        @if($item->deleted_at == null)
                            <input type="checkbox" class="checkone" value="{{$item->id}}" name="id[]">
                        @endif
                    </td>
                    <td>{{$item->id}}</td>
                    <td>{{$item->name}}</td>
                    <td>{{$item->email}}</td>
                    <td>{{$item->created_at}}</td>
                    <td>{{$item->updated_at}}</td>
                    <td class="td-manage">
                        <a href="#" onclick="member_role('编辑角色','{{route('admin.user.role', $item)}}','300', '400')" class="label label-secondary radius">角色</a>
                        <a href="#" onclick="member_edit('编辑用户','{{route('admin.user.edit', ['id' => $item->id])}}','', '400')" class="label label-secondary radius">编辑</a>
                        <a href="{{route('admin.user.destroy',['id' => $item->id]) }}" class="label label-danger radius delbtn">删除</a>
                        {{--@if($item->deleted_at != null)
                            <a href="{{route('admin.user.restore',['id' => $item->id]) }}" class="label label-warning radius ">还原</a>
                        @else
                            <a href="{{route('admin.user.destroy',['id' => $item->id]) }}" class="label label-danger radius delbtn">删除</a>
                        @endif--}}
                    </td>
                </tr>
            @endforeach
            </tbody>
        </table>
    </div>
</div>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="/admin/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="/admin/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="/admin/static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="/admin/static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="/admin/lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="/admin/lib/datatables/1.10.15/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="/admin/lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">

    $('.checkall').click(function(){
        $('.checkone').prop('checked',$(this).prop('checked'));
    });
    $('.checkone').click(function(){
        if($('.checkone:checked').length === $('.checkone').length){
            $('.checkall').prop('checked',true);
        }else{
            $('.checkall').prop('checked',false);
        }
    });


    $('table').dataTable({
        "aaSorting": [[ 1, "asc" ]],//默认第几个排序
        "searching": false,//搜索框
        "bStateSave": true,//状态保存
        "aoColumnDefs": [
            //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
            {"bSortable":false,"aTargets":[0,6]}// 制定列不参与排序
        ]
    });

    /*用户-添加*/
    function member_add(title,url,w,h){
        layer_show(title,url,w,h);
    }
    /*角色-编辑*/
    function member_role(title,url,w,h){
        layer_show(title,url,w,h);
    }
    /*用户-停用*/
    function member_stop(obj,id){
        layer.confirm('确认要停用吗？',function(index){
            $.ajax({
                type: 'POST',
                url: '',
                dataType: 'json',
                success: function(data){
                    $(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="member_start(this,id)" href="javascript:;" title="启用"><i class="Hui-iconfont">&#xe6e1;</i></a>');
                    $(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">已停用</span>');
                    $(obj).remove();
                    layer.msg('已停用!',{icon: 5,time:1000});
                },
                error:function(data) {
                    console.log(data.msg);
                },
            });
        });
    }

    /*用户-启用*/
    function member_start(obj,id){
        layer.confirm('确认要启用吗？',function(index){
            $.ajax({
                type: 'POST',
                url: '',
                dataType: 'json',
                success: function(data){
                    $(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="member_stop(this,id)" href="javascript:;" title="停用"><i class="Hui-iconfont">&#xe631;</i></a>');
                    $(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已启用</span>');
                    $(obj).remove();
                    layer.msg('已启用!',{icon: 6,time:1000});
                },
                error:function(data) {
                    console.log(data.msg);
                },
            });
        });
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
        return false;
    });

    /*批量删除*/
    function datadel(){
        layer.confirm('确定要删除吗？',{
            btn:['确定','取消']
        },()=>{
            // 选中的用户
            let ids = $('input[name="id[]"]:checked');
            // 删除的id
            let id = [];
            // 循环
            $.each(ids,(key,val)=>{
                // dom对象 转为 jquery对象 $(dom对象)
                //id.push($(val).val());
                id.push(val.value);
            });
            // 发起ajax
            $.ajax({
                url:"{{route('admin.user.destroyAll')}}",
                data:{id,_token},
                type:'DELETE'
            }).then(ret=>{
                if(ret.status === 'success'){
                    layer.msg(ret.message,{icon:1,time:1000},()=>{
                        // 删除成功后，刷新当前页面
                        window.location.reload();
                    });
                }
                if(ret.status === 'error'){
                    layer.msg(ret.message,{icon:2,time:1000},()=>{
                        // 删除成功后，刷新当前页面
                        window.location.reload();
                    });
                }
            })
        })
    }
</script>
</body>
</html>
