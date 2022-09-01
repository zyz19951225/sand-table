<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="之江.Main" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
            background: url(image/newimg/背景.png);
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

                        .image1 {
              background: url(image/newimg/矩形.png) no-repeat center center;
                  background-size: 100% 100%;
                  position: absolute;
                  margin-top: 216px;
                  margin-left: 375px;
                  width: 1171px;
                  height: 810px;
                  opacity: 0.2;
                        }

        .title {
                       background: url(image/newimg/无人智能巡检场景.png) no-repeat center center;
                       background-size: 100% 100%;
                       height: 77px;
                       width: 721px;
                       position: absolute;
                       top: 2%;
                       left: 0;
                       right: 0;
                       margin: auto;

        }

      .border {
          background-color: #ffffff;
          height: 2px;
          width: 1920px;
          position: absolute;
          /* opacity: 0.9; */
          margin-top: 12%;
          /* margin-left: 16%; */
          border-radius: 40px;
          }
              .border2 {
                  /*background-color: white;*/
                  height: 45px;
                  width: 160px;
                  position: absolute;
                  opacity: 0.9;
                      margin-top: 164px;
                      margin-left: 819px;
                  border-radius: 10px;
                                          border: 1px solid white;

              }
              .border4 {
                  /*background-color: white;*/
                  height: 45px;
                  width: 140px;
                  position: absolute;
                  opacity: 0.9;
                     margin-top: 163px;
                     margin-left: 1014px;
                  border-radius: 10px;
                                          border: 1px solid white;

              }
              .border3 {
                  /*background-color: white;*/
                  height: 45px;
                  width: 170px;
                  position: absolute;
                  opacity: 0.9;
                  margin-top: 8.6%;
                  margin-left: 61%;
                  border-radius: 10px;
                                          border: 1px solid white;

              }
              .play {
                  background: url(image/newimg/xxxxx.png) no-repeat center center;
                  background-size: 100% 100%;
                  height: 20px;
                              width: 45px;
                  position: absolute;
                  margin-top: 9.3%;
                  margin-left: 48%;
              }
              .play2 {
                background: url(image/newimg/xxxxx.png) no-repeat center center;
                            background-size: 100% 100%;
                            height: 20px;
                                        width: 45px;
                  position: absolute;
                  margin-top: 9.3%;
                  margin-left: 57.5%;
              }


        .stop {
            background: url(image/暂停.png) no-repeat center center;
            background-size: 100% 100%;
            height: 20px;
            width: 20px;
            position: absolute;
            margin-top: 9.3%;
            margin-left: 48%;
        }

        .stop2 {
            background: url(image/暂停.png) no-repeat center center;
            background-size: 100% 100%;
            height: 20px;
            width: 20px;
            position: absolute;
            margin-top: 9.3%;
            margin-left: 57.5%;
        }

       .lable1 {
                   color: white;
                   font-size: 24px;
                   position: absolute;
                   margin-top: 8.9%;
                   margin-left: 32%;
                   border-radius: 40px;
               }
               .lable2 {
                   /*color: black;*/
                   color: white;
                   font-size: 18px;
                   position: absolute;
                   margin-top: 9.1%;
                   margin-left: 43.5%;
                   border-radius: 40px;
                   font-weight: 600;
               }
               .lable4 {
                    /*color: black;*/
                               color: white;
                   font-size: 18px;
                   position: absolute;
                   margin-top: 9.1%;
                   margin-left: 53%;
                   border-radius: 40px;
                   font-weight: 600;
               }
               .lable3 {
                    /*color: black;*/
                               color: white;
                   font-size: 18px;
                   position: absolute;
                   margin-top: 9.1%;
                   margin-left: 62.2%;
                   border-radius: 40px;
                   font-weight: 600;
               }


        .inspection {
             background: url(image/newimg/智能巡检.png) no-repeat center center;
             position: absolute;
             margin-top: 525px;
             height: 98px;
             width: 454px;
             margin-left: 733px;
             font-weight: 600;
             font-family: 宋体;
             text-align: center;
             border-radius: 10px;
             border: 0;
        }

        .switch {
                color: black;
                font-size: 18px;
                position: absolute;
                margin-top: 774px;
                height: 50px;
                width: 250px;
                margin-left: 842px;
                font-weight: 600;
                font-family: 宋体;
                text-align: center;
                border-radius: 10px;
                border: 0;
        }

        .load {
            background: url(image/加载2.png) no-repeat center center;
            background-size: 100% 100%;
            height: 20px;
            width: 20px;
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
       margin-top: 392px;
           margin-left: 849px;
        }
           .load12 {
              margin-top: 447px;
                       margin-left: 849px;
        }

        .load2 {
            margin-top: 18.4%;
            margin-left: 41%;
        }

        .loadLabel1 {
      color: white;
      font-size: 30px;
      position: absolute;
      margin-top: 378px;
      margin-left: 831px;
      font-weight: 600;
      width: 250px;
      text-align: center;
        }
            .loadLabel12 {
       color: white;
       font-size: 30px;
       position: absolute;
       margin-top: 434px;
       margin-left: 875px;
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
             margin-top: 650px;
             margin-left: 732PX;
             /* font-weight: 600; */
             /* width: 300px; */
             text-align: center;
        }

        .loadLabel4 {
                color: #ada5a5;
                font-size: 18px;
                position: absolute;
                margin-top: 837px;
                margin-left: 813px;
                font-weight: 600;
                width: 300px;
                text-align: center;
        }

        .return {
                   margin-top: 157px;
                   margin-left: 90px;
                   height: 38px;
                   width: 36px;
                   position: absolute;
                   font-size: 12px;
                   background: url(image/newimg/首页图标.png) no-repeat center center;
                   background-size: 100% 100%;
                   border: 0;
                   line-height: 15px;
                   padding-left: 38px;
                   padding-top: 10px;
                   font-weight: 600;
                   color: white;
               }

                      .home {
                   margin-top: 157px;
                   margin-left: 144px;
                   height: 40px;
                   width: 61px;
                   position: absolute;
                   font-size: 12px;
                   background: url(image/newimg/首页.png) no-repeat center center;
                   background-size: 100% 100%;
                   border: 0;
                   line-height: 15px;
                   padding-left: 38px;
                   padding-top: 10px;
                   font-weight: 600;
                   color: white;
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



        .bdy {
            overflow: hidden;
        }
    </style>
</head>
<body class="bdy">
    <div id="app">
        <div v-bind:class="{ 'background': isActive }"></div>
        <div v-bind:class="{ 'occlusion': isActive }"></div>

        <div v-bind:class="{ 'title': isActive }"></div>
        <div v-bind:class="{ 'title': isActive }"></div>

        <div v-bind:class="{ 'border': isActive }"></div>
        <div v-bind:class="{ 'border2': isActive }"></div>
        <div v-bind:class="{ 'border3': isActive }"></div>
        <div v-bind:class="{ 'border4': isActive }"></div>
        <div v-bind:class="{ 'play': isActive }"></div>
        <div v-bind:class="{ 'play2': isActive }"></div>
        <div v-bind:class="{ 'image1': isActive }"></div>
        <label v-bind:class="{'lable1':isActive}">二号投影大屏:</label>
        <label v-bind:class="{'lable2':isActive}">场景介绍</label>
        <label v-bind:class="{'lable4':isActive}">沙盘演示</label>
        <label v-bind:class="{'lable3':isActive}">沙盘位置示意图</label>
<!--        <button v-bind:class="{'inspection':isActive}">智能巡检</button>-->
        <div v-bind:class="{'inspection':isActive}"></div>
        <div v-bind:class="{ 'load': isActive,'load1':isActive }"></div>
        <div v-bind:class="{ 'load': isActive,'load2':isActive }"></div>
        <div v-bind:class="{ 'load': isActive,'load12':isActive }"></div>
        <label v-bind:class="{'loadLabel1':isActive}">巡检中......</label>
        <label v-bind:class="{'loadLabel12':isActive}">正在数据采集......</label>
        <label v-bind:class="{'loadLabel2':isActive}"></label>
        <label v-bind:class="{'loadLabel3':isActive}">当前巡检数据上传模式为身份模态</label>
        <button v-bind:class="{'switch':isActive}">切换至ip模式</button>
        <label v-bind:class="{'loadLabel4':isActive}">请在数据采集状态下切换</label>
        <button v-bind:class="{'return':isActive}"></button>
        <button v-bind:class="{'home':isActive}"></button>
        <button v-bind:class="{'full':isActive}"></button>

    </div>
    <script>
        new Vue({
            el: '#app',
            data: {
                counter: 0,
                isActive: true,
            }
        })
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
            $(".return").click(function (e) {
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
                $(location).attr("href", "Main.aspx")
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

            $(".return").click(function (e) {
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
                $(location).attr("href", "Main.aspx")
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