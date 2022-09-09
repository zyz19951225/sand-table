<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="之江.Main" %>


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
                 margin-top: 316px;
                 margin-left: 375px;
                 width: 1171px;
                 height: 668PX;

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
                left: 358px;
                top: 258px;
                /* margin-top: 525px; */
                height: 116px;
                width: 472px;
                /* margin-left: 733px; */
                font-weight: 600;
                font-family: 宋体;
                text-align: center;
                border-radius: 10px;
                border: 0;
        }

        .switch {
                        background: url(image/newimg/切换至IP模式.png) no-repeat center center;

                color: black;
                font-size: 18px;
                position: absolute;
                top:468px;
                left:472px;
                height: 50px;
                width: 250px;

                font-weight: 600;
                font-family: 宋体;
                text-align: center;
                border-radius: 10px;
                border: 0;
        }

        .load {
            background: url(image/加载2.png) no-repeat center center;
            background-size: 100% 100%;
            height: 48px;
            width: 48px;
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

        .load1 {
         position: absolute;
         top: 177px;
         left: 431px;
        }
           .load12 {
                position: absolute;
                top: 89px;
                left: 431px;
        }

        .load2 {
            margin-top: 18.4%;
            margin-left: 41%;
        }

        .loadLabel1 {
      color: white;
      font-size: 30px;
      position: absolute;
      top: 94px;
      left: 530px;
      font-weight: 600;
      width: 250px;
      text-align: center;
        }
            .loadLabel12 {
       color: white;
       font-size: 30px;
       position: absolute;
     top: 182px;
          left: 530px;
       font-weight: 600;
       width: 250px;
       text-align: center;
        }

        .loadLabel2 {
            color: white;
            font-size: 18px;
            position: absolute;
            margin-top: 18.3%;
            margin-left: 43%;
            font-weight: 600;
            width: 250px;
            text-align: center;
        }

        .loadLabel3 {
              color: white;
               font-size: 30px;
               position: absolute;
               top: 387px;
               left: 368px;
               /* font-weight: 600; */
               /* width: 300px; */
               text-align: center;
        }

        .loadLabel4 {
                color: #ada5a5;
                font-size: 18px;
                position: absolute;
                top:535px;
                left:448px;
                font-weight: 600;
                width: 300px;
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
          <div class="load load1"></div>
          <div class="load load2"></div>
          <div class="load load12"></div>
          <label class="loadLabel1">巡检中......</label>
          <label class="loadLabel12">正在数据采集......</label>
          <label class="loadLabel2"></label>
          <label class="loadLabel3">当前巡检数据上传模式为身份模态</label>
          <div class="switch"></div>
          <label class="loadLabel4">请在数据采集状态下切换</label>
       </div>

        <button class="home">首页</button>
        <button class="full"></button>

    
    <script>
        $(document).ready(function () {
            var start = false;
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
                    url: "无人智能巡检场景.aspx/Fasong2",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                    data: "{t:2}",//username 为想问后台传的参数（这里的参数可有可无）
                    success: function (result) {
                        //alert(result.d);//result.d为后台返回的参数
                    }
                })
//                 $(location).attr("href", "Main.aspx")
                $(".bdy").innerHTML=''
                $(".bdy").load("Main.aspx")
            });
            var types = 0;
            setInterval(function () {
                $.ajax({
                    type: "post",
                    contentType: "application/json; charset=utf-8",//传值的方式
                    dataType: "json",
                    url: "无人智能巡检场景.aspx/GetTypes",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                    success: function (result) {
                        types = result.d;
                        if (start) {
                            $(".loadLabel2").show();
                        }
                        if (result.d == 1) {
                            $(".loadLabel2").text("采集中……");
                            $(".switch").css("color", "black");
                        } else if (result.d == 2) {
                            $(".loadLabel2").text("采集完成，正在上传数据……");
                            $(".switch").css("color", "gray");
                        } else if (result.d == 3) {
                            $(".loadLabel2").text("上传失败。");
                            $(".loadLabel3").text("当前巡检数据上传模式为身份模态");
                            $(".switch").css("color", "gray");
                        } else if (result.d == 4) {
                            $(".loadLabel2").text("上传成功。");
                            $(".loadLabel3").text("当前巡检数据上传模式为身份模态");
                            $(".switch").css("color", "gray");
                        }
                    }
                })
            }, 500);
            $(".load1").hide();
            $(".load2").hide();
            $(".loadLabel1").hide();
            $(".load12").hide();
            $(".loadLabel12").hide();
            $(".loadLabel2").hide();
            $(".loadLabel3").hide();
            $(".loadLabel4").hide();
            $(".switch").hide();

            $(".inspection").click(function (e) {
                start = true;
                $(".load1").show();
                  $(".inspection").css({"background":"url(image/newimg/停止巡检.png) no-repeat center center"});
                $(".loadLabel1").show();
                $(".load12").show();
                $(".loadLabel12").show();
               $(".loadLabel3").show();
                $(".loadLabel4").show();
                $(".switch").show();
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
            });
            $(".switch").click(function (e) {
                if (types == 1) {
                    $(".loadLabel3").text("当前巡检数据上传模式为IP模态");
                    $.ajax({
                        type: "post",
                        contentType: "application/json; charset=utf-8",//传值的方式
                        dataType: "json",
                        url: "无人智能巡检场景.aspx/Fasong",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                        data: "{t:2}",//username 为想问后台传的参数（这里的参数可有可无）
                        success: function (result) {
                            //alert(result.d);//result.d为后台返回的参数
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
