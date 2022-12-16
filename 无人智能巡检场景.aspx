<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="无人智能巡检场景.aspx.cs" Inherits="之江.无人智能巡检场景" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style>
        .background {
            background: url(image/newimg/背景.jpg);
            background-size: cover;
            height: 1080px;
            width: 1920px;
            background-repeat: no-repeat;
            background-position: center;
            position: absolute;
        }

        .image1 {
                position: absolute;
                    margin-top: 289px;
                    margin-left: 375px;
                    width: 1171px;
                    height: 660PX;
                        }

        .title {
            background-image: url(image/newimg/无人智能巡检场景.png);
        }

        .control-bar {
            border-bottom: 1px solid rgba(255,255,255,.5);
            padding-bottom: 24px;

        }
        .lable4 {
            margin-right: 36px;
        }

        .inspection {
                background: url(image/newimg/智能巡检.png) no-repeat center center;
                position: absolute;
                left: 2px; right: 0;
                margin: 0 auto;
                top: 258px;
                height: 116px;
                width: 472px;
                text-align: center;
                border-radius: 10px;
                border: 0;
        }
        .inspection.disabled {
            opacity: .5;
            pointer-events: none;
        }

        .switch {   
            font-size: 26px;
            position: absolute;
            top: 520px;
            left: 50%;
            height: 54px;
            transform: translate(-50%, 0);
            line-height: 54px;
            padding: 0 36px;
            text-align: center;
            border-radius: 12px;
            color: #fff;
            background:#2097FF;
            font-weight: lighter;
        }
        .switch.disabled {
            opacity: .5;
            pointer-events: none;
        }

        .load {
            background: url(image/加载2.png) no-repeat left center;
            background-size: 100% auto;
            height: 44px;
            width: 44px;
            position: absolute;
        }

        @-webkit-keyframes rotation {

            from {
                -webkit-transform: rotate(0deg);
            }

            to {
                -webkit-transform: rotate(360deg);
            }
        }

        .load {
            -webkit-transform: rotate(360deg);
            animation: rotation 1s linear infinite;
            -moz-animation: rotation 1s linear infinite;
            -webkit-animation: rotation 1s linear infinite;
            -o-animation: rotation 1s linear infinite;
        }


        .loadLabel1 {
            position: absolute;
            top: 88px;
            left: 0; right: 0;
            display: flex;
            justify-content: center;
        }
        .loadLabel1-in {
            position: relative;
            padding-left: 64px;
            color: white;
            font-size: 36px;
        }
        .loadLabel1 .load {
            left: 0;
            top: 1px;
        }
        .loadLabel2 {
            position: absolute;
            top: 182px;
            left: 0; right: 0;
            display: flex;
            justify-content: center;
        }
        .loadLabel2-in {
            position: relative;
            padding-left: 56px;
            color: white;
            font-size: 30px;
            line-height: 36px;
        }
        .loadLabel2 .load {
            width: 36px;
            height: 36px;
            left: 0;
            top: 0;
        }
        .loadLabel2.success .load, .loadLabel2.failed .load {
            display: none;
        }
        .loadLabel2.success .loadLabel2-in {
            padding-right: 36px;
            background: url(image/newimg/成功.png) no-repeat left center/auto 100%;
        }
        .loadLabel2.failed .loadLabel2-in {
            padding-right: 36px;
            background: url(image/newimg/wrong.png) no-repeat left center/auto 100%;
        }
        .loadLabel3 {
              color: white;
               font-size: 30px;
               position: absolute;
               top: 456px;
               left: 0;
               width: 100%;
               /* font-weight: 600; */
               /* width: 300px; */
               text-align: center;
        }

    </style>
</head>
<body class="bdy">
        <div class="background"></div>
        <div class="occlusion"></div>

        <div class="title"></div>

        <div class="control-bar">
            <label class="lable1">二号投影大屏：</label>
            <div class="control-bar-button lable2">
                背景介绍
                <div class="play"></div>
            </div>
            <div class="control-bar-button lable4">
                沙盘演示
                <div class="play2"></div>
            </div>
            <div class="control-bar-button lable3">沙盘位置示意图</div>
        </div>
        <label class="lable1">二号投影大屏:</label>
        <label class="lable2">场景介绍</label>
        <label class="lable4">沙盘演示</label>
        <label class="lable3">沙盘位置示意图</label>
<!--        <button class="inspection">智能巡检</button>-->
      <div class="image1 box">
          <div class="inspection"></div>
          <div class="loadLabel1">
            <div class="loadLabel1-in">
                <div class="load"></div>
                <label>正在巡检......</label>
            </div>
          </div>
          <div class="loadLabel2">
            <div class="loadLabel2-in">
                <div class="load"></div>
                <label class="loadLabel2-text"></label>
            </div>
          </div>
          <label class="loadLabel3">当前巡检数据上传模式为身份模态</label>
          <div class="switch">切换至IP模式(采集时可用)</div>
       </div>

        <button class="home">首页</button>
        <!-- <button class="full"></button> -->


    <script>
        $(document).ready(function () {
            var start = false;
            var types = 0; //巡检状态
            var mode = 'mf' //上传模式
            $.ajax({
                type: "post",
                contentType: "application/json; charset=utf-8",//传值的方式
                dataType: "json",
                url: "无人智能巡检场景.aspx/Fasong2",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                data: "{t:1}",//username 为想问后台传的参数（这里的参数可有可无）
                success: function (result) {
                    //alert(result.d);//result.d为后台返回的参数
                }
            })
            $(".home").click(function (e) {

                $.ajax({
                    type: "post",
                    contentType: "application/json; charset=utf-8",//传值的方式
                    dataType: "json",
                    url: "无人智能巡检场景.aspx/Fasong",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                    data: "{t:3}",//username 为想问后台传的参数（这里的参数可有可无）
                    success: function (result) {
                        //alert(result.d);//result.d为后台返回的参数
                    }
                })
//                 $(location).attr("href", "Main.aspx")
                $(".bdy").innerHTML=''
                $(".bdy").load("Main.aspx")
                interval && clearInterval(interval)
            });
            
            var interval = setInterval(function () {
                if (!start) return
                $.ajax({
                    type: "post",
                    contentType: "application/json; charset=utf-8",//传值的方式
                    dataType: "json",
                    url: "无人智能巡检场景.aspx/GetTypes",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                    success: function (result) {
                        if (result.d === 1) {
                            $(".loadLabel2").show();
                            $(".loadLabel2-text").text("巡检小车正在数据采集……");
                            $(".loadLabel2").attr('class', 'loadLabel2')
                            if (mode === 'mf') {
                                $(".switch").removeClass("disabled");
                            }
                        } else if (result.d === 2) {
                            $(".loadLabel2").show();
                            if (mode === 'ip') {
                                $(".loadLabel2-text").text("数据采集完成，巡检小车正在上传数据(IP模态)……");
                            } else {
                                $(".loadLabel2-text").text("数据采集完成，巡检小车正在上传数据(身份模态)……");
                            }
                            $(".loadLabel2").attr('class', 'loadLabel2')
                            $(".switch").addClass("disabled");
                        } else if (result.d === 3) {
                            $(".switch").addClass("disabled");
                            if (types !== 3) {
                                $(".loadLabel2").show();
                                $(".loadLabel2-text").text("传输效果不佳");
                                $(".loadLabel2").attr('class', 'loadLabel2 failed')
                                setTimeout(() => {
                                    $(".loadLabel2").hide();
                                    $(".loadLabel3").text("当前巡检数据上传模式为身份模态");
                                    mode = 'mf'
                                }, 3500)
                            }
                        } else if (result.d === 4) {
                            $(".switch").addClass("disabled");
                            if (types !== 4) {
                                $(".loadLabel2").show();
                                $(".loadLabel2-text").text("上传成功");
                                $(".loadLabel2").attr('class', 'loadLabel2 success')
                                setTimeout(() => {
                                    $(".loadLabel2").hide();
                                    $(".loadLabel3").text("当前巡检数据上传模式为身份模态");
                                    mode = 'mf'
                                }, 3500)
                            }
                        }
                        types = result.d;
                    }
                })
            }, 500);
            $(".loadLabel1").hide();

            //$(".loadLabel12").hide();
            $(".loadLabel2").hide();
            $(".loadLabel3").hide();
            $(".switch").hide();

            $(".inspection").click(function (e) {
                start = true;
                $(".inspection").addClass('disabled');
                $(".loadLabel1").show();
               $(".loadLabel3").show();
                $(".switch").show();
                $(".switch").addClass("disabled");
                $.ajax({
                    type: "post",
                    contentType: "application/json; charset=utf-8",//传值的方式
                    dataType: "json",
                    url: "无人智能巡检场景.aspx/Fasong",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                    data: "{t:1}",//username 为想问后台传的参数（这里的参数可有可无）
                    success: function (result) {
                        //alert(result.d);//result.d为后台返回的参数
                    }
                })
                /*
                if (!xunjianzhangt) {
                    $.ajax({
                        type: "post",
                        contentType: "application/json; charset=utf-8",//传值的方式
                        dataType: "json",
                        url: "无人智能巡检场景.aspx/Fasong",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                        data: "{t:1}",//username 为想问后台传的参数（这里的参数可有可无）
                        success: function (result) {
                            //alert(result.d);//result.d为后台返回的参数
                        }
                    })
                } else {
                    $.ajax({
                        type: "post",
                        contentType: "application/json; charset=utf-8",//传值的方式
                        dataType: "json",
                        url: "无人智能巡检场景.aspx/Fasong",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                        data: "{t:3}",//username 为想问后台传的参数（这里的参数可有可无）
                        success: function (result) {
                            //alert(result.d);//result.d为后台返回的参数
                        }
                    })
                }*/
                
                xunjianzhangt = true;
            });
            $(".switch").click(function (e) {
                if (types == 1) {
                    $.ajax({
                        type: "post",
                        contentType: "application/json; charset=utf-8",//传值的方式
                        dataType: "json",
                        url: "无人智能巡检场景.aspx/Fasong",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                        data: "{t:2}",//username 为想问后台传的参数（这里的参数可有可无）
                        success: function (result) {
                            //alert(result.d);//result.d为后台返回的参数
                            $(".loadLabel3").text("当前巡检数据上传模式为IP模态");
                            mode = 'ip'
                            $(".switch").addClass("disabled");
                        }
                    })
                }
            });

            var bofang = true;
            var bofang2 = true;
            $(".lable2").click(function (e) {
                if (bofang) {
                    $(".play").removeClass("play").addClass("stop");
                    bofang = false;
                    $.ajax({
                        type: "post",
                        contentType: "application/json; charset=utf-8",//传值的方式
                        dataType: "json",
                        url: "无人智能巡检场景.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                        data: "{window1:10,window2:4,operation:1}",//username 为想问后台传的参数（这里的参数可有可无）
                        success: function (result) {
                            //alert(result.d);//result.d为后台返回的参数
                        }
                    })
                } else {
                    $(".stop").removeClass("stop").addClass("play");
                    bofang = true;
                    $.ajax({
                        type: "post",
                        contentType: "application/json; charset=utf-8",//传值的方式
                        dataType: "json",
                        url: "无人智能巡检场景.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                        data: "{window1:10,window2:4,operation:2}",//username 为想问后台传的参数（这里的参数可有可无）
                        success: function (result) {
                            //alert(result.d);//result.d为后台返回的参数
                        }
                    })
                }

            });

            $(".lable4").click(function (e) {
                if (bofang2) {
                    $(".play2").removeClass("play2").addClass("stop2");
                    bofang2 = false;
                    $.ajax({
                        type: "post",
                        contentType: "application/json; charset=utf-8",//传值的方式
                        dataType: "json",
                        url: "无人智能巡检场景.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                        data: "{window1:15,window2:4,operation:1}",//username 为想问后台传的参数（这里的参数可有可无）
                        success: function (result) {
                            //alert(result.d);//result.d为后台返回的参数
                        }
                    })
                } else {
                    $(".stop2").removeClass("stop2").addClass("play2");
                    bofang2 = true;
                    $.ajax({
                        type: "post",
                        contentType: "application/json; charset=utf-8",//传值的方式
                        dataType: "json",
                        url: "无人智能巡检场景.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                        data: "{window1:15,window2:4,operation:2}",//username 为想问后台传的参数（这里的参数可有可无）
                        success: function (result) {
                            //alert(result.d);//result.d为后台返回的参数
                        }
                    })
                }

            });
            $.ajax({
                type: "post",
                contentType: "application/json; charset=utf-8",//传值的方式
                dataType: "json",
                url: "无人智能巡检场景.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                data: "{window1:4,window2:4,operation:0}",//username 为想问后台传的参数（这里的参数可有可无）
                success: function (result) {
                    //alert(result.d);//result.d为后台返回的参数
                }
            })
            $(".lable3").click(function (e) {
                bofang = true;
                $.ajax({
                    type: "post",
                    contentType: "application/json; charset=utf-8",//传值的方式
                    dataType: "json",
                    url: "无人智能巡检场景.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                    data: "{window1:4,window2:4,operation:0}",//username 为想问后台传的参数（这里的参数可有可无）
                    success: function (result) {
                        //alert(result.d);//result.d为后台返回的参数
                    }
                })
            });
        });
    </script>
</body>
</html>
