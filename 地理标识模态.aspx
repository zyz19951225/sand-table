<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="地理标识模态.aspx.cs" Inherits="之江.地理标识模态" %>

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
            opacity: 0.6;
            height: 1080px;
            width: 1920px;
            position: absolute;
        }

        .title {
            background: url(image/newimg/设备故障诊断场景.png) no-repeat center center;
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


        .myCanvas {
  position: absolute;
      background-color: white;
      margin-top: 271px;
      margin-left: 581px;
      background: url(image/newimg/地图.png) no-repeat center center;
      background-size: 79% 78%;
        }

        .menu {
            width: 40px;
            width: 1295px;
            height: 60px;
            position: absolute;
            background-color: #e5e4e4;
            margin-top: 16%;
            margin-left: 10%;
        }

        .square {
            background: url(image/newimg/矩形区域.png) no-repeat center center;
                background-size: 100% 100%;
                width: 40px;
                height: 40px;
                position: absolute;
                margin-top: 421px;
                margin-left: 189px;
        }

        .circular {
            background: url(image/newimg/三角形.png) no-repeat center center;
               background-size: 100% 100%;
               width: 40px;
               height: 40px;
               position: absolute;
               margin-top: 421px;
               margin-left: 260px;
        }

        .triangle {
            background: url(image/newimg/椭圆.png) no-repeat center center;
                background-size: 100% 100%;
                width: 40px;
                height: 40px;
                position: absolute;
                margin-top: 421px;
                margin-left: 320px;
        }

        .width {

           margin-top: 17%;
            height: 27.2px;
            color: black;
                font-size: 20px;
                position: absolute;
                margin-top: 492PX;
                width: 100px;
                margin-left: 217px;
                font-weight: 400;
                text-align: center;
        }
		.bianchang {
            color: black;
            font-size: 20px;
            position: absolute;
            margin-top: 17%;
            height: 27.2px;
            width: 100px;
            margin-left: 27%;
            font-weight: 400;
            text-align: center;
        }

        .banjing {
            color: black;
            font-size: 20px;
            position: absolute;
            margin-top: 17%;
            height: 27.2px;
            width: 100px;
            margin-left: 27%;
            font-weight: 400;
            text-align: center;
        }

        .height {
            color: black;
            font-size: 20px;
            position: absolute;
             margin-top: 492PX;
            height: 27.2px;
            width: 100px;
           margin-left: 422px;
            font-weight: 400;
            text-align: center;
        }

        .mm_label1 {
          color: #ffffff;
              font-size: 19px;
              font-family: 'Source Han Sans CN';
              position: absolute;
              margin-top: 492PX;
              margin-left: 330PX;
              border-radius: 40px;
              font-weight: 600;
        }

        .mm_label2 {
         color: #ffffff;
             font-size: 19px;
             font-family: 'Source Han Sans CN';
             position: absolute;
             margin-top: 492PX;
             margin-left: 530px;
             border-radius: 40px;
             font-weight: 600;
        }

        .width_label {
              color: #ffffff;
              font-size: 19px;
              font-family: 'Source Han Sans CN';
              position: absolute;
              margin-top: 490px;
              margin-left: 186px;
              border-radius: 40px;
              font-weight: 600;
        }

        .height_label {
            color: #ffffff;
            font-size: 19px;
            font-family: 'Source Han Sans CN';
            position: absolute;
           margin-top: 490px;
                         margin-left: 386px;
            border-radius: 40px;
            font-weight: 600;
        }

        .clearCanvas {
                      background: url(image/newimg/清空画布.png) no-repeat center center;
                      margin-top: 429px;
                      margin-left: 393px;
                      height: 30px;
                      width: 120px;
                      position: absolute;
        }

        .warning {
             background: url(image/newimg/发出警告.png) no-repeat center center;
             margin-top: 952px;
             margin-left: 863px;
             height: 51px;
             width: 195px;
             position: absolute;
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


        .full {
            margin-top: 1.5%;
            margin-left: 97%;
            height: 30px;
            width: 35px;
            opacity: 0.9;
            position: absolute;
            font-size: 12px;
            background: url(image/全屏.png) no-repeat center center;
            background-size: 100% 100%;
            border: 0;
            color: white;
        }

.image1 {
     background: url(image/newimg/矩形大.png) no-repeat center center;
     background-size: 100% 100%;
     position: absolute;
     margin-top: 292px;
     margin-left: 81px;
     width: 1759px;
     height: 583px;
     opacity: 0.2;
    }

        .bdy {
            overflow: hidden;
        }

        .menu2 {
            width: 40px;
            width: 1295px;
            height: 60px;
            position: absolute;
            background-color: #e5e4e4;
            margin-top: 12.85%;
            margin-left: 10%;
        }

        .option1 {
                margin-top: 339px;
                margin-left: 169px;
                height: 44px;
                width: 120px;
                position: absolute;
                background-color: #2097FF;
                border-radius: 26px;
        }

        .option2 {
       margin-top: 339px;
       margin-left: 307px;
       height: 44px;
       width: 120px;
       position: absolute;
       background-color: #2097FF;
       border-radius: 26px;
      }

        .radio1 {
                 color: white;
                 font-size: 24px;
                 position: absolute;
                 margin-top: 432px;
                 margin-left: 173px;
                 width: 20px;
                 height: 20px;
        }

        .coordinate1 {
            color: white;
            font-size: 24px;
            position: absolute;
            margin-top: 427px;
            margin-left: 205px;
            border-radius: 40px;
        }

        .coordinate14 {
         color: white;
             font-size: 24px;
             position: absolute;
             margin-top: 544px;
             margin-left: 177px;
             border-radius: 40px;
        }

        .coordinate2 {
              color: white;
              font-size: 20px;
              position: absolute;
              margin-top: 464px;
              margin-left: 200px;
              border-radius: 40px;
        }

        .coordinate15 {
           color: white;
                     font-size: 20px;
                     position: absolute;
                     margin-top: 584px;
                     margin-left: 177px;
                     border-radius: 40px;
        }

        .coordinate3 {
              color: white;
                     font-size: 20px;
                     position: absolute;
                     margin-top: 484px;
                     margin-left: 200px;
                     border-radius: 40px;
        }

        .coordinate16 {
             color: white;
                         font-size: 20px;
                         position: absolute;
                         margin-top: 614px;
                         margin-left: 177px;
                         border-radius: 40px;
        }

        .coordinate4 {
        color: white;
                           font-size: 20px;
                           position: absolute;
                           margin-top: 504px;
                           margin-left: 200px;
                           border-radius: 40px;
        }

        .coordinate17 {
             color: white;
                                 font-size: 20px;
                                 position: absolute;
                                 margin-top: 644px;
                                 margin-left: 177px;
                                 border-radius: 40px;
        }

        .coordinate18 {
               color: white;
                                   font-size: 20px;
                                   position: absolute;
                                   margin-top: 674px;
                                   margin-left: 177px;
                                   border-radius: 40px;
        }

        .coordinate19 {
               color: white;
                                   font-size: 20px;
                                   position: absolute;
                                   margin-top: 704px;
                                   margin-left: 177px;
                                   border-radius: 40px;
        }

        .coordinate20 {
                color: white;
                                    font-size: 20px;
                                    position: absolute;
                                    margin-top: 734px;
                                    margin-left: 177px;
                                    border-radius: 40px;
        }

        .radio2 {
               color: white;
               font-size: 24px;
               position: absolute;
               margin-top: 560px;
               margin-left: 174px;
               width: 20px;
               height: 20px;
        }

        .coordinate5 {
          color: white;
               font-size: 24px;
                                     position: absolute;
                                     margin-top: 554px;
                                     margin-left: 200px;
                                     border-radius: 40px;
        }

        .coordinate6 {
              color: white;
              font-size: 20px;
              position: absolute;
              margin-top: 593px;
              margin-left: 200px;
              border-radius: 40px;
        }

        .coordinate7 {
            color: white;
                font-size: 20px;
                position: absolute;
                margin-top: 620px;
                margin-left: 200px;
                border-radius: 40px;
        }

        .coordinate8 {
      color: white;
          font-size: 20px;
          position: absolute;
          margin-top: 644px;
          margin-left: 200px;
          border-radius: 40px;
        }

        .radio3 {
           color: white;
               font-size: 24px;
               position: absolute;
               margin-top: 689px;
               margin-left: 172px;
               width: 20px;
               height: 20px;
        }

        .coordinate9 {
    color: white;
    font-size: 24px;
    position: absolute;
    margin-top: 682px;
    margin-left: 200px;
    border-radius: 40px;
        }

        .coordinate10 {
         color: white;
         font-size: 20px;
         position: absolute;
         margin-top: 717px;
         margin-left: 200px;
         border-radius: 40px;
        }

        .coordinate11 {
         color: white;
         font-size: 20px;
         position: absolute;
         margin-top: 741px;
         margin-left: 200px;
         border-radius: 40px;
        }

        .coordinate12 {
              color: white;
              font-size: 20px;
              position: absolute;
              margin-top: 767px;
              margin-left: 200px;
              border-radius: 40px;
        }

        .coordinate13 {
              color: white;
              font-size: 20px;
              position: absolute;
              margin-top: 790px;
              margin-left: 200px;
              border-radius: 40px;
        }


    </style>
</head>
<body class="bdy">
    <div id="app">
        <div v-bind:class="{ 'background': isActive}"></div>
        <div v-bind:class="{ 'occlusion': isActive}"></div>
<div class="image1"></div>
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
        <button v-bind:class="{'full':isActive}"></button>
        <button v-bind:class="{'return':isActive}"></button>
         <button v-bind:class="{'home':isActive}"></button>

        <canvas v-bind:class="{'myCanvas':isActive}" width="1295" height="622" id="myCanvas"></canvas>
<!--        <canvas v-bind:class="{ 'menu': isActive }"></canvas>-->
        <div v-bind:class="{ 'square': isActive }"></div>
        <div v-bind:class="{ 'circular': isActive }"></div>
        <div v-bind:class="{ 'triangle': isActive }"></div>
        <input type="number" value="1000" v-bind:class="{'width':isActive}" maxlength="3" />
        <input type="number" value="1000" v-bind:class="{'height':isActive}" maxlength="3" />
        <label v-bind:class="{'width_label':isActive}">宽:</label>
        <label v-bind:class="{'height_label':isActive}">高:</label>
<!--        <button v-bind:class="{'warning':isActive}">-->
<!--            <div v-bind:class="{'d':isActive}">发出警告</div>-->
<!--        </button>-->
        <div v-bind:class="{ 'warning': isActive,'d':isActive }"></div>


<!--        <canvas v-bind:class="{ 'menu2': isActive }"></canvas>-->
        <button v-bind:class="{'option1':isActive}">选择目标区域</button>
        <button v-bind:class="{'option2':isActive}">自定义绘制</button>
        <div v-bind:class="{'information1':isActive}">
            <input type="radio" name="radios" v-bind:class="{'radio1':isActive}" />
            <label v-bind:class="{'coordinate1':isActive}">目标寻址区域1</label>
            <label v-bind:class="{'coordinate2':isActive}">中心经度：119.9711553</label>
            <label v-bind:class="{'coordinate3':isActive}">中心纬度：30.2773782</label>
            <label v-bind:class="{'coordinate4':isActive}">边长：700</label>


            <input type="radio" name="radios" v-bind:class="{'radio2':isActive}" />
            <label v-bind:class="{'coordinate5':isActive}">目标寻址区域2</label>
            <label v-bind:class="{'coordinate6':isActive}">中心经度：119.9711553</label>
            <label v-bind:class="{'coordinate7':isActive}">中心纬度：30.2773782</label>
            <label v-bind:class="{'coordinate8':isActive}">半径：1000</label>


            <input type="radio" name="radios" v-bind:class="{'radio3':isActive}" />
            <label v-bind:class="{'coordinate9':isActive}">目标寻址区域3</label>
            <label v-bind:class="{'coordinate10':isActive}">中心经度：119.9711553</label>
            <label v-bind:class="{'coordinate11':isActive}">中心纬度：30.2773782</label>
            <label v-bind:class="{'coordinate12':isActive}">水平半径：500</label>
            <label v-bind:class="{'coordinate13':isActive}">垂直半径：900</label>

        </div>
        <div v-bind:class="{'information2':isActive}">
            <div v-bind:class="{ 'd1': isActive }">
                <input type="number" value="1000" v-bind:class="{'width':isActive}" maxlength="3" />
                <input type="number" value="1000" v-bind:class="{'height':isActive}" maxlength="3" />
                <label v-bind:class="{'width_label':isActive}">宽:</label>
                <label v-bind:class="{'height_label':isActive}">高:</label>
            </div>
            <div v-bind:class="{ 'd2': isActive }">
                <input type="number" value="1000" v-bind:class="{'bianchang':isActive}" maxlength="3" />
                <label v-bind:class="{'width_label':isActive}">边长:</label>
            </div>
            <div v-bind:class="{ 'd3': isActive }">
                <input type="number" value="500" v-bind:class="{'banjing':isActive}" maxlength="3" />
                <label v-bind:class="{'width_label':isActive}">半径:</label>
            </div>
            <label v-bind:class="{'mm_label1':isActive}">mm</label>
            <label v-bind:class="{'mm_label2':isActive}">mm</label>
            <label v-bind:class="{'mm_label3':isActive}">mm</label>
            <button v-bind:class="{'clearCanvas':isActive}">清空画布</button>
            <label v-bind:class="{'coordinate14':isActive}">自定义寻址区域</label>
            <label v-bind:class="{'coordinate15':isActive}">中心经度：0</label>
            <label v-bind:class="{'coordinate16':isActive}">中心纬度：0</label>
            <label v-bind:class="{'coordinate17':isActive}">水平边长：0</label>
            <label v-bind:class="{'coordinate18':isActive}"></label>
            <label v-bind:class="{'coordinate19':isActive}"></label>
            <label v-bind:class="{'coordinate20':isActive}"></label>
        </div>
    </div>
    <script>
        new Vue({
            el: '#app',
            data: {
                isActive: true
            }
        });
        $(document).ready(function () {
            $(".d2").hide();
            $(".d3").hide();
            $(".mm_label3").hide();
            vare = jQuery.Event("keydown", { keyCode: 64 });

            // trigger an artificial keydown event with keyCode 64

            jQuery("body").trigger(vare);


            $(".coordinate2").text("中心经度：" + (119.8929680 + (915 * 0.00000006501)));
            $(".coordinate3").text("中心纬度：" + (30.2609691 + (286 * 0.00000005948)));
            $(".coordinate4").text("边长：" + (200 * 6.2) + "  mm");
            $(".coordinate6").text("中心经度：" + (119.8929680 + (914 * 0.00000006501)));
            $(".coordinate7").text("中心纬度：" + (30.2609691 + (306 * 0.00000005948)));
            $(".coordinate8").text("半径：" + (110 * 6.2) + "  mm");
            $(".coordinate10").text("中心经度：" + (119.8929680 + (600 * 0.00000006501)));
            $(".coordinate11").text("中心纬度：" + (30.2609691 + (286 * 0.00000005948)));
            //$(".coordinate12").text("水平半径：" + (65 * 6.2) + "  mm");
            //$(".coordinate13").text("垂直半径：" + (110 * 6.2) + "  mm");
            $(".radio1").click(function (e) {
                if (biaoshi) {
                    return;
                }
                $(".radio2").attr("checked", false);
                $(".radio3").attr("checked", false);
                var c1 = document.getElementById("myCanvas");
                var ctx1 = c1.getContext("2d");
                ctx1.clearRect(0, 0, $("#myCanvas").width(), $("#myCanvas").height());
                var c2 = document.getElementById("myCanvas");
                var ctx2 = c2.getContext("2d");
                ctx2.beginPath();
                ctx2.moveTo(915, 286 - (150 * 0.5));
                ctx2.lineTo(915 + (200 * 0.5), 286 + (150 * 0.5));
                ctx2.lineTo(915 - (200 * 0.5), 286 + (150 * 0.5));
                ctx2.lineTo(915, 286 - (150 * 0.5)); // 只用三个点的坐标就可以了，不用闭环 //如果要涉及到边框则需要闭环
                ctx2.fillStyle = "rgba(83,169,255,0.5)";
                ctx2.fill(); //开始填充，空心/实心取决于这个
                ctx2.closePath();
            });

            $(".radio2").click(function (e) {
                if (biaoshi) {
                    return;
                }
                $(".radio1").attr("checked", false);
                $(".radio3").attr("checked", false);

                var c1 = document.getElementById("myCanvas");
                var ctx1 = c1.getContext("2d");
                ctx1.clearRect(0, 0, $("#myCanvas").width(), $("#myCanvas").height());


                var c3 = document.getElementById("myCanvas");
                var ctx3 = c3.getContext("2d");
                ctx3.beginPath();
                ctx3.ellipse(914, 306, (220 * 0.5), (220 * 0.5), 0, 0, 2 * Math.PI);
                ctx3.fillStyle = "rgba(83,169,255,0.5)";
                ctx3.fill(); //开始填充，空心/实心取决于这个
                ctx3.closePath();


            });
            $(".radio3").click(function (e) {
                if (biaoshi) {
                    return;
                }
                $(".radio1").attr("checked", false);
                $(".radio2").attr("checked", false);

                var c1 = document.getElementById("myCanvas");
                var ctx1 = c1.getContext("2d");
                ctx1.clearRect(0, 0, $("#myCanvas").width(), $("#myCanvas").height());

                var c4 = document.getElementById("myCanvas");
                var ctx4 = c4.getContext("2d");
                ctx4.beginPath();
                ctx4.beginPath();
                ctx4.fillStyle = "rgba(83,169,255,0.5)";
                ctx4.fillRect(600 - (130 * 0.5), 286 - (220 * 0.5), 130, 220);

                ctx4.closePath();


            });

            $(".option1").css("color", "red");
            $(".option2").css("color", "black");
            zidingyi = false;
            $(".square,.circular,.triangle,.width,.height,.width_label,.height_label").hide();
            $(".information1").show();
            $(".information2").hide();
            var b1 = false;
            var b2 = false;
            var b3 = false;
            $(".option1").click(function (e) {
                $(".option1").css("color", "red");
                $(".option2").css("color", "black");
                zidingyi = false;
                $(".square,.circular,.triangle,.width,.height,.width_label,.height_label").hide();
                $(".information1").show(); $(".information2").hide();
                $(".radio1").attr("checked", false);
                $(".radio2").attr("checked", false);
                $(".radio3").attr("checked", false);
                var c = document.getElementById("myCanvas");
                var ctx = c.getContext("2d");
                ctx.clearRect(0, 0, $("#myCanvas").width(), $("#myCanvas").height());
            });
            $(".option2").click(function (e) {
                $(".option2").css("color", "red");
                $(".option1").css("color", "black");
                zidingyi = true;
                $(".square,.circular,.triangle,.width,.height,.width_label,.height_label").show();
                $(".information1").hide(); $(".information2").show();
                $(".radio1").attr("checked", false);
                $(".radio2").attr("checked", false);
                $(".radio3").attr("checked", false);
                var c = document.getElementById("myCanvas");
                var ctx = c.getContext("2d");
                ctx.clearRect(0, 0, $("#myCanvas").width(), $("#myCanvas").height());
            });
            $(".clearCanvas").click(function (e) {
                $(".radio1").attr("checked", false);
                $(".radio2").attr("checked", false);
                $(".radio3").attr("checked", false);
                var c = document.getElementById("myCanvas");
                var ctx = c.getContext("2d");
                ctx.clearRect(0, 0, $("#myCanvas").width(), $("#myCanvas").height());
            });
            var biaoshi = false;
            var zidingyi = true;
            $("#myCanvas").click(function (e) {
                if (biaoshi) {
                    return;
                }

                //$(".coordinate16").text("中心纬度：" + (Math.abs(mouseY - 622)));
                if (zidingyi) {
                    var c = document.getElementById("myCanvas");
                    var ctx = c.getContext("2d");
                    ctx.clearRect(0, 0, $("#myCanvas").width(), $("#myCanvas").height());
                    var x = e.pageX;
                    var y = e.pageY;
                    var left = $("#myCanvas").css("marginLeft");// px = '400px'
                    var top = $("#myCanvas").css("marginTop");// px = '400px'
                    var hei = $("#myCanvas").height();

                    var leftInt = parseInt(left);
                    var topInt = parseInt(top);
                    var heig = parseInt(hei);
                    var jued = Math.abs((y - topInt) - heig);
                    var mouseX = x - leftInt;
                    var mouseY = y - topInt;
                    var kuan = $(".width").val() / 6.2;
                    var gao = $(".height").val() / 6.2;
                    //alert((mouseX) + "-" + Math.abs(mouseY - 622));
                    //一个像素点是6.2mm
                    //y轴一个像素点是0.00000005948经纬度
                    $(".coordinate15").text("中心经度：" + (119.8929680 + (Math.abs(mouseX) * 0.00000006501)));
                    $(".coordinate16").text("中心纬度：" + (30.2609691 + (Math.abs(mouseY - 622) * 0.00000005948)));
                    $(".coordinate17").text("水平边长：" + (kuan * 6.2) + "  mm");
                    $(".coordinate18").text("垂直边长：" + (gao * 6.2) + "  mm");
                    $(".coordinate19").text("水平半径：" + ((kuan * 6.2) / 2) + "  mm");
                    $(".coordinate20").text("垂直半径：" + ((gao * 6.2) / 2) + "  mm");


                    //alert(mouseX + "-" + mouseY);
                    if (b1) {
                        var kuan = $(".width").val() / 6.2;
                        var gao = $(".height").val() / 6.2;
                        ctx.beginPath();
                        ctx.fillStyle = "rgba(83,169,255,0.5)";
                        ctx.fillRect(mouseX - (kuan * 0.5), mouseY - (gao * 0.5), kuan, gao);
                        ctx.closePath();
                        $(".coordinate17").text("宽：" + (kuan * 6.2) + "  mm");
                        $(".coordinate18").text("长：" + (gao * 6.2) + "  mm");
                    } else if (b2) {
                        var kuan = $(".bianchang").val() / 6.2;
                        var gao = ($(".bianchang").val() * Math.sqrt(2 / 3)) / 6.2;
                        ctx.beginPath();
                        ctx.moveTo(mouseX, mouseY - (gao * 0.5));
                        ctx.lineTo(mouseX + (kuan * 0.5), mouseY + (gao * 0.5));
                        ctx.lineTo(mouseX - (kuan * 0.5), mouseY + (gao * 0.5));
                        ctx.lineTo(mouseX, mouseY - (gao * 0.5)); // 只用三个点的坐标就可以了，不用闭环 //如果要涉及到边框则需要闭环
                        ctx.fillStyle = "rgba(83,169,255,0.5)";
                        ctx.fill(); //开始填充，空心/实心取决于这个
                        ctx.closePath();
                        $(".coordinate17").text("边长：" + (kuan * 6.2) + "  mm");
                        $(".coordinate18").text("");
                    } else if (b3) {
                        var kuan = ($(".banjing").val()*2) / 6.2;
                        var gao = ($(".banjing").val() * 2) / 6.2;
                        ctx.beginPath();
                        ctx.ellipse(mouseX, mouseY, (kuan * 0.5), (gao * 0.5), 0, 0, 2 * Math.PI);
                        ctx.fillStyle = "rgba(83,169,255,0.5)";
                        ctx.fill();
                        ctx.closePath();
                        $(".coordinate17").text("半径：" + ((kuan * 6.2) / 2) + "  mm");
                        $(".coordinate18").text("");
                    }
                }


            });
            $(".warning").click(function (e) {

                if (biaoshi) {
                    biaoshi = false;
                    $(".radio1").show();
                    $(".radio2").show();
                    $(".radio3").show();
                    // $(".warning").text("发出警告");、
                                    $(".warning").css({"background": "url(image/newimg/发出警告.png) no-repeat center center"});

                    $(".warning").css("background-color", "");
                    $.ajax({
                        type: "post",
                        contentType: "application/json; charset=utf-8",//传值的方式
                        dataType: "json",
                        url: "地理标识模态.aspx/Fasong2",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                        data: "{id:'" + 5 + "'}",//username 为想问后台传的参数（这里的参数可有可无）
                        success: function (result) {
                            //alert(result.d);//result.d为后台返回的参数
                        }
                    })

                } else {
                    biaoshi = true;
                    $(".radio1").hide();
                    $(".radio2").hide();
                    $(".radio3").hide();
                    // $(".warning").text("异常处理完毕");
                     $(".warning").css({"background": "url(image/newimg/异常处理完毕.png) no-repeat center center"});
                    $(".warning").css("background-color", "lightskyblue");
                    var c = document.getElementById("myCanvas");

                    var a = document.createElement("a");
                    a.href = c.toDataURL();
                    // download 属性定义了下载链接的地址
                    let date = Date.now();
                    let rund = Math.ceil(Math.random() * 1000)
                    let id = date + '' + rund;
                    a.download = id;
                    a.click();
                    $.ajax({
                        type: "post",
                        contentType: "application/json; charset=utf-8",//传值的方式
                        dataType: "json",
                        url: "地理标识模态.aspx/Fasong",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                        data: "{name:'" + id + "'}",//username 为想问后台传的参数（这里的参数可有可无）
                        success: function (result) {
                            //alert(result.d);//result.d为后台返回的参数
                        }
                    })
                }

            });
            $(".square").click(function (e) {
                $(".d1").show();
                $(".mm_label1").show();
                $(".mm_label2").show();
                $(".d2").hide();
                $(".d3").hide();
                $(".mm_label3").hide();
                b1 = true;
                b2 = false;
                b3 = false;
                if (b1) {
                    var src = 'image/newimg/矩形蓝.png';
                    $(".square").css('background-image', 'url(' + src + ')');
                } else {
                    var src = 'image/newimg/矩形区域.png';
                    $(".square").css('background-image', 'url(' + src + ')');
                }
                if (b2) {
                    var src = 'image/newimg/三角形蓝.png';
                    $(".circular").css('background-image', 'url(' + src + ')');
                } else {
                    var src = 'image/newimg/三角形.png';
                    $(".circular").css('background-image', 'url(' + src + ')');
                }
                if (b3) {
                    var src = 'image/newimg/椭圆蓝.png';
                    $(".triangle").css('background-image', 'url(' + src + ')');
                } else {
                    var src = 'image/newimg/椭圆.png';
                    $(".triangle").css('background-image', 'url(' + src + ')');
                }


            });

            $(".circular").click(function (e) {
                $(".d2").show();
                $(".mm_label1").hide();
                $(".mm_label2").hide();
                $(".d1").hide();
                $(".d3").hide();
                $(".mm_label3").show();
                b1 = false;
                b2 = true;
                b3 = false;
              if (b1) {
                               var src = 'image/newimg/矩形蓝.png';
                               $(".square").css('background-image', 'url(' + src + ')');
                           } else {
                               var src = 'image/newimg/矩形区域.png';
                               $(".square").css('background-image', 'url(' + src + ')');
                           }
                           if (b2) {
                               var src = 'image/newimg/三角形蓝.png';
                               $(".circular").css('background-image', 'url(' + src + ')');
                           } else {
                               var src = 'image/newimg/三角形.png';
                               $(".circular").css('background-image', 'url(' + src + ')');
                           }
                           if (b3) {
                               var src = 'image/newimg/椭圆蓝.png';
                               $(".triangle").css('background-image', 'url(' + src + ')');
                           } else {
                               var src = 'image/newimg/椭圆.png';
                               $(".triangle").css('background-image', 'url(' + src + ')');
                           }

            });

            $(".triangle").click(function (e) {
                $(".d3").show();
                $(".mm_label1").hide();
                $(".mm_label2").hide();
                $(".d1").hide();
                $(".d2").hide();
                $(".mm_label3").show();
                b1 = false;
                b2 = false;
                b3 = true;
                 if (b1) {
                                  var src = 'image/newimg/矩形蓝.png';
                                  $(".square").css('background-image', 'url(' + src + ')');
                              } else {
                                  var src = 'image/newimg/矩形区域.png';
                                  $(".square").css('background-image', 'url(' + src + ')');
                              }
                              if (b2) {
                                  var src = 'image/newimg/三角形蓝.png';
                                  $(".circular").css('background-image', 'url(' + src + ')');
                              } else {
                                  var src = 'image/newimg/三角形.png';
                                  $(".circular").css('background-image', 'url(' + src + ')');
                              }
                              if (b3) {
                                  var src = 'image/newimg/椭圆蓝.png';
                                  $(".triangle").css('background-image', 'url(' + src + ')');
                              } else {
                                  var src = 'image/newimg/椭圆.png';
                                  $(".triangle").css('background-image', 'url(' + src + ')');
                              }


            });

            $(".return").click(function (e) {
                $.ajax({
                    type: "post",
                    contentType: "application/json; charset=utf-8",//传值的方式
                    dataType: "json",
                    url: "地理标识模态.aspx/Fasong2",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                    data: "{id:'" + 5 + "'}",//username 为想问后台传的参数（这里的参数可有可无）
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
                        url: "地理标识模态.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                        data: "{window1:11,window2:5,operation:1}",//username 为想问后台传的参数（这里的参数可有可无）
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
                        url: "地理标识模态.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                        data: "{window1:11,window2:5,operation:2}",//username 为想问后台传的参数（这里的参数可有可无）
                        success: function (result) {
                            //alert(result.d);//result.d为后台返回的参数
                        }
                    })
                }

            });
            $(".border2").click(function (e) {
                if (bofang) {
                    $(".play").removeClass("play").addClass("stop");
                    bofang = false;
                    $.ajax({
                        type: "post",
                        contentType: "application/json; charset=utf-8",//传值的方式
                        dataType: "json",
                        url: "地理标识模态.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                        data: "{window1:11,window2:5,operation:1}",//username 为想问后台传的参数（这里的参数可有可无）
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
                        url: "地理标识模态.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                        data: "{window1:11,window2:5,operation:2}",//username 为想问后台传的参数（这里的参数可有可无）
                        success: function (result) {
                            //alert(result.d);//result.d为后台返回的参数
                        }
                    })
                }

            });
            $(".play").click(function (e) {
                if (bofang) {
                    $(".play").removeClass("play").addClass("stop");
                    bofang = false;
                    $.ajax({
                        type: "post",
                        contentType: "application/json; charset=utf-8",//传值的方式
                        dataType: "json",
                        url: "地理标识模态.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                        data: "{window1:11,window2:5,operation:1}",//username 为想问后台传的参数（这里的参数可有可无）
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
                        url: "地理标识模态.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                        data: "{window1:11,window2:5,operation:2}",//username 为想问后台传的参数（这里的参数可有可无）
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
                        url: "地理标识模态.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                        data: "{window1:16,window2:5,operation:1}",//username 为想问后台传的参数（这里的参数可有可无）
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
                        url: "地理标识模态.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                        data: "{window1:16,window2:5,operation:2}",//username 为想问后台传的参数（这里的参数可有可无）
                        success: function (result) {
                            //alert(result.d);//result.d为后台返回的参数
                        }
                    })
                }

            });
            $(".border4").click(function (e) {
                if (bofang2) {
                    $(".play2").removeClass("play2").addClass("stop2");
                    bofang2 = false;
                    $.ajax({
                        type: "post",
                        contentType: "application/json; charset=utf-8",//传值的方式
                        dataType: "json",
                        url: "地理标识模态.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                        data: "{window1:16,window2:5,operation:1}",//username 为想问后台传的参数（这里的参数可有可无）
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
                        url: "地理标识模态.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                        data: "{window1:16,window2:5,operation:2}",//username 为想问后台传的参数（这里的参数可有可无）
                        success: function (result) {
                            //alert(result.d);//result.d为后台返回的参数
                        }
                    })
                }

            });
            $(".play2").click(function (e) {
                if (bofang2) {
                    $(".play2").removeClass("play2").addClass("stop2");
                    bofang2 = false;
                    $.ajax({
                        type: "post",
                        contentType: "application/json; charset=utf-8",//传值的方式
                        dataType: "json",
                        url: "地理标识模态.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                        data: "{window1:16,window2:5,operation:1}",//username 为想问后台传的参数（这里的参数可有可无）
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
                        url: "地理标识模态.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                        data: "{window1:16,window2:5,operation:2}",//username 为想问后台传的参数（这里的参数可有可无）
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
                url: "地理标识模态.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                data: "{window1:5,window2:5,operation:0}",//username 为想问后台传的参数（这里的参数可有可无）
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
                    url: "地理标识模态.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                    data: "{window1:5,window2:5,operation:0}",//username 为想问后台传的参数（这里的参数可有可无）
                    success: function (result) {
                        //alert(result.d);//result.d为后台返回的参数
                    }
                })
            });
            $(".border3").click(function (e) {
                bofang = true;
                $.ajax({
                    type: "post",
                    contentType: "application/json; charset=utf-8",//传值的方式
                    dataType: "json",
                    url: "地理标识模态.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                    data: "{window1:5,window2:5,operation:0}",//username 为想问后台传的参数（这里的参数可有可无）
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
