<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="之江.Main" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8;width=device-width, initial-scale=1.0, user-scalable=no" />
    <title></title>
    <script type="text/javascript" src="/jquery-1.8.0.min.js"></script>

    <style>
        * {
            margin: 0;
            padding: 0;
        }
        body {
            height: 100%;
            width: 100%;
            margin: 0;
            padding: 0;
        }
        .background {
            /*background: url(image/背景图.jpg);*/
            background-size: cover;
            height: 1080px;
            width: 1920px;
            background-repeat: no-repeat;
            background-position: center;
            position: absolute;
        }
        .occlusion {
            background-color: black;
            opacity: 0.5;
            height: 1080px;
            width: 1920px;
            position: absolute;
        }
        .title {
            background: url(image/newimg/多模态网络智慧工厂解决方案.png) no-repeat center center;
            background-size: auto 100%;
            height: 77px;
            width: 760px;
            position: absolute;
            top: 20px;
            left: 0;
            right: 0;
            margin: auto;
        }
        .play, .play2 {
            background: url(image/newimg/xxxxx.png) no-repeat center center;
            background-size: 100% 100%;
            height: 20px;
            width: 45px;
            margin-left: 8px;
        }
        .stop {
            background: url(image/newimg/xxxxx.png) no-repeat center center;
            background-size: 100% 100%;
            height: 20px;
            width: 45px;
            position: absolute;
            margin-top: 9.3%;
            margin-left: 53%;
        }
        .control-bar {
            width: 100%;
            position: absolute;
            margin-top: 156px;
            display: flex;
            align-items: center;
            justify-content: center;
            
        }
        .control-bar-button {
            height: 56px;
            padding: 0 20px;
            display: flex;
            align-items: center;
            border-radius: 10px;
            border: 1px solid rgba(255,255,255,.8);
            color: white;
            font-size: 22px;
        }
        .lable1 {
            color: white;
            font-size: 30px;
            margin-right: 20px;
        }
        .lable2 {
            margin-right: 36px;
        }
        .lable3 {
            
        }
        .home-option_words {
            position: absolute;
            left: 140px;
            top: 36px;
            color: #fff;
            font-size: 32px;
            line-height: 1.2;
        }
        .home-option-word-title1, .home-option-word-title2 {
            display: block;
        }
        .home-option-word-title2 {
            margin-top: 8px;
            font-size: 28px;
            opacity: .75;
        }
        .home-option_icon{
            position: absolute;
            height: 100%;
            width: 96px;
            left: 28px;
            top: 0;
        }
        .home-option {
            position: absolute;
            width: 446px;
            height: 155px;
        }
        .home-option-bg {
            position: absolute;
            left: 0; right: 0; top: 0; bottom: 0;
            background: rgba(255,255,255, .15);
            box-shadow: 0px 0px 20px 1px rgb(33, 151, 255, .3);
            border-radius: 20px;
            border: 2px solid rgb(83, 214, 255, .5);
            backdrop-filter: blur(8px);
        }
        .home-option1 {
            top: 284px;
            left: 738px;
        }
         .home-option_icon1 {
            background: url(image/newimg/协作.png) no-repeat center center;
        }

        .home-option2 {
            top: 543px;
            left: 313px;
        }
        .home-option_icon2 {
            background: url(image/newimg/生产制造场景图标.png) no-repeat center center;
        }
        .home-option3 {
            top: 830px;
            left: 450px;
        }
         .home-option_icon3 {
            background: url(image/newimg/视觉质检图标.png) no-repeat center center;
        }
        .home-option4 {
            top: 830px;
            left: 1032px;
        }
         .home-option_icon4 {
            background: url(image/newimg/巡检图标.png) no-repeat center center;

        }
        .home-option5 {
            top: 543px;
            left: 1162px;
        }
         .home-option_icon5 {
            background: url(image/newimg/故障图标.png) no-repeat center center;
        }
        .arrow {
            background: url(image/newimg/箭头1.png) no-repeat center center;
            background-size: 135px 127px;
            height: 135px; width: 127px;
            position: absolute;
            opacity: .6;
        }
        .arrow1 {
            top: 394px;
            left: 586px;
        }
        .arrow2 {
            transform: rotate(278deg);
            height: 110px; width: 102px;
            top: 710px; left: 574px;
        }
        .arrow3 {
            transform: rotate(220deg);
            height: 98px; width: 90px;
            top: 856px; left: 926px;
        }
        .arrow4 {
            transform: rotate(166deg);
            height: 110px; width: 102px;
            top: 702px; left: 1240px;
        }
        .full{
            margin-top: 1.5%;
            margin-left: 97%;
            height: 30px;
            width: 35px;
            opacity:0.9;
            position: absolute;
            font-size: 12px;
            background: url(image/全屏.png) no-repeat center center;
            background-size: 100% 100%;
            border: 0;
            color: white;
        }
        .bdy{
            overflow:hidden;
        }
        .video{
            position: absolute;
            width: 1920px;
            height: 1080px;
        }
        .home {
            position: absolute;
            top: 154px;
            left: 144px;
            height: 60px;
            line-height: 64px;
            padding-left: 56px;
            font-size: 32px;
            background: url(image/newimg/首页图标.png) no-repeat left center;
            border: none;
            color: white;
        }
        .box {
            background: rgba(255,255,255, .15);
            box-shadow: 0px 0px 20px 1px rgb(33, 151, 255, .3);
            border-radius: 20px;
            border: 2px solid rgb(83, 214, 255, .5);
            backdrop-filter: blur(8px);
        }
    </style>
</head>
    <body class="bdy">
        <!--<canvas id="mycavas" class="bj" width="1920" height="1080" style="border: solid 0px #000000"></canvas>
        <script type="text/javascript" color="255,0,0" pointcolor="255,0,0" opacity="1" zindex="-2" count="500" src="/dist/canvas-nest.js"></script>-->
        <video id="v1" autoplay muted loop class="video" poster='./image/newimg/第一帧.jpg'>
            <source  src="./image/newimg/spsp.mp4">
        </video>
        <div class="background"></div>
        <div class="occlusion"></div>

        <div class="title"></div>
        <!-- <div class="border"></div>
        <div class="border2"></div>
        <div class="border3"></div>
        <div class="play"></div> -->
        <div class="control-bar">
            <label class="lable1">二号投影大屏：</label>
            <div class="control-bar-button lable2">
                背景介绍
                <div class="play"></div>
            </div>
            <div class="control-bar-button lable3">沙盘位置示意图</div>
        </div>

        <div class="home-option home-option1">
            <div class="home-option-bg"></div>
            <div class="home-option_words home-option_words1">
                <span class="home-option-word-title1">协同研发设计场景</span>
                <span class="home-option-word-title2">(IP模态)</span>
            </div>
            <div class="home-option_icon home-option_icon1"></div>
        </div>
        <div class="home-option home-option2">
            <div class="home-option-bg"></div>
            <div class="home-option_words home-option_words2">
                <span class="home-option-word-title1">生产制造场景</span>
                <span class="home-option-word-title2">(工控模态)</span>
            </div>
            <div class="home-option_icon home-option_icon2"></div>
        </div>
        <div class="home-option home-option3">
            <div class="home-option-bg"></div>
            <div class="home-option_words home-option_words3">
                <span class="home-option-word-title1">机器视觉质检场景</span>
                <span class="home-option-word-title2">(内容标识模态)</span>
            </div>
            <div class="home-option_icon home-option_icon3"></div>
        </div>
 
        <div class="home-option home-option4">
            <div class="home-option-bg"></div>
            <div class="home-option_words home-option_words4">
                <span class="home-option-word-title1">无人智能巡检场景</span>
                <span class="home-option-word-title2">(身份标识模态)</span>
            </div>
            <div class="home-option_icon home-option_icon4"></div>    
        </div>
       
        <div class="home-option home-option5">
            <div class="home-option-bg"></div>
            <div class="home-option_words home-option_words5">
                <span class="home-option-word-title1">设备故障诊断场景</span>
                <span class="home-option-word-title2">(地理标识模态)</span>
            </div>
            <div class="home-option_icon home-option_icon5"></div>
        </div>

        <div class="arrow arrow1"></div>
        <div class="arrow arrow2"></div>
        <div class="arrow arrow3"></div>
        <div class="arrow arrow4"></div>
        <button class="full"></button>
    


    <script>
        $(document).ready(function () {
            this.fullscreen = !this.fullscreen;
            $(".home-option1").click(function (e) {
              //  $(location).attr("href", "协同研发设计场景.aspx")
                $(".bdy").innerHTML=''
                $(".bdy").load("协同研发设计场景.aspx")
            });
            $(".home-option2").click(function (e) {
//                 $(location).attr("href", "生产制造场景.aspx")

                 $(".bdy").innerHTML=''
                                $(".bdy").load("生产制造场景.aspx")
            });
            $(".home-option3").click(function (e) {
//                 $(location).attr("href", "机器视觉质检场景.aspx")

                 $(".bdy").innerHTML=''
                                $(".bdy").load("机器视觉质检场景.aspx")
            });
            $(".home-option4").click(function (e) {
//                 $(location).attr("href", "无人智能巡检场景.aspx")

                 $(".bdy").innerHTML=''
                                $(".bdy").load("无人智能巡检场景.aspx")
            });
            $(".home-option5").click(function (e) {
//                 $(location).attr("href", "地理标识模态.aspx")

                 $(".bdy").innerHTML=''
                                $(".bdy").load("地理标识模态.aspx")
            });
            var bofang = true;
            $(".lable2").click(function (e) {
                $(".play").removeClass("play").addClass("stop");
                if (bofang) {
                    bofang = false;
                    $.ajax({
                        type: "post",
                        contentType: "application/json; charset=utf-8",//传值的方式
                        dataType: "json",
                        url: "Main.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                        data: "{window1:6,window2:0,operation:1}",//username 为想问后台传的参数（这里的参数可有可无）
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
                        url: "Main.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                        data: "{window1:6,window2:0,operation:2}",//username 为想问后台传的参数（这里的参数可有可无）
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
                url: "Main.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                data: "{window1:0,window2:0,operation:0}",//username 为想问后台传的参数（这里的参数可有可无）
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
                    url: "Main.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                    data: "{window1:0,window2:0,operation:0}",//username 为想问后台传的参数（这里的参数可有可无）
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
