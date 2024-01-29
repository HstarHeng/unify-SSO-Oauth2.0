@extends('admin.common.main')
@section('content')
    <article class="page-container">
        {{--表单验证提示--}}
        @include('admin.common.validate')
        <form action="{{route('admin.role.store')}}" method="post" class="form form-horizontal" id="form-member-add">
            @csrf
            <div class="row cl">
                <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>角色名：</label>
                <div class="formControls col-xs-8 col-sm-9">
                    <input type="text" class="input-text" style="width: 380px" name="name" autocomplete="off">
                </div>
            </div>
            <div class="row cl">
                <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
                    <input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
                </div>
            </div>
        </form>
    </article>
@endsection

@section('js')
    <script type="text/javascript" src="/admin/lib/jquery.validation/1.14.0/jquery.validate.js"></script>
    <script type="text/javascript" src="/admin/lib/jquery.validation/1.14.0/validate-methods.js"></script>
    <script type="text/javascript" src="/admin/lib/jquery.validation/1.14.0/messages_zh.js"></script>
    <script>
        $("#form-member-add").validate({
            rules:{
                name:{
                    required:true,
                },
            },
            onkeyup:false,
            success:"valid",
            submitHandler:function(form){
                $(form).ajaxSubmit({
                    type:'post',
                    dataType:'json',
                    url:"{{route('admin.role.store')}}",
                    success:function(data){
                        layer.msg('添加成功!',{icon:1,time:1000}, function(){
                            var index = parent.layer.getFrameIndex(window.name);
                            parent.layer.close(index);
                        });
                        window.parent.location.reload();
                        return true;
                    },
                    error:function(XmlHttpRequest,textStatus,errorThrown){
                        var response = JSON.parse(XmlHttpRequest.responseText);
                        var messages = [];
                        for (var field in response.errors) {
                            // 将每个字段下的所有错误都添加到消息数组中
                            messages = messages.concat(response.errors[field]);
                        }
                        layer.msg(messages[0], { icon: 5, time: 2000 });
                        return false;
                    }
                });
            }
        });
    </script>
@endsection
