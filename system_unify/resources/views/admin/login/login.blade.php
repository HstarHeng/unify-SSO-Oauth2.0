<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <link href="/admin/static/h-ui/css/H-ui.min.css" rel="stylesheet" type="text/css"/>
    <link href="/admin/static/h-ui.admin/css/H-ui.login.css" rel="stylesheet" type="text/css"/>
    <link href="/admin/static/h-ui.admin/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="/admin/lib/Hui-iconfont/1.0.8/iconfont.css" rel="stylesheet" type="text/css"/>
    <title>统一认证授权系统登录</title>
</head>
<body>
<input type="hidden" id="TenantId" name="TenantId" value=""/>
{{--<div class="header">sso统一认证授权系统</div>--}}
<div class="loginWraper">
    <div id="loginform" class="loginBox">
        {{--验证错误提示--}}
        @include('admin.common.validate')
        {{--消息提示--}}
        @include('admin.common.msg')
        <form class="form form-horizontal" action="{{route('admin.login2')}}" method="post">
            @csrf
            <div class="row cl">
                <label class="form-label col-xs-3"><i class="Hui-iconfont">&#xe60d;</i></label>
                <div class="formControls col-xs-8">
                    <input name="email" type="email" value="admin4@qq.com" placeholder="请输入邮箱" class="input-text size-L">
                </div>
            </div>
            <div class="row cl">
                <label class="form-label col-xs-3"><i class="Hui-iconfont">&#xe60e;</i></label>
                <div class="formControls col-xs-8">
                    <input name="password" type="password" value="admin111" placeholder="请输入密码" class="input-text size-L">
                </div>
            </div>
            {{--<div class="row cl">
                <div class="formControls col-xs-8 col-xs-offset-3">
                    <input class="input-text size-L" type="text" placeholder="验证码"
                           onblur="if(this.value==''){this.value='验证码:'}"
                           onclick="if(this.value=='验证码:'){this.value='';}" value="验证码:" style="width:150px;">
                    <img src=""> <a id="kanbuq" href="javascript:;">看不清，换一张</a></div>
            </div>
            <div class="row cl">
                <div class="formControls col-xs-8 col-xs-offset-3">
                    <label for="online">
                        <input type="checkbox" name="online" id="online" value="">
                        使我保持登录状态</label>
                </div>
            </div>--}}
            <div class="row cl">
                <div class="formControls col-xs-8 col-xs-offset-3">
                    <button type="submit" class="btn btn-success radius size-L">
                        &nbsp;登&nbsp;&nbsp;&nbsp;&nbsp;录&nbsp;
                    </button>
                    <button type="reset" class="btn btn-default radius size-L">
                        &nbsp;取&nbsp;&nbsp;&nbsp;&nbsp;消&nbsp;
                    </button>
                </div>
            </div>
        </form>
    </div>
</div>
<script type="text/javascript" src="/admin/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="/admin/static/h-ui/js/H-ui.min.js"></script>


</body>
</html>
