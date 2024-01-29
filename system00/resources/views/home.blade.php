@extends('layouts.app')

@section('content')
{{--<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">首页</div>
                <a href="http://system01.com" class="label label-danger radius delbtn" >a系统</a>
            </div>
        </div>
    </div>
</div>--}}

    <section class="parallax-container bg-athens-gray" style=" width: 100%; height: 95vh;">
        <div class="parallax-content">
            <div class="section-50 section-md-75 section-xl-top-100 section-xl-bottom-120">
                <div class="container">
                    <div class="row row-40 row-xl-60 offset-xl-top-60">
                        <div class="col-md-6 col-lg-4">
                            <article class="icon-box-vertical" style="display: flex; flex-direction: column; align-items: center; justify-content: center;">
                                <span class="novi-icon icon icon-primary icon-md material-icons-layers" style="font-size: 3em;"></span>
                                <h5 class="icon-box-header"><a href="http://system01.com">system01</a></h5>
                                <p></p>
                            </article>
                        </div>
                        <div class="col-md-6 col-lg-4">
                            <article class="icon-box-vertical" style="display: flex; flex-direction: column; align-items: center; justify-content: center;">
                                <span class="novi-icon icon icon-primary icon-md material-icons-layers" style="font-size: 3em;"></span>
                                <h5 class="icon-box-header"><a href="http://system02.com">system02</a></h5>
                                <p></p>
                            </article>
                        </div>
                        <div class="col-md-6 col-lg-4">
                            <article class="icon-box-vertical" style="display: flex; flex-direction: column; align-items: center; justify-content: center;">
                                <span class="novi-icon icon icon-primary icon-md material-icons-layers" style="font-size: 3em;"></span>
                                <h5 class="icon-box-header"><a href="http://system03.com">system03</a></h5>
                                <p></p>
                            </article>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection

@section('js')
    {{--<script src="/site/js/core.min.js"></script>--}}
    <script src="/site/js/script.js"></script>
@endsection

@push('scripts')
    <script type="text/javascript" src="/admin/lib/jquery/1.9.1/jquery.min.js"></script>
    <script type="text/javascript" src="/admin/lib/layer/2.4/layer.js"></script>
{{--    <script type="text/javascript" src="/admin/static/h-ui/js/H-ui.min.js"></script>
    <script type="text/javascript" src="/admin/static/h-ui.admin/js/H-ui.admin.js"></script>--}}

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
