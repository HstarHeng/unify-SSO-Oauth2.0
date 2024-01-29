{{--判断是否有success闪存--}}
@if(session('success'))
    <div class="Huialert Huialert-success" style="width: 350px; margin-left: auto; margin-right: auto;">
        <i class="Hui-iconfont">&#xe6a6;</i>
        {{session('success')}}
    </div>
@endif
