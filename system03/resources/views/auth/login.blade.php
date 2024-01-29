@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">登录</div>

                    <div class="card-body d-flex justify-content-center">
                        <a href="{{ route('sso.login') }}" class="btn btn-danger btn-sm">SSO登录</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@push('scripts')
    <script type="text/javascript" src="/admin/lib/jquery/1.9.1/jquery.min.js"></script>
    <script type="text/javascript" src="/admin/lib/layer/2.4/layer.js"></script>
    <script type="text/javascript" src="/admin/static/h-ui/js/H-ui.min.js"></script>
    <script type="text/javascript" src="/admin/static/h-ui.admin/js/H-ui.admin.js"></script>

    <script type="text/javascript" src="/admin/lib/My97DatePicker/4.8/WdatePicker.js"></script>
    <script type="text/javascript" src="/admin/lib/datatables/1.10.15/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="/admin/lib/laypage/1.2/laypage.js"></script>
    <script>
        // 取得 URL 参数
        const urlParams = new URLSearchParams(window.location.search);
        console.log(urlParams.get('message'));
        const message = urlParams.get('message');

        if (message) {
            // 如果有 message，那么显示一个提示框
            layer.msg(decodeURIComponent(message), {icon: 5, time: 3000});
        }
    </script>
@endpush
