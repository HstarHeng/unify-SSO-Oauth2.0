@if ($errors->any())
    <div class="Huialert Huialert-danger" style="width: 350px; margin-left: auto; margin-right: auto;">
        <i class="Hui-iconfont">&#xe6a6;</i>
        @foreach ($errors->all() as $error)
            <li>{{ $error }}</li>
        @endforeach
    </div>
@endif
