
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
        .image {
            height: 800px;
            width: 1863px;
            background-repeat: no-repeat;
            background-position: center;
            position: absolute;
            background-size: 100% 100%;
            margin-top: 252px;
            margin-left: 29px;
        }
        .occlusion {
            background-color: black;
            opacity: 0.4;
            height: 1080px;
            width: 1920px;
            position: absolute;
        }
        .title {
            background: url(image/newimg/协同研发设计场景.png) no-repeat center center;
            background-size: 100% 100%;
            height: 77px;
            width: 661px;
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
        .options1 {
            background: url(image/newimg/矩形2.png) no-repeat center center;
            background-size: 100% 100%;
            position: absolute;
            margin-top: 371px;
            margin-left: 349px;
                width: 579px;
                height: 191px;
            opacity: 0.2;
        }
        .image1 {
           background: url(image/newimg/gitlab.png) no-repeat center center;
           background-size: 100% 100%;
           position: absolute;
           margin-top: 402px;
           margin-left: 400px;
           width: 142px;
           height: 135px;

        }
        .options2 {
            background: url(image/newimg/矩形2.png) no-repeat center center;
opacity: 0.2;
            background-size: 100% 100%;
            position: absolute;
            margin-top: 371px;
            margin-left: 991px;
                width: 579px;
                height: 191px;
        }
        .image2 {
            background: url(image/newimg/知识.png) no-repeat center center;
            background-size: 100% 100%;
            position: absolute;
margin-top: 638px;
            margin-left: 400px;
            width: 142px;
            height: 135px;
        }
        .options3 {
            background: url(image/newimg/矩形2.png) no-repeat center center;
opacity: 0.2;
            background-size: 100% 100%;
            position: absolute;
            margin-top: 610px;
            margin-left: 349px;
                width: 579px;
                height: 191px;
        }
        .image3 {
            background: url(image/newimg/OA.png) no-repeat center center;
            background-size: 100% 100%;
            position: absolute;
            margin-top: 437px;
            margin-left: 1056px;
            width: 104px;
            height: 60px;
        }
        .options4 {
            background: url(image/newimg/矩形2.png) no-repeat center center;
opacity: 0.2;
            background-size: 100% 100%;
            position: absolute;
             margin-top: 610px;
                        margin-left: 991px;
                width: 579px;
                height: 191px;
        }
        .image4 {
            background: url(image/newimg/知识.png) no-repeat center center;
            background-size: 100% 100%;
            position: absolute;

            margin-left: 1038px;
       margin-top: 638px;
                    width: 142px;
                    height: 135px;
        }
        .tips1 {
                color: white;
                font-size: 45px;
                position: absolute;
                margin-top: 408px;
                margin-left: 574PX;
                border-radius: 40px;
        }
        .tips2 {
              color: white;
                  font-size: 31px;
                  position: absolute;
                  margin-top: 643px;
                  margin-left: 572PX;
                  border-radius: 40px;
        }
        .tips3 {
           color: white;
           font-size: 31px;
           position: absolute;
         margin-top: 643px;
                           margin-left: 1209PX;
           border-radius: 40px;
        }
        .tips4 {
                  color: white;
                  font-size: 45px;
                  position: absolute;
                  margin-top: 408px;
                  margin-left: 1215PX;
                  border-radius: 40px;
        }
        .tips5 {
               color: white;
               font-size: 34px;
               position: absolute;
               margin-top: 478PX;
               margin-left: 572PX;
               border-radius: 40px;
        }
        .tips6 {
                   color: white;
                   font-size: 34px;
                   position: absolute;
                   margin-top: 478PX;
                   margin-left: 1215PX;
                   border-radius: 40px;
        }
        .tips7 {
               color: white;
               font-size: 34px;
               position: absolute;
               margin-top: 717PX;
               margin-left: 572PX;
               border-radius: 40px;
        }
        .tips8 {
              color: white;
              font-size: 34px;
              position: absolute;
       margin-top: 715px;
                  margin-left: 1215PX;
              border-radius: 40px;
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
        .return2 {
            /*margin-top: 2%;*/
            /*margin-left: 2%;*/
            /*height: 90px;*/
            /*width: 90px;*/
            /*position: absolute;*/
            /*font-size: 12px;*/
            /*!*background: url(image/bg-back.png) no-repeat center center;*!*/
            /*background-size: 100% 100%;*/
            /*border: 0;*/
            /*line-height: 15px;*/
            /*padding-left: 38px;*/
            /*padding-top: 10px;*/
            /*font-weight: 600;*/
            /*color: white;*/
            /*opacity: 0.7;*/
        }
        .bdy{
            overflow:hidden;
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
        <label v-bind:class="{'lable1':isActive}">二号投影大屏:</label>
        <label v-bind:class="{'lable2':isActive}">场景介绍</label>
        <label v-bind:class="{'lable4':isActive}">沙盘演示</label>
        <label v-bind:class="{'lable3':isActive}">沙盘位置示意图</label>

        <div v-bind:class="{ 'options1': isActive }"></div>
        <div v-bind:class="{ 'image1': isActive }"></div>

        <div v-bind:class="{ 'options2': isActive }"></div>
        <div v-bind:class="{ 'image2': isActive }"></div>

        <div v-bind:class="{ 'options4': isActive }"></div>
        <div v-bind:class="{ 'image4': isActive }"></div>

        <div v-bind:class="{ 'options3': isActive }"></div>
        <div v-bind:class="{ 'image3': isActive }"></div>

        <label v-bind:class="{'tips1':isActive}">GITLAB</label>
        <label v-bind:class="{'tips2':isActive}">知识与协同平台</label>
        <label v-bind:class="{'tips4':isActive}">Gitlab</label>
        <label v-bind:class="{'tips3':isActive}">知识与协同平台</label>
        <label v-bind:class="{'tips5':isActive}">IPV4公网</label>
        <label v-bind:class="{'tips6':isActive}">IPV4</label>
        <label v-bind:class="{'tips7':isActive}">IPV6</label>
        <label v-bind:class="{'tips8':isActive}">IPV4公网</label>
        <div v-bind:class="{ 'image': isActive }"></div>
        <button v-bind:class="{'return':isActive}"></button>
        <button v-bind:class="{'home':isActive}"></button>
        <button v-bind:class="{'return2':isActive}"></button>
        <button v-bind:class="{'full':isActive}"></button>


    </div>
    <script>
        new Vue({
            el: '#app',
            data: {
                isActive: true
            }
        })
        $(document).ready(function () {
            $(".image").hide(); $(".return2").hide();
            $(".image").click(function (e) {
                $(".image").hide();
                $(".return").show();
                $(".return2").hide();
                $.ajax({
                    type: "post",
                    contentType: "application/json; charset=utf-8",//传值的方式
                    dataType: "json",
                    url: "协同研发设计场景.aspx/ShowImage",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                    data: "{index:0}",//username 为想问后台传的参数（这里的参数可有可无）
                    success: function (result) {
                        //alert(result.d);//result.d为后台返回的参数
                    }
                })
            });
            $(".options1,.image1,.tips1,.tips5").click(function (e) {
                $(".image").show(); $(".return2").show();
                var src = 'image/OA.jpg';
                $(".image").css('background-image', 'url(' + src + ')');
                $.ajax({
                    type: "post",
                    contentType: "application/json; charset=utf-8",//传值的方式
                    dataType: "json",
                    url: "协同研发设计场景.aspx/ShowImage",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                    data: "{index:1}",//username 为想问后台传的参数（这里的参数可有可无）
                    success: function (result) {
                        //alert(result.d);//result.d为后台返回的参数
                    }
                })
            });
            $(".options2,.image2,.tips2,.tips6").click(function (e) {
                $(".image").show();  $(".return2").show();
                var src = 'image/confluence.png';
                $(".image").css('background-image', 'url(' + src + ')');
                $.ajax({
                    type: "post",
                    contentType: "application/json; charset=utf-8",//传值的方式
                    dataType: "json",
                    url: "协同研发设计场景.aspx/ShowImage",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                    data: "{index:2}",//username 为想问后台传的参数（这里的参数可有可无）
                    success: function (result) {
                        //alert(result.d);//result.d为后台返回的参数
                    }
                })
            });
            $(".options3,.image3,.tips3,.tips7").click(function (e) {
                $(".image").show(); $(".return2").show();
                var src = 'image/confluence.png';
                $(".image").css('background-image', 'url(' + src + ')');
                $.ajax({
                    type: "post",
                    contentType: "application/json; charset=utf-8",//传值的方式
                    dataType: "json",
                    url: "协同研发设计场景.aspx/ShowImage",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                    data: "{index:3}",//username 为想问后台传的参数（这里的参数可有可无）
                    success: function (result) {
                        //alert(result.d);//result.d为后台返回的参数
                    }
                })
            });
            $(".options4,.image4,.tips4,.tips8").click(function (e) {
                $(".image").show();  $(".return2").show();
                var src = 'image/gitlab.png';
                $(".image").css('background-image', 'url(' + src + ')');
                $.ajax({
                    type: "post",
                    contentType: "application/json; charset=utf-8",//传值的方式
                    dataType: "json",
                    url: "协同研发设计场景.aspx/ShowImage",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                    data: "{index:4}",//username 为想问后台传的参数（这里的参数可有可无）
                    success: function (result) {
                        //alert(result.d);//result.d为后台返回的参数
                    }
                })
            });
            $(".return").click(function (e) {
                $(location).attr("href", "Main.aspx")
            });
            $(".return2").click(function (e) {
                $.ajax({
                    type: "post",
                    contentType: "application/json; charset=utf-8",//传值的方式
                    dataType: "json",
                    url: "协同研发设计场景.aspx/ShowImage",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                    data: "{index:0}",//username 为想问后台传的参数（这里的参数可有可无）
                    success: function (result) {
                        //alert(result.d);//result.d为后台返回的参数
                    }
                })
                $(".image").hide();
                $(".return").show();
                $(".return2").hide();
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
                        url: "协同研发设计场景.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                        data: "{window1:7,window2:1,operation:1}",//username 为想问后台传的参数（这里的参数可有可无）
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
                        url: "协同研发设计场景.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                        data: "{window1:7,window2:1,operation:2}",//username 为想问后台传的参数（这里的参数可有可无）
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
                        url: "协同研发设计场景.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                        data: "{window1:12,window2:1,operation:1}",//username 为想问后台传的参数（这里的参数可有可无）
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
                        url: "协同研发设计场景.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                        data: "{window1:12,window2:1,operation:2}",//username 为想问后台传的参数（这里的参数可有可无）
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
                url: "协同研发设计场景.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                data: "{window1:1,window2:1,operation:0}",//username 为想问后台传的参数（这里的参数可有可无）
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
                    url: "协同研发设计场景.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                    data: "{window1:1,window2:1,operation:0}",//username 为想问后台传的参数（这里的参数可有可无）
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