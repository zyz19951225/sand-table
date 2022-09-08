<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="之江.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script type="text/javascript" src="/jquery-1.8.0.min.js"></script>
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

        .occlusion {
            background-color: black;
            opacity: 0.4;
            height: 1080px;
            width: 1920px;
            position: absolute;
        }

        .title {
            background-image: url(image/newimg/生产制造场景.png);
        }
        .control-bar {
            border-bottom: 1px solid rgba(255,255,255,.5);
            padding-bottom: 24px;
            
        }
        .lable4 {
            margin-right: 36px;
        }

        .chanxian {
               /* background: url(image/产线生产控制.png) no-repeat center center; */
               position: absolute;
               top: 424px;
               left: 814px;
               color: white;
               font-size: 52px;
        }

        .image {
            background: url(image/图例.png) no-repeat center center;
            background-size: 100% 100%;
            position: absolute;
            margin-top: 20%;
            margin-left: 45%;
            width: 80px;
            height: 80px;
        }

        .state {
            color: white;
            font-size: 24px;
            position: absolute;
            margin-top: 21.2%;
            margin-left: 51%;
            border-radius: 40px;
        }
        .label1, .label2 {
            color: white;
            font-size: 28px;
            position: absolute;
            left: 742px;
            line-height: 48px;;
        }
        .label1 {
            top: 566px;       
        }

        .label2 {
            top: 660px;
        }
        .input, .input2 {
            height: 50px;
            padding: 0 12px;
            color: black;
            font-size: 28px;
            position: absolute;
            border: none;
            background: #fff;
        }

        .input {
            top: 566px;
            width: 250px;
            left: 920px;
            border-radius: 4px;
        }

        .input2 {
            top: 660px;
            width: 80px;
            left: 970px;
            text-align: center;
        }

        .but1, .but2 {
            position: absolute;
            top: 660px;
            height: 50px;
            width: 50px;
            color: #fff;
            font-size: 24px;
            background: #2097FF;
            border: none;
            text-align: center;
        }
        .but2 {
            left: 1074px;
        }

        .but1 {
            left: 920px;
        }

        .go {
            background: url(image/newimg/启动纪念币制作.png) no-repeat center center;
            background-size: contain;
            position: absolute;
            margin-top: 803px;
            margin-left: 734px;
            height: 116px;
            width: 472px;
            color: white;
            font-size: 18px;
            border: 0;
            font-weight: 600;
        }
    .image1 {
          position: absolute;
          top: 326px;
          left: 375px;
          width: 1170px;
          height: 668px;
    }

    </style>
</head>
<body class="bdy">
    <div id="app">
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
        <div class="box image1"></div>
        <div class="chanxian">产线生产控制</div>
<!--        <div class="image"></div>-->
          
<!--        <label class="state" id="type" runat="server">待启动</label>-->
        <label class="label1">纪念币文字:</label>
        <label class="label2">纪念币数量:</label>
        <input type="text" value="之江实验室" class="input" maxlength="8" />
        <input type="number" v-model="counter" class="input2" max="5" oninput="if(value>5)value=5;if(value<0)value=0;" />
        <button class="but1" v-on:click="counter++;if(counter>99)counter=99">+</button>
        <button class="but2" v-on:click="counter--;if(counter<0)counter=0">-</button>
        <button class="go"></button>

        <button class="home">首页</button>
        <button class="full"></button>
    </div>
    <script>


        $(document).ready(function () {
            var ineterval = setInterval(function () {
                $.ajax({
                    type: "post",
                    contentType: "application/json; charset=utf-8",//传值的方式
                    dataType: "json",
                    url: "生产制造场景.aspx/GetYanshiType",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                    success: function (result) {
                        if (result.d) {
                            $(".state").text("待启动");
                        } else {
                            $(".state").text("已启动");
                        }
                    }
                })
            }, 1000);

            $(".go").click(function (e) {
                var v = $(".input2").val();
                if (v > 0) {
                    $(".state").text("已启动");
                    $(".go").css("opacity","0.2");
                    $.ajax({
                        type: "post",
                        contentType: "application/json; charset=utf-8",//传值的方式
                        dataType: "json",
                        url: "生产制造场景.aspx/Fasong",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                        data: "{count:" + v + "}",//username 为想问后台传的参数（这里的参数可有可无）
                        success: function (result) {
                            //alert(result.d);//result.d为后台返回的参数

                        }
                    })
                }
            });

            $(".home").click(function (e) {
                clearInterval(ineterval)
                $.ajax({
                    type: "post",
                    contentType: "application/json; charset=utf-8",//传值的方式
                    dataType: "json",
                    url: "生产制造场景.aspx/Return",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                    data: "{type:" + 2 + "}",//username 为想问后台传的参数（这里的参数可有可无）
                    success: function (result) {
                        //alert(result.d);//result.d为后台返回的参数
                    }
                })
                //                 $(location).attr("href", "Main.aspx")
                                  $(".bdy").innerHTML=''
                                $(".bdy").load("Main.aspx")
            });
            $.ajax({
                type: "post",
                contentType: "application/json; charset=utf-8",//传值的方式
                dataType: "json",
                url: "生产制造场景.aspx/Return",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                data: "{type:" + 3 + "}",//username 为想问后台传的参数（这里的参数可有可无）
                success: function (result) {
                    //alert(result.d);//result.d为后台返回的参数
                }
            })
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
                        url: "生产制造场景.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                        data: "{window1:8,window2:2,operation:1}",//username 为想问后台传的参数（这里的参数可有可无）
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
                        url: "生产制造场景.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                        data: "{window1:8,window2:2,operation:2}",//username 为想问后台传的参数（这里的参数可有可无）
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
                        url: "生产制造场景.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                        data: "{window1:13,window2:2,operation:1}",//username 为想问后台传的参数（这里的参数可有可无）
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
                        url: "生产制造场景.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                        data: "{window1:13,window2:2,operation:2}",//username 为想问后台传的参数（这里的参数可有可无）
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
                url: "生产制造场景.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                data: "{window1:2,window2:2,operation:0}",//username 为想问后台传的参数（这里的参数可有可无）
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
                    url: "生产制造场景.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                    data: "{window1:2,window2:2,operation:0}",//username 为想问后台传的参数（这里的参数可有可无）
                    success: function (result) {
                        //alert(result.d);//result.d为后台返回的参数
                    }
                })
            });
            
            $(".full").click(function (e) {

                let element = document.documentElement;
                if (this.fullscreen) {
                    if (document.exitFullscreen) {
                        document.exitFullscreen();
                    } else if (document.webkitCancelFullScreen) {
                        document.webkitCancelFullScreen();
                    } else if (document.mozCancelFullScreen) {
                        document.mozCancelFullScreen();
                    } else if (document.msExitFullscreen) {
                        document.msExitFullscreen();
                    }
                } else {
                    if (element.requestFullscreen) {
                        element.requestFullscreen();
                    } else if (element.webkitRequestFullScreen) {
                        element.webkitRequestFullScreen();
                    } else if (element.mozRequestFullScreen) {
                        element.mozRequestFullScreen();
                    } else if (element.msRequestFullscreen) {
                        // IE11
                        element.msRequestFullscreen();
                    }
                }
                this.fullscreen = !this.fullscreen;
            });
        });
    </script>
</body>
</html>
