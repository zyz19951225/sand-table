<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="之江.Main" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8;width=device-width, initial-scale=1.0, user-scalable=no" />
    <title></title>
    <script type="text/javascript" src="/jquery-1.8.0.min.js"></script>
    <script src="/vue.min.js"></script>

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
            background-size: 100% 100%;
            height: 77px;
            width: 712px;
            position: absolute;
            top: 2%;
            left: 0;
            right: 0;
            margin: auto;
        }
        .border {
            /*background-color: #808080;*/
            height: 66px;
            width: 1300px;
            position: absolute;
            opacity: 0.9;
            margin-top: 8%;
            margin-left: 16%;
            border-radius: 40px;
        }
        .border2 {
            /*background-color: white;*/
            height: 45px;
            width: 160px;
            position: absolute;
            opacity: 0.9;
                margin-top: 165px;
                margin-left: 913px;
            border-radius: 10px;
            border: 1px solid white;
        }
        .border3 {
            /*background-color: white;*/
            height: 45px;
            width: 140px;
            position: absolute;
            opacity: 0.9;
              margin-top: 165px;
              margin-left: 1112px;
            border-radius: 10px;
                        border: 1px solid white;

        }
        .play {
            background: url(image/newimg/xxxxx.png) no-repeat center center;
            background-size: 100% 100%;
            height: 20px;
            width: 45px;
            position: absolute;
            margin-top: 177px;
            margin-left: 1012px;
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
        .lable1 {
            color: white;
            font-size: 24px;
            position: absolute;
            margin-top: 8.9%;
            margin-left: 37%;
            border-radius: 40px;
        }
        .lable2 {
            color: white;
            font-size: 18px;
            position: absolute;
            margin-top: 9.1%;
            margin-left: 48.5%;
            border-radius: 40px;
            font-weight: 600;
        }
        .lable3 {
            color: white;
            font-size: 18px;
            position: absolute;
            margin-top: 9.1%;
            margin-left: 58.4%;
            border-radius: 40px;
            font-weight: 600;
        }
        .option_words {
            height: 64px;
            width: 200px;
            position: absolute;
        }
        .option_icon{
            height: 96px;
            width: 96px;
            position: absolute;

        }
        .option {
            background: url(image/newimg/矩形2.png) no-repeat center center;
            background-size: 100% 100%;
            height: 155px;
            width: 446px;
            position: absolute;
            opacity: 0.2;
        }
        .option1 {
            margin-top: 256px;
            margin-left: 738px;
        }
        .option_words1 {
            background: url(image/newimg/协同研发设计场景_（IP模态）.png) no-repeat center center;
            background-size: 100% 100%;
            margin-top: 294px;
            margin-left: 889px;
        }

         .option_icon1 {
            background: url(image/newimg/协作.png) no-repeat center center;
            background-size: 100% 100%;
            margin-top: 286px;
            margin-left: 772px;
        }

        .option2 {
            margin-top: 519px;
            margin-left: 313px;
        }
        .option_words2 {
            background: url(image/newimg/生产制造场景_（工控模态）.png) no-repeat center center;
            background-size: 100% 100%;
            margin-top: 557px;
            margin-left: 474px;
        }
        .option_icon2 {
                    background: url(image/newimg/生产制造场景图标.png) no-repeat center center;
                    background-size: 100% 100%;
                    margin-top: 552px;
                    margin-left: 345px;
                }
        .option3 {
            margin-top: 810px;
                       margin-left: 450px;
        }
        .option_words3 {
            background: url(image/机器视觉质检场景.png) no-repeat center center;
            background-size: 100% 100%;
             margin-top: 848px;
                                        margin-left: 611px;
        }
         .option_icon3 {
                            background: url(image/newimg/生产制造场景图标.png) no-repeat center center;
                            background-size: 100% 100%;
                            margin-top: 840px;
                            margin-left: 492px;
                        }
        .option4 {
            margin-top: 810px;
            margin-left: 1025px;
        }
        .option_words4 {
            background: url(image/无人智能巡检场景.png) no-repeat center center;
            background-size: 100% 100%;
            margin-top: 848px;
            margin-left: 1186px;
        }
         .option_icon4 {
                            background: url(image/newimg/生产制造场景图标.png) no-repeat center center;
                            background-size: 100% 100%;
                            margin-top: 848px;
                            margin-left: 1064px;
                        }
        .option5 {
            margin-top: 519px;
                       margin-left: 1162px;
        }
        .option_words5 {
            background: url(image/设备故障诊断场景.png) no-repeat center center;
            background-size: 100% 100%;
            margin-top: 557px;
            margin-left: 1323px;
        }
         .option_icon5 {
                            background: url(image/newimg/生产制造场景图标.png) no-repeat center center;
                            background-size: 100% 100%;
                            margin-top: 552px;
                            margin-left: 1211px;
                        }
        .arrow {
            background: url(image/newimg/箭头1.png) no-repeat center center;
            background-size: 100% 100%;
            height: 135px;
            width: 127px;
            position: absolute;
        }
        .arrow1 {
            transform: rotate(12deg);
             margin-top: 392px;
                            margin-left: 602px;
        }
        .arrow2 {
                transform: rotate(263deg);
                 margin-top: 674px;
                            margin-left: 570px;
        }
        .arrow3 {
            transform: rotate(230deg);
            margin-top: 864px;
            margin-left: 895px;
        }
        .arrow4 {
            transform: rotate(190deg);
            margin-top: 674px;
            margin-left: 1233px;
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
    </style>
</head>
<body class="bdy">
    <!--<canvas id="mycavas" class="bj" width="1920" height="1080" style="border: solid 0px #000000"></canvas>
    <script type="text/javascript" color="255,0,0" pointcolor="255,0,0" opacity="1" zindex="-2" count="500" src="/dist/canvas-nest.js"></script>-->
    <div id="app">
     <video id="v1" autoplay muted loop v-bind:class="{ 'video': isActive }" poster='./image/newimg/第一帧.jpg'>
                <source  src="./image/newimg/spsp.mp4">
            </video>
        <div v-bind:class="{ 'background': isActive }"></div>
        <div v-bind:class="{ 'occlusion': isActive }"></div>

        <div v-bind:class="{ 'title': isActive }"></div>
        <div v-bind:class="{ 'title': isActive }"></div>
        <div v-bind:class="{ 'border': isActive }"></div>
        <div v-bind:class="{ 'border2': isActive }"></div>
        <div v-bind:class="{ 'border3': isActive }"></div>
        <div v-bind:class="{ 'play': isActive }"></div>

        <label v-bind:class="{'lable1':isActive}">二号投影大屏:</label>
        <label v-bind:class="{'lable2':isActive}">背景介绍</label>
        <label v-bind:class="{'lable3':isActive}">沙盘位置示意图</label>

        <div v-bind:class="{ 'option': isActive,'option1':isActive }"></div>
        <div v-bind:class="{ 'option_words': isActive,'option_words1':isActive }"></div>
        <div v-bind:class="{ 'option_icon': isActive,'option_icon1':isActive }"></div>

        <div v-bind:class="{ 'option': isActive,'option2':isActive }"></div>
        <div v-bind:class="{ 'option_words': isActive,'option_words2':isActive }"></div>
                <div v-bind:class="{ 'option_icon': isActive,'option_icon2':isActive }"></div>


        <div v-bind:class="{ 'option': isActive,'option3':isActive }"></div>
        <div v-bind:class="{ 'option_words': isActive,'option_words3':isActive }"></div>
                <div v-bind:class="{ 'option_icon': isActive,'option_icon3':isActive }"></div>


        <div v-bind:class="{ 'option': isActive,'option4':isActive }"></div>
        <div v-bind:class="{ 'option_words': isActive,'option_words4':isActive }"></div>
                <div v-bind:class="{ 'option_icon': isActive,'option_icon4':isActive }"></div>


        <div v-bind:class="{ 'option': isActive,'option5':isActive }"></div>
        <div v-bind:class="{ 'option_words': isActive,'option_words5':isActive }"></div>
                <div v-bind:class="{ 'option_icon': isActive,'option_icon5':isActive }"></div>


        <div v-bind:class="{ 'arrow': isActive,'arrow1':isActive }"></div>
        <div v-bind:class="{ 'arrow': isActive,'arrow2':isActive }"></div>
        <div v-bind:class="{ 'arrow': isActive,'arrow3':isActive }"></div>
        <div v-bind:class="{ 'arrow': isActive,'arrow4':isActive }"></div>
        <button v-bind:class="{'full':isActive}"></button>
        <div class="loaddiv" style="width:500px;height:520px"></div>
    </div>


    <script>
        new Vue({
            el: '#app',
            data: {
                isActive: true
            }
        })
        $(document).ready(function () {
            this.fullscreen = !this.fullscreen;
            $(".option1,.option_words1").click(function (e) {
              //  $(location).attr("href", "协同研发设计场景.aspx")
                $(".bdy").innerHTML=''
                $(".bdy").load("协同研发设计场景.aspx")
            });
            $(".option2,.option_words2").click(function (e) {
//                 $(location).attr("href", "生产制造场景.aspx")

                 $(".bdy").innerHTML=''
                                $(".bdy").load("生产制造场景.aspx")
            });
            $(".option3,.option_words3").click(function (e) {
//                 $(location).attr("href", "机器视觉质检场景.aspx")

                 $(".bdy").innerHTML=''
                                $(".bdy").load("机器视觉质检场景.aspx")
            });
            $(".option4,.option_words4").click(function (e) {
//                 $(location).attr("href", "无人智能巡检场景.aspx")

                 $(".bdy").innerHTML=''
                                $(".bdy").load("无人智能巡检场景.aspx")
            });
            $(".option5,.option_words5").click(function (e) {
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
                            $(".border2").click(function (e) {
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
                            $(".play").click(function (e) {
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
                            $(".border3").click(function (e) {
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
