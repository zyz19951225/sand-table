<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="机器视觉质检场景.aspx.cs" Inherits="之江.机器视觉质检场景" %>

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

        .title {
            background-image: url(image/newimg/机器视觉质检场景.png);
        }

        .label1 {
            color: white;
            font-size: 28px;
            position: absolute;
            top: 400px;
            left: 781px;
            line-height: 48px;
        }

        .control-bar {
            border-bottom: 1px solid rgba(255,255,255,.5);
            padding-bottom: 24px;
        }

        .lable4 {
            margin-right: 36px;
        }

        .input {
            color: rgba(255,255,255,.6);
            font-size: 28px;
            position: absolute;
            margin-top: 400px;
            height: 50px;
            width: 200px;
            margin-left: 900px;
            padding: 0 12px;
            border: none;
            background: rgba(255,255,255,.3);
            border-radius: 4px;
        }

        .button1 {
        }

        .button7 {
            position: absolute;
            margin-top: 932px;
            margin-left: 850px;
            height: 58px;
            width: 250px;
            text-align: center;
            border-radius: 30px;
            border: 0;
            background: #2097FF;
            color: #fff;
            font-size: 28px;
            box-shadow: 0 3px 6px rgba(0,0,0,.38);
        }


        .label2 {
            color: white;
            font-size: 28px;
            position: absolute;
            margin-top: 618px;
            margin-left: 856px;
            opacity: .9;
        }

        .completeicon {
            background: url(image/newimg/接受数据图标.png) no-repeat center center;
            background-size: 100% 100%;
            height: 113px;
            width: 112px;
            position: absolute;
            margin-top: 466px;
            margin-left: 678px;
        }

        .button_p0 {
            position: absolute;
            text-align: left;
            letter-spacing: 2px;
            left: 92px;
            top: 5px;
        }

        .button_p1 {
            position: absolute;
            left: 212px;
            top: 36px;
        }

        .xndb {
            background: url(image/newimg/性能对比.png) no-repeat center center;
            height: 111px;
            width: 342px;
            position: absolute;
            margin-top: 900px;
            margin-left: 800px;
        }

        .go {
            background: url(image/newimg/download.png) no-repeat 40px center/auto 70px #2097FF;
            position: absolute;
            top: 508px;
            left: 732px;
            height: 98px;
            width: 454px;
            color: white;
            font-size: 30px;
            border-radius: 12px;
            border: none;
            box-shadow: 0 3px 6px rgba(0,0,0,.38);
            font-weight: lighter;
        }

            .go.disabled {
                opacity: .6;
            }

            .go .button_p0 {
                left: 152px;
                top: 8px;
                letter-spacing: 4px;
            }

            .go .button_p1 {
                left: 302px;
                top: 48px;
            }

        .department {
            position: absolute;
            width: 316px;
            height: 74px;
            background: url(image/newimg/download.png) no-repeat 26px center/auto 50px #2097FF;
            border-radius: 12px;
            color: #fff;
            box-shadow: 0 3px 6px rgba(0,0,0,.38);
            font-weight: lighter;
            font-size: 26px;
            line-height: 1.2;
        }

            .department.disabled {
                opacity: .5;
            }

        .department2 {
            top: 623px;
            left: 272px;
        }

        .department3 {
            top: 623px;
            left: 625px;
        }

        .department4 {
            top: 623px;
            left: 979px;
        }

        .department5 {
            top: 623px;
            left: 1332px;
        }

        .label3 {
            color: white;
            font-size: 32px;
            position: absolute;
            margin-top: 498px;
            margin-left: 792px;
        }

        .label3_a {
            color: #13FFEF;
        }

        .gongyibu, .shebeibu, .shengchanbu, .chanpinkaifabu {
            position: absolute;
            top: 710px;
            width: 316px;
            color: white;
            font-size: 27px;
            text-align: center;
        }

        .gongyibu {
            left: 272px;
        }

        .gongyibu_a {
            color: #13FFEF;
        }

        .shebeibu {
            left: 625px;
        }

        .shebeibu_a {
            color: #13FFEF;
        }

        .shengchanbu {
            left: 979px;
        }

        .shengchanbu_a {
            color: #13FFEF;
        }

        .chanpinkaifabu {
            left: 1332px;
        }

        .chanpinkaifabu_a {
            color: #13FFEF;
        }

        .label4 {
            font-size: 48px;
            position: absolute;
            margin-top: 320px;
            margin-left: 868px;
            color: #fff;
        }

        .compare-table {
            border-collapse: collapse;
            position: absolute;
            width: 1318px;
            top: 400px;
            left: 300px;
        }

            .compare-table th, .compare-table td {
                padding: 18px;
                border-bottom: 2px solid rgba(255, 255, 255, .8);
                text-align: center;
                font-size: 26px;
                color: #fff;
                font-weight: normal;
            }

            .compare-table td {
                border-bottom: 1px solid rgba(255, 255, 255, .5);
            }

            .compare-table th {
                padding: 12px 0;
            }

        .compare-th-label {
            display: block;
            width: 286px;
            margin: 0 auto;
            text-align: left;
            white-space: nowrap;
        }

        .compare-path {
            position: relative;
            width: 438px;
            height: 50px;
            margin: 0 auto;
        }

        .dun, .chuanshu, .fuwuqi {
            height: 50px;
            position: absolute;
            top: 0;
            box-sizing: border-box;
            padding-top: 30px;
            font-size: 20px;
            white-space: nowrap;
        }

        .dun {
            width: 60px;
            background: url(image/newimg/department.png) no-repeat center top/auto 26px;
            left: 0;
        }

        .chuanshu {
            width: 96px;
            background: url(image/newimg/连接.png) no-repeat center top/auto 26px;
            left: 170px;
            top: 2px;
            padding-top: 28px;
        }

        .fuwuqi {
            width: 90px;
            background: url(image/newimg/服务器.png) no-repeat center top/auto 26px;
            left: 362px;
        }

        .jiantou, .jiantou-gray {
            position: absolute;
            height: 10px;
            width: 134px;
            background: url(image/newimg/右向箭头.png) no-repeat center center/contain;
        }

        .jiantou-gray {
            background: url(image/newimg/灰色箭头.png) no-repeat center center/contain;
        }

        .jiantou-left-top {
            left: 49px;
            top: 1px;
        }

        .jiantou-left-bottom {
            left: 49px;
            top: 18px;
            transform: rotate(180deg);
        }

        .jiantou-right-top {
            left: 250px;
            top: 1px;
        }

        .jiantou-right-bottom {
            transform: rotate(180deg);
            left: 250px;
            top: 18px;
        }

        .time1, .time2, .time3, .time4, .time5 {
            height: 24px;
            border-radius: 2px;
            background: #53D6FF;
        }

        .time1 {
            width: 300px;
        }

        .time3 {
            width: 140px;
        }

        .time4 {
            width: 140px;
        }

        .time5 {
            width: 140px;
        }

        .time2 {
            width: 140px;
        }
        .image-wrap {
            position: absolute;
            width: 800px;
            left: 50%;
            top: 650px;
            transform: translate(-50%, -50%);
            background: #080D1A;
        }
        .return2 {
            height: 50px;
            width: 50px;
            position: absolute;
            right: 16px;
            top: 12px;
            background: url(机器视觉质检/关闭.png) no-repeat center center;
            background-size: 100% 100%;
            border: 0;
        }
        .image {
            width: 100%;
            display: block;
        }

        .box-visual {
            position: absolute;
            width: 1451px;
            height: 726px;
            top: 296px;
            left: 235px;
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
        <button class="home">首页</button>
        <div class="box box-visual"></div>
        <div class="div1">
            <label class="label1">文件名:</label>
            <input type="text" value="纪念币1" class="input" maxlength="8" />
            <button class="go button1">
                <p class="button_p0">质检部<br>
                    获取数据</p>
                <p class="button_p1">（首次）</p>
            </button>
            <div class="completeicon"></div>
            <label class="label2">数据传输中……</label>
            <label class="label3">
                质检部已接收，
                <a href="#" class="label3_a">显示数据</a>
            </label>
            <div class="jieduan2">
                <div class="department department2 button2">
                    <p class="button_p0">市场部<br>
                        获取数据</p>
                    <p class="button_p1">（再次）</p>
                </div>
                <div class="department department3 button3">
                    <p class="button_p0">运营部<br>
                        获取数据</p>
                    <p class="button_p1">（再次）</p>
                </div>

                <div class="department department4 button4">
                    <p class="button_p0">产品部<br>
                        获取数据</p>
                    <p class="button_p1">（再次）</p>
                </div>

                <div class="department department5 button5">
                    <p class="button_p0">监控部<br>
                        获取数据</p>
                    <p class="button_p1">（再次）</p>
                </div>
                <label class="gongyibu">
                    市场部已接收，
                <a href="#" class="gongyibu_a">显示数据</a></label>
                <label class="shebeibu">
                    运营部已接收，
                <a href="#" class="shebeibu_a">显示数据</a>
                </label>
                <label class="shengchanbu">
                    产品部已接收，
                <a href="#" class="shengchanbu_a">显示数据</a>
                </label>
                <label class="chanpinkaifabu">
                    监控部已接收，
                <a href="#" class="chanpinkaifabu_a">显示数据</a>
                </label>
                <!--                <button class="button6">性能对比</button>-->
                <div class="xndb button6"></div>

            </div>
        </div>
        <div class="div2">
            <label class="label4">性能对比</label>
            <table class="compare-table">
                <tr>
                    <th>
                        <label class="label5">部门</label></th>
                    <th>
                        <label class="label6">传输路径</label></th>
                    <th>
                        <label class="label7">用户响应时间</label></th>
                </tr>
                <tr class="quality_inspection">
                    <td>
                        <label class="compare-th-label quality_inspection_label">质检部获取数据（首次）</label>
                    </td>
                    <td>
                        <div class="compare-path">
                            <div class="dun dun1">质检部</div>
                            <div class="jiantou jiantou-left-top jiantou1"></div>
                            <div class="jiantou jiantou-left-bottom jiantou2"></div>
                            <div class="chuanshu chuanshu1">多模态网元</div>
                            <div class="jiantou jiantou-right-top jiantou3"></div>
                            <div class="jiantou jiantou-right-bottom jiantou4"></div>
                            <div class="fuwuqi fuwuqi1">大数据中心</div>
                        </div>
                    </td>
                    <td>
                        <div class="time1"></div>
                    </td>
                </tr>
                <tr class="process">
                    <td>
                        <label class="compare-th-label process_label">市场部获取数据</label>
                    </td>
                    <td>
                        <div class="compare-path">
                            <div class="dun dun2">市场部</div>
                            <div class="jiantou jiantou-left-top jiantou5"></div>
                            <div class="jiantou jiantou-left-bottom jiantou6"></div>
                            <div class="chuanshu chuanshu2">多模态网元</div>
                            <div class="jiantou-gray jiantou-right-top jiantou7"></div>
                            <div class="jiantou-gray jiantou-right-bottom jiantou8"></div>
                            <div class="fuwuqi fuwuqi2">大数据中心</div>
                        </div>
                    </td>
                    <td>
                        <div class="time2"></div>
                    </td>
                </tr>

                <tr class="equipment">
                    <td>
                        <label class="compare-th-label equipment_label">运营部获取数据</label>
                    </td>
                    <td>
                        <div class="compare-path">
                            <div class="dun dun3">运营部</div>
                            <div class="jiantou jiantou-left-top jiantou9"></div>
                            <div class="jiantou jiantou-left-bottom jiantou10"></div>
                            <div class="chuanshu chuanshu3">多模态网元</div>
                            <div class="jiantou-gray jiantou-right-top jiantou11"></div>
                            <div class="jiantou-gray jiantou-right-bottom jiantou12"></div>
                            <div class="fuwuqi fuwuqi3">大数据中心</div>
                        </div>
                    </td>
                    <td>
                        <div class="time3"></div>
                    </td>
                </tr>

                <tr class="production">
                    <td>
                        <label class="compare-th-label production_label">产品部获取数据</label>
                    </td>
                    <td>
                        <div class="compare-path">
                            <div class="dun dun4">产品部</div>
                            <div class="jiantou jiantou-left-top jiantou13"></div>
                            <div class="jiantou jiantou-left-bottom jiantou14"></div>
                            <div class="chuanshu chuanshu4">多模态网元</div>
                            <div class="jiantou-gray jiantou-right-top jiantou15"></div>
                            <div class="jiantou-gray jiantou-right-bottom jiantou16"></div>
                            <div class="fuwuqi fuwuqi4">大数据中心</div>
                        </div>
                    </td>
                    <td>
                        <div class="time4"></div>
                    </td>
                </tr>

                <tr class="monitor">
                    <td>
                        <label class="compare-th-label monitor_label">监控部获取数据</label>
                    </td>
                    <td>
                        <div class="compare-path">
                            <div class="dun dun5">监控部</div>
                            <div class="jiantou jiantou-left-top jiantou17"></div>
                            <div class="jiantou jiantou-left-bottom jiantou18"></div>
                            <div class="chuanshu chuanshu5">多模态网元</div>
                            <div class="jiantou-gray jiantou-right-top jiantou19"></div>
                            <div class="jiantou-gray jiantou-right-bottom jiantou20"></div>
                            <div class="fuwuqi fuwuqi5">大数据中心</div>
                        </div>
                    </td>
                    <td>
                        <div class="time5"></div>
                    </td>
                </tr>
            </table>
            <button class="button7">返回</button>
        </div>
        <!-- <button class="full"></button> -->
        <div class="image-wrap">
            <image class="image"/>
            <button class="return2"></button>
        </div>
        

    </div>
    <script>

        $(document).ready(function () {

            $(".image").hide(); $(".return2").hide();
            $(".label3_a").click(function (e) {

                var src = 'http://localhost:8088/picture/抓拍.jpg';
                $(".image").attr('src', src);
                $(".image").show(); $(".return").hide(); $(".return2").show();

            });
            $(".gongyibu_a").click(function (e) {
                $(".image").show(); $(".return").hide(); $(".return2").show();
                var src = 'http://localhost:8088/picture/抓拍.jpg';
                $(".image").css('background-image', 'url(' + src + ')');
            });
            $(".shebeibu_a").click(function (e) {
                $(".image").show(); $(".return").hide(); $(".return2").show();
                var src = 'http://localhost:8088/picture/抓拍.jpg';
                $(".image").css('background-image', 'url(' + src + ')');
            });
            $(".shengchanbu_a").click(function (e) {
                $(".image").show(); $(".return").hide(); $(".return2").show();
                var src = 'http://localhost:8088/picture/抓拍.jpg';
                $(".image").css('background-image', 'url(' + src + ')');
            });
            $(".chanpinkaifabu_a").click(function (e) {
                $(".image").show(); $(".return").hide(); $(".return2").show();
                var src = 'http://localhost:8088/picture/抓拍.jpg';
                $(".image").css('background-image', 'url(' + src + ')');
            });
            $(".return2").click(function (e) {
                $(".image").hide(); $(".return").show(); $(".return2").hide();

            });
            $(".div1").show();
            $(".div2").hide();
            $(".label2").hide();
            $(".completeicon").hide();
            $(".label3").hide();
            $(".jieduan2").hide();
            $(".gongyibu").hide();
            $(".shebeibu").hide();
            $(".shengchanbu").hide();
            $(".chanpinkaifabu").hide();
            $(".button6").hide();
            $(".button7").click(function (e) {
                $(".div1").show();
                $(".div2").hide();
                btype = false;
                state2 = states2;
                state3 = states3;
                state4 = states4;
                state5 = states5;
            });
            var states2 = false;
            var states3 = false;
            var states4 = false;
            var states5 = false;
            var btype = false;
            $(".button6").click(function (e) {
                btype = true;
                $(".div1").hide();
                $(".div2").show();
                $(".div2").height(0);
                $(".process").hide();
                $(".equipment").hide();
                $(".production").hide();
                $(".monitor").hide();
                states2 = state2;
                states3 = state3;
                states4 = state4;
                states5 = state5;;

                if (state2) {
                    state2 = false;
                    $(".process").show();
                    $(".process_label").text("市场部获取数据");
                } else if (state3) {
                    state3 = false;
                    $(".process").show();
                    $(".process_label").text("运营部获取数据");

                } else if (state4) {
                    state4 = false;
                    $(".process").show();
                    $(".process_label").text("产品部获取数据");

                } else if (state5) {
                    state5 = false;
                    $(".process").show();
                    $(".process_label").text("监控部获取数据");

                }

                if (state2) {
                    state2 = false;
                    $(".equipment").show();
                    $(".equipment_label").text("市场部获取数据");
                } else if (state3) {
                    state3 = false;
                    $(".equipment").show();
                    $(".equipment_label").text("运营部获取数据");

                } else if (state4) {
                    state4 = false;
                    $(".equipment").show();
                    $(".equipment_label").text("产品部获取数据");

                } else if (state5) {
                    state5 = false;
                    $(".equipment").show();
                    $(".equipment_label").text("监控部获取数据");

                }

                if (state2) {
                    state2 = false;
                    $(".production").show();
                    $(".production_label").text("市场部获取数据");
                } else if (state3) {
                    state3 = false;
                    $(".production").show();
                    $(".production_label").text("运营部获取数据");

                } else if (state4) {
                    state4 = false;
                    $(".production").show();
                    $(".production_label").text("产品部获取数据");

                } else if (state5) {
                    state5 = false;
                    $(".production").show();
                    $(".production_label").text("监控部获取数据");

                }

                if (state2) {
                    state2 = false;
                    $(".monitor").show();
                    $(".monitor_label").text("市场部获取数据");
                } else if (state3) {
                    state3 = false;
                    $(".monitor").show();
                    $(".monitor_label").text("运营部获取数据");

                } else if (state4) {
                    state4 = false;
                    $(".monitor").show();
                    $(".monitor_label").text("产品部获取数据");

                } else if (state5) {
                    state5 = false;
                    $(".monitor").show();
                    $(".monitorn_label").text("监控部获取数据");

                }
            });
            var index = 0;
            var state1 = true;
            var state2 = false;
            var state3 = false;
            var state4 = false;
            var state5 = false;
            $(".button1").click(function (e) {
                $.ajax({
                    type: "post",
                    contentType: "application/json; charset=utf-8",//传值的方式
                    dataType: "json",
                    url: "机器视觉质检场景.aspx/Fasong",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                    data: "{type:" + 1 + "}",//username 为想问后台传的参数（这里的参数可有可无）
                    success: function (result) {
                        //alert(result.d);//result.d为后台返回的参数
                    }
                })
                $.ajax({
                    type: "post",
                    contentType: "application/json; charset=utf-8",//传值的方式
                    dataType: "json",
                    url: "机器视觉质检场景.aspx/Paizhao",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                    success: function (result) {
                        //alert(result.d);//result.d为后台返回的参数
                    }
                })
                $(".button1").attr("readonly", "readonly");
                $(".button1").addClass('disabled');
                $(".label2").show();
                setTimeout(function () {
                    $(".label2").hide()
                    $(".go").hide()

                    $(".completeicon").show();
                    $(".label3").show();
                    $(".jieduan2").show();
                }, 400);//20000
            });
            $(".button2").click(function (e) {
                state2 = true;
                $(".button2").addClass("disabled");
                setTimeout(function () {
                    $(".gongyibu").show();
                    $(".button6").show();
                }, 2000);//10000

                $.ajax({
                    type: "post",
                    contentType: "application/json; charset=utf-8",//传值的方式
                    dataType: "json",
                    url: "机器视觉质检场景.aspx/Fasong",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                    data: "{type:" + 3 + "}",//username 为想问后台传的参数（这里的参数可有可无）
                    success: function (result) {
                        //alert(result.d);//result.d为后台返回的参数
                    }
                })
            });
            $(".button3").click(function (e) {
                state3 = true;
                $(".button3").addClass("disabled");;
                setTimeout(function () {
                    $(".shebeibu").show();
                    $(".button6").show();
                }, 2000);//10000


                $.ajax({
                    type: "post",
                    contentType: "application/json; charset=utf-8",//传值的方式
                    dataType: "json",
                    url: "机器视觉质检场景.aspx/Fasong",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                    data: "{type:" + 2 + "}",//username 为想问后台传的参数（这里的参数可有可无）
                    success: function (result) {
                        //alert(result.d);//result.d为后台返回的参数
                    }
                })
            });
            $(".button4").click(function (e) {
                state4 = true;
                $(".button4").addClass("disabled");;
                setTimeout(function () {
                    $(".shengchanbu").show();
                    $(".button6").show();
                }, 2000);//10000

                $.ajax({
                    type: "post",
                    contentType: "application/json; charset=utf-8",//传值的方式
                    dataType: "json",
                    url: "机器视觉质检场景.aspx/Fasong",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                    data: "{type:" + 4 + "}",//username 为想问后台传的参数（这里的参数可有可无）
                    success: function (result) {
                        //alert(result.d);//result.d为后台返回的参数
                    }
                })
            });
            $(".button5").click(function (e) {
                state5 = true;
                $(".button5").addClass("disabled");;
                setTimeout(function () {
                    $(".chanpinkaifabu").show();
                    $(".button6").show();
                }, 2000);//10000

                $.ajax({
                    type: "post",
                    contentType: "application/json; charset=utf-8",//传值的方式
                    dataType: "json",
                    url: "机器视觉质检场景.aspx/Fasong",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                    data: "{type:" + 5 + "}",//username 为想问后台传的参数（这里的参数可有可无）
                    success: function (result) {
                        //alert(result.d);//result.d为后台返回的参数
                    }
                })
            });
            $(".home").click(function (e) {
                if (btype) {
                    $(".div1").show();
                    $(".div2").hide();
                    btype = false;
                    $.ajax({
                        type: "post",
                        contentType: "application/json; charset=utf-8",//传值的方式
                        dataType: "json",
                        url: "机器视觉质检场景.aspx/Return",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                        data: "{type:" + 1 + "}",//username 为想问后台传的参数（这里的参数可有可无）
                        success: function (result) {
                            //alert(result.d);//result.d为后台返回的参数
                        }
                    })
                    //$(location).attr("href", "Main.aspx")
                    $(".bdy").innerHTML = ''
                    $(".bdy").load("Main.aspx")
                } else {
                    $.ajax({
                        type: "post",
                        contentType: "application/json; charset=utf-8",//传值的方式
                        dataType: "json",
                        url: "机器视觉质检场景.aspx/Return",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                        data: "{type:" + 1 + "}",//username 为想问后台传的参数（这里的参数可有可无）
                        success: function (result) {
                            //alert(result.d);//result.d为后台返回的参数
                        }
                    })
                    //$(location).attr("href", "Main.aspx")
                    $(".bdy").innerHTML = ''
                    $(".bdy").load("Main.aspx")

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
                        url: "地理标识模态.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                        data: "{window1:9,window2:3,operation:1}",//username 为想问后台传的参数（这里的参数可有可无）
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
                        data: "{window1:9,window2:3,operation:2}",//username 为想问后台传的参数（这里的参数可有可无）
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
                        data: "{window1:14,window2:3,operation:1}",//username 为想问后台传的参数（这里的参数可有可无）
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
                        data: "{window1:14,window2:3,operation:2}",//username 为想问后台传的参数（这里的参数可有可无）
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
                data: "{window1:3,window2:3,operation:0}",//username 为想问后台传的参数（这里的参数可有可无）
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
                    data: "{window1:3,window2:3,operation:0}",//username 为想问后台传的参数（这里的参数可有可无）
                    success: function (result) {
                        //alert(result.d);//result.d为后台返回的参数
                    }
                })
            });
            
        });


    </script>
</body>
</html>
