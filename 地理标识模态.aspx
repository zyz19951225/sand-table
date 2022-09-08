<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="地理标识模态.aspx.cs" Inherits="之江.地理标识模态" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script type="text/javascript" src="/jquery-1.8.0.min.js"></script>
    <script src="/vue.min.js"></script>
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
            opacity: 0.6;
            height: 1080px;
            width: 1920px;
            position: absolute;
        }

        .title {
            background-image: url(image/newimg/设备故障诊断场景.png);
        }

        .control-bar {
            border-bottom: 1px solid rgba(255,255,255,.5);
            padding-bottom: 24px;
            
        }
        .lable4 {
            margin-right: 36px;
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
             margin-top: 489px;
             height: 27.2px;
             width: 100px;
             margin-left: 242px;
             font-weight: 400;
             text-align: center;
        }

        .banjing {
            color: black;
            font-size: 20px;
            position: absolute;
 margin-top: 489px;
  height: 27.2px;
            width: 100px;
          margin-left: 242px;
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

    .menu2 {
        width: 40px;
        width: 1295px;
        height: 60px;
        position: absolute;
        background-color: #e5e4e4;
        margin-top: 12.85%;
        margin-left: 10%;
    }
    .option-group {
        position: absolute;
        top: 340px;
        left: 170px;
        border: 1px solid #fff;
        border-radius: 26px;
        display: flex;
    }
    .option {
        height: 48px;
        line-height: 48px;
        padding: 0 28px;
        border-radius: 26px;
        font-size: 20px;
        color: #fff;
    }
    .option.active {
        background-color: #2097FF;
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
    
        <div class="background"></div>
        <div class="occlusion"></div>
        <div class="image1"></div>
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
        <button class="full"></button>
        <button class="home">首页</button>

        <canvas class="myCanvas" width="1295" height="622" id="myCanvas"></canvas>
<!--        <canvas class="menu"></canvas>-->
        <div class="square"></div>
        <div class="circular"></div>
        <div class="triangle"></div>
<!--         <input type="number" value="1000" class="width" maxlength="3" /> -->
<!--         <input type="number" value="1000" class="height" maxlength="3" /> -->
<!--         <label class="width_label">宽:</label> -->
<!--         <label class="height_label">高:</label> -->
<!--        <button class="warning">-->
<!--            <div class="d">发出警告</div>-->
<!--        </button>-->
        <div class="warning d"></div>


<!--        <canvas class="menu2"></canvas>-->
        <div class="option-group">
            <div class="option option1">选择目标区域</div>
            <div class="option option2">自定义绘制</div>
        </div>
        <div class="information1">
            <input type="radio" name="radios" class="radio1" />
            <label class="coordinate1">目标寻址区域1</label>
            <label class="coordinate2">中心经度：119.9711553</label>
            <label class="coordinate3">中心纬度：30.2773782</label>
            <label class="coordinate4">边长：700</label>


            <input type="radio" name="radios" class="radio2" />
            <label class="coordinate5">目标寻址区域2</label>
            <label class="coordinate6">中心经度：119.9711553</label>
            <label class="coordinate7">中心纬度：30.2773782</label>
            <label class="coordinate8">半径：1000</label>


            <input type="radio" name="radios" class="radio3" />
            <label class="coordinate9">目标寻址区域3</label>
            <label class="coordinate10">中心经度：119.9711553</label>
            <label class="coordinate11">中心纬度：30.2773782</label>
            <label class="coordinate12">水平半径：500</label>
            <label class="coordinate13">垂直半径：900</label>

        </div>
        <div class="information2">
            <div class="d1">
                <input type="number" value="1000" class="width" maxlength="3" />
                <input type="number" value="1000" class="height" maxlength="3" />
                <label class="width_label">宽:</label>
                <label class="height_label">高:</label>
            </div>
            <div class="d2">
                <input type="number" value="1000" class="bianchang" maxlength="3" />
                <label class="width_label">边长:</label>
            </div>
            <div class="d3">
                <input type="number" value="500" class="banjing" maxlength="3" />
                <label class="width_label">半径:</label>
            </div>
            <label class="mm_label1">mm</label>
            <label class="mm_label2">mm</label>
            <label class="mm_label3">mm</label>
            <button class="clearCanvas"></button>
            <label class="coordinate14">自定义寻址区域</label>
            <label class="coordinate15">中心经度：0</label>
            <label class="coordinate16">中心纬度：0</label>
            <label class="coordinate17">水平边长：0</label>
            <label class="coordinate18"></label>
            <label class="coordinate19"></label>
            <label class="coordinate20"></label>
        </div>
    
    <script>
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

            $(".option1").addClass("active");
            $(".option2").removeClass("active");
            zidingyi = false;
            $(".square,.circular,.triangle,.width,.height,.width_label,.height_label").hide();
            $(".information1").show();
            $(".information2").hide();
            var b1 = false;
            var b2 = false;
            var b3 = false;
            $(".option1").click(function (e) {
                $(".option1").addClass("active");
                $(".option2").removeClass("active");
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
                $(".option2").addClass("active");
                $(".option1").removeClass("active");
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
//                     $(".coordinate19").text("水平半径：" + ((kuan * 6.2) / 2) + "  mm");
//                     $(".coordinate20").text("垂直半径：" + ((gao * 6.2) / 2) + "  mm");


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


            $(".home").click(function (e) {
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
//                 $(location).attr("href", "Main.aspx")
                  $(".bdy").innerHTML=''
                                $(".bdy").load("Main.aspx")
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
