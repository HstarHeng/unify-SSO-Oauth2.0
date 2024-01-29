@extends('admin.common.main')
@section('content')
    <article class="page-container">
        {{--表单验证提示--}}
        @include('admin.common.validate')
        <form action="{{route('admin.role.permissionUpdate', $role)}}" method="post"
              style="position: relative; max-height: 280px; overflow-y: auto;" class="form form-horizontal" id="form-member-add">
            @csrf
            @foreach($permissions as $item)
                <div>
                    <input type="checkbox" name="permission[]" value="{{$item['id']}}"
                           @if(in_array($item['id'], $rolePermissions)) checked @endif>
                    {{$item['name']}}
                </div>
            @endforeach
        </form>
        <div class="row cl" style="position: absolute; bottom: 25px; transform: translate(-50%, 50%); left: 46%;">
            <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
                <input class="btn btn-primary radius" type="submit" form="form-member-add" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
            </div>
        </div>
    </article>
@endsection

@section('js')
    <script type="text/javascript" src="/admin/lib/jquery.validation/1.14.0/jquery.validate.js"></script>
    <script type="text/javascript" src="/admin/lib/jquery.validation/1.14.0/validate-methods.js"></script>
    <script type="text/javascript" src="/admin/lib/jquery.validation/1.14.0/messages_zh.js"></script>
    <script>
        $("#form-member-add").validate({
            onkeyup:false,
            success:"valid",
            submitHandler:function(form){
                $(form).ajaxSubmit({
                    type:'post',
                    dataType:'json',
                    url:"{{route('admin.role.permissionUpdate', $role)}}",
                    success:function(data){
                        layer.msg('编辑成功!',{icon:1,time:1000}, function(){
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
