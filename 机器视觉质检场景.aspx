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
            margin-top: 360px;
            margin-left: 42%;
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
            color: black;
            font-size: 28px;
            position: absolute;
            margin-top: 360px;
            height: 50px;
            width: 200px;
            margin-left: 48.5%;
            padding: 0 12px;
            border: none;
            background: rgba(255,255,255,.4);
            border-radius: 4px;
        }

        .button1 {
            
        }

        .button7 {
            position: absolute;
            margin-top: 858px;
            margin-left: 885px;
            height: 58px;
            width: 250px;
            text-align: center;
            border-radius: 30px;
            border: 0;
            background: #2097FF;
            color: #fff;
            font-size: 28px;
        }

        .button2 {
            /*position: absolute;*/
            /*margin-top: 28%;*/
            /*height: 50px;*/
            /*width: 250px;*/
            /*margin-left: 13.5%;*/
            /*text-align: center;*/
            /*border-radius: 10px;*/
            /*border: 0;*/
            /*padding-top: -1px;*/
        }

        .button3 {
            /*position: absolute;*/
            /*margin-top: 28%;*/
            /*height: 50px;*/
            /*width: 250px;*/
            /*margin-left: 33.5%;*/
            /*text-align: center;*/
            /*border-radius: 10px;*/
            /*border: 0;*/
            /*padding-top: -1px;*/
        }

        .button4 {
            /*position: absolute;*/
            /*margin-top: 28%;*/
            /*height: 50px;*/
            /*width: 250px;*/
            /*margin-left: 53.5%;*/
            /*text-align: center;*/
            /*border-radius: 10px;*/
            /*border: 0;*/
            /*padding-top: -1px;*/
        }

        .button5 {
            /*position: absolute;*/
            /*margin-top: 28%;*/
            /*height: 50px;*/
            /*width: 250px;*/
            /*margin-left: 73.5%;*/
            /*text-align: center;*/
            /*border-radius: 10px;*/
            /*border: 0;*/
            /*padding-top: -1px;*/
        }

        .button_p0 {
            color: black;
            font-size: 18px;
            position: absolute;
            width: 250px;
            font-weight: 600;
            font-family: 宋体;
            text-align: center;
            margin-top: -15px;
        }


        .xndb{
        background: url(image/newimg/性能对比.png) no-repeat center center;
        height: 111px;
        width: 342px;
        position: absolute;
        margin-top: 900px;
        margin-left: 800px;
        }

        .button6 {
            /*position: absolute;*/
            /*margin-top: 35%;*/
            /*height: 50px;*/
            /*width: 250px;*/
            /*margin-left: 43.8%;*/
            /*text-align: center;*/
            /*border-radius: 10px;*/
            /*border: 0;*/
            /*color: black;*/
            /*font-size: 18px;*/
            /*position: absolute;*/
            /*width: 250px;*/
            /*font-weight: 600;*/
            /*font-family: 宋体;*/
            /*text-align: center;*/
        }

        .button_p1 {
            color: black;
            font-size: 12px;
            position: absolute;
            width: 250px;
            font-weight: 600;
            text-align: center;
            margin-top: 5px;
        }

        .label2 {
            color: white;
            font-size: 28px;
            position: absolute;
            margin-top: 23.9%;
            margin-left: 47.2%;
            border-radius: 40px;
            opacity: .8;
        }
        .completeicon{
                 background: url(image/newimg/接受数据图标.png) no-repeat center center;
            background-size: 100% 100%;
                height: 113px;
                width: 112px;
            position: absolute;
               margin-top: 428px;
               margin-left: 700px;
        }

        .department2{
             background: url(image/newimg/工艺部门.png) no-repeat center center;
                                 background-size: contain;
                                     height: 91px;
                                     width: 335px;
                                 position: absolute;
                               margin-top: 565px;
                               margin-left: 233px;
        }
         .department3{
             background: url(image/newimg/工艺部门.png) no-repeat center center;
                                 background-size: contain;
                                height: 91px;
                                width: 335px;
                                 position: absolute;
                               margin-top: 565px;
                               margin-left: 633px;
        }
         .department4{
             background: url(image/newimg/工艺部门.png) no-repeat center center;
                                 background-size: contain;
                                height: 91px;
                                width: 335px;
                                 position: absolute;
                               margin-top: 565px;
                               margin-left: 1033px;
        }
           .department5{
             background: url(image/newimg/工艺部门.png) no-repeat center center;
                                 background-size: contain;
                                height: 91px;
                                width: 335px;
                                 position: absolute;
                               margin-top: 565px;
                               margin-left: 1425px;
        }

        .label3 {
        color: white;
        font-size: 32px;
        position: absolute;
        margin-top: 458px;
        margin-left: 832px;
        border-radius: 40px;
        }

        .label3_a {
            color: #13FFEF;
        }

        .gongyibu {
            color: white;
            font-size: 28px;
            position: absolute;
            margin-top: 660px;
            margin-left: 240px;
        }

        .gongyibu_a {
            color: #13FFEF;
        }

        .shebeibu {
            color: white;
            font-size: 28px;
            position: absolute;
            margin-top: 660px;
            margin-left: 640px;
        }

        .shebeibu_a {
            color: #13FFEF;
        }

        .shengchanbu {
            color: white;
            font-size: 28px;
            position: absolute;
            margin-top: 660px;
            margin-left: 1040px;
            border-radius: 40px;
        }

        .shengchanbu_a {
            color: #13FFEF;
        }

        .chanpinkaifabu {
            color: white;
            font-size: 28px;
            position: absolute;
            margin-top: 660px;
            margin-left: 1432px;
            border-radius: 40px;
        }

        .chanpinkaifabu_a {
            color: #13FFEF;
        }

        .label4 {
            color: white;
            font-size: 22px;
            position: absolute;
            margin-top: 16%;
            margin-left: 47%;
            border-radius: 40px;
            font-weight: 600;
        }

        .label5 {
            color: white;
            font-size: 18px;
            position: absolute;
            margin-top: 19.5%;
            margin-left: 30.5%;
            border-radius: 40px;
        }

        .label6 {
            color: white;
            font-size: 18px;
            position: absolute;
            margin-top: 19.5%;
            margin-left: 48%;
            border-radius: 40px;
        }

        .label7 {
            color: white;
            font-size: 18px;
            position: absolute;
            margin-top: 19.5%;
            margin-left: 69%;
            border-radius: 40px;
        }

        .division {
            width: 1350px;
            height: 2px;
            margin-top: 21%;
            margin-left: 15%;
            position: absolute;
            background-color: white;
        }

        .division2 {
            width: 1350px;
            height: 2px;
            margin-top: 26%;
            margin-left: 15%;
            position: absolute;
            background-color: white;
        }

        .division3 {
            width: 1350px;
            height: 2px;
            margin-top: 30%;
            margin-left: 15%;
            position: absolute;
            background-color: white;
        }

        .division4 {
            width: 1350px;
            height: 2px;
            margin-top: 34%;
            margin-left: 15%;
            position: absolute;
            background-color: white;
        }

        .division5 {
            width: 1350px;
            height: 2px;
            margin-top: 38%;
            margin-left: 15%;
            position: absolute;
            background-color: white;
        }

        .quality_inspection_label {
            color: white;
            font-size: 18px;
            position: absolute;
            margin-top: 23%;
            margin-left: 28%;
            border-radius: 40px;
            font-weight: 600;
        }

        .process_label {
            color: white;
            font-size: 18px;
            position: absolute;
            margin-top: 27.5%;
            margin-left: 28%;
            border-radius: 40px;
            font-weight: 600;
        }

        .equipment_label {
            color: white;
            font-size: 18px;
            position: absolute;
            margin-top: 31.5%;
            margin-left: 28%;
            border-radius: 40px;
            font-weight: 600;
        }

        .production_label {
            color: white;
            font-size: 18px;
            position: absolute;
            margin-top: 35.5%;
            margin-left: 28%;
            border-radius: 40px;
            font-weight: 600;
        }

        .monitor_label {
            color: white;
            font-size: 18px;
            position: absolute;
            margin-top: 39.5%;
            margin-left: 28%;
            border-radius: 40px;
            font-weight: 600;
        }

        .quality_inspection_label_first {
            color: white;
            font-size: 12px;
            position: absolute;
            margin-top: 24.5%;
            margin-left: 30%;
            border-radius: 40px;
            font-weight: 600;
        }

        .perfbackground{
        background: url(image/newimg/大矩形.png) no-repeat center center;
        background-size: 100% 100%;
        height: 807px;
        width: 1450px;
        position: absolute;
        margin-top: 228px;
        margin-left: 240px;
        opacity: 0.2;
        }


        .dun1 {
            background: url(image/newimg/盾牌.png) no-repeat center center;
            background-size: 100% 100%;
                height: 37px;
                width: 35px;
            position: absolute;
            margin-top: 23%;
            margin-left: 37%;
        }

        .jiantou1 {
              background: url(image/newimg/右向箭头.png) no-repeat center center;
              background-size: 100% 100%;
              height: 10px;
              width: 134px;
              position: absolute;
              margin-top: 22.9%;
              margin-left: 40.6%;
        }

        .jiantou2 {
         background: url(image/newimg/右向箭头.png) no-repeat center center;
            background-size: 100% 100%;
               height: 10px;
    width: 134px;

            position: absolute;
            margin-top: 24%;
            margin-left: 40%;
            transform: rotate(180deg);
        }

        .chuanshu1 {
            background: url(image/newimg/连接.png) no-repeat center center;
            background-size: 100% 100%;
            height: 35px;
            width: 70px;
            position: absolute;
            margin-top: 22.8%;
            margin-left: 48%;
        }

        .jiantou3 {
         background: url(image/newimg/右向箭头.png) no-repeat center center;
            background-size: 100% 100%;
               height: 10px;
    width: 134px;

            position: absolute;
            margin-top: 23%;
            margin-left: 52%;
        }

        .jiantou4 {
         background: url(image/newimg/右向箭头.png) no-repeat center center;
            background-size: 100% 100%;
               height: 10px;
    width: 134px;

            position: absolute;
            margin-top: 24%;
            margin-left: 52%;
            transform: rotate(180deg);
        }

        .fuwuqi1 {
            background: url(image/newimg/服务器.png) no-repeat center center;
            background-size: 100% 100%;
            height: 36px;
                width: 46px;
            position: absolute;
            margin-top: 23%;
            margin-left: 60%;
        }

        .time1 {
            background: url(image/newimg/方块.png) no-repeat center center;
            background-size: 100% 100%;
            height: 30px;
            width: 300px;
            position: absolute;
            margin-top: 23.5%;
            margin-left: 65%;
            opacity: 0.9;
            border-radius: 2px;
        }




        .dun2 {
            background: url(image/newimg/盾牌.png) no-repeat center center;
            background-size: 100% 100%;
                height: 37px;
                width: 35px;
            position: absolute;
            margin-top: 27%;
            margin-left: 37%;
        }

        .jiantou5 {
         background: url(image/newimg/右向箭头.png) no-repeat center center;
            background-size: 100% 100%;
               height: 10px;
    width: 134px;

            position: absolute;
            margin-top: 27%;
            margin-left: 39.7%;
        }

        .jiantou6 {
         background: url(image/newimg/右向箭头.png) no-repeat center center;
            background-size: 100% 100%;
               height: 10px;
    width: 134px;

            position: absolute;
            margin-top: 28%;
            margin-left: 40%;
            transform: rotate(180deg);
        }

        .chuanshu2 {
            background: url(image/newimg/连接.png) no-repeat center center;
            background-size: 100% 100%;
            height: 35px;
            width: 70px;
            position: absolute;
            margin-top: 26.8%;
            margin-left: 48%;
        }

        .jiantou7 {
            background: url(image/newimg/灰色箭头.png) no-repeat center center;
            background-size: 100% 100%;
               height: 10px;
    width: 134px;

            position: absolute;
            margin-top: 27%;
            margin-left: 51.7%;
        }

        .jiantou8 {
            background: url(image/newimg/灰色箭头.png) no-repeat center center;
            background-size: 100% 100%;
               height: 10px;
    width: 134px;

            position: absolute;
            margin-top: 28%;
            margin-left: 52%;
            transform: rotate(180deg);
        }

        .fuwuqi2 {
            background: url(image/newimg/服务器.png) no-repeat center center;
            background-size: 100% 100%;
           height: 36px;
               width: 46px;
            position: absolute;
            margin-top: 27%;
            margin-left: 60%;
        }

        .time2 {
            background: url(image/newimg/方块.png) no-repeat center center;
            background-size: 100% 100%;
            height: 30px;
            width: 140px;
            position: absolute;
            margin-top: 27.5%;
            margin-left: 65%;
            opacity: 0.9;
            border-radius: 2px;
        }


        .dun3 {
            background: url(image/newimg/盾牌.png) no-repeat center center;
            background-size: 100% 100%;
                height: 37px;
                width: 35px;
            position: absolute;
            margin-top: 31%;
            margin-left: 37%;
        }

        .dun4 {
            background: url(image/newimg/盾牌.png) no-repeat center center;
            background-size: 100% 100%;
                height: 37px;
                width: 35px;
            position: absolute;
            margin-top: 35%;
            margin-left: 37%;
        }

        .dun5 {
            background: url(image/newimg/盾牌.png) no-repeat center center;
            background-size: 100% 100%;
                height: 37px;
                width: 35px;
            position: absolute;
            margin-top: 39%;
            margin-left: 37%;
        }

        .jiantou9 {
         background: url(image/newimg/右向箭头.png) no-repeat center center;
            background-size: 100% 100%;
               height: 10px;
    width: 134px;

            position: absolute;
            margin-top: 31%;
            margin-left: 39.7%;
        }

        .jiantou10 {
         background: url(image/newimg/右向箭头.png) no-repeat center center;
            background-size: 100% 100%;
               height: 10px;
    width: 134px;

            position: absolute;
            margin-top: 32%;
            margin-left: 40%;
            transform: rotate(180deg);
        }

        .chuanshu3 {
            background: url(image/newimg/连接.png) no-repeat center center;
            background-size: 100% 100%;
            height: 35px;
            width: 70px;
            position: absolute;
            margin-top: 30.8%;
            margin-left: 48%;
        }

        .jiantou11 {
            background: url(image/newimg/灰色箭头.png) no-repeat center center;
            background-size: 100% 100%;
               height: 10px;
    width: 134px;

            position: absolute;
            margin-top: 31%;
            margin-left: 51.7%;
        }

        .jiantou12 {
            background: url(image/newimg/灰色箭头.png) no-repeat center center;
            background-size: 100% 100%;
               height: 10px;
    width: 134px;

            position: absolute;
            margin-top: 32%;
            margin-left: 52%;
            transform: rotate(180deg);
        }

        .jiantou13 {
         background: url(image/newimg/右向箭头.png) no-repeat center center;
            background-size: 100% 100%;
               height: 10px;
    width: 134px;

            position: absolute;
            margin-top: 35%;
            margin-left: 39.7%;
        }

        .jiantou14 {
         background: url(image/newimg/右向箭头.png) no-repeat center center;
            background-size: 100% 100%;
               height: 10px;
    width: 134px;

            position: absolute;
            margin-top: 36%;
            margin-left: 40%;
            transform: rotate(180deg);
        }

        .chuanshu4 {
            background: url(image/newimg/连接.png) no-repeat center center;
            background-size: 100% 100%;
            height: 35px;
            width: 70px;
            position: absolute;
            margin-top: 34.8%;
            margin-left: 48%;
        }

        .jiantou15 {
            background: url(image/newimg/灰色箭头.png) no-repeat center center;
            background-size: 100% 100%;
               height: 10px;
    width: 134px;

            position: absolute;
            margin-top: 35%;
            margin-left: 51.7%;
        }

        .jiantou16 {
            background: url(image/newimg/灰色箭头.png) no-repeat center center;
            background-size: 100% 100%;
               height: 10px;
    width: 134px;

            position: absolute;
            margin-top: 36%;
            margin-left: 52%;
            transform: rotate(180deg);
        }

        .jiantou17 {
         background: url(image/newimg/右向箭头.png) no-repeat center center;
            background-size: 100% 100%;
               height: 10px;
    width: 134px;

            position: absolute;
            margin-top: 39%;
            margin-left: 39.7%;
        }

        .jiantou18 {
         background: url(image/newimg/右向箭头.png) no-repeat center center;
            background-size: 100% 100%;
               height: 10px;
    width: 134px;

            position: absolute;
            margin-top: 40%;
            margin-left: 40%;
            transform: rotate(180deg);
        }

        .chuanshu5 {
            background: url(image/newimg/连接.png) no-repeat center center;
            background-size: 100% 100%;
            height: 35px;
            width: 70px;
            position: absolute;
            margin-top: 38.8%;
            margin-left: 48%;
        }

        .jiantou19 {
            background: url(image/newimg/灰色箭头.png) no-repeat center center;
            background-size: 100% 100%;
               height: 10px;
    width: 134px;

            position: absolute;
            margin-top: 39%;
            margin-left: 51.7%;
        }

        .jiantou20 {
            background: url(image/newimg/灰色箭头.png) no-repeat center center;
            background-size: 100% 100%;
               height: 10px;
    width: 134px;

            position: absolute;
            margin-top: 40%;
            margin-left: 52%;
            transform: rotate(180deg);
        }

        .fuwuqi3 {
            background: url(image/newimg/服务器.png) no-repeat center center;
            background-size: 100% 100%;
            height: 36px;
                width: 46px;
            position: absolute;
            margin-top: 31%;
            margin-left: 60%;
        }

        .time3 {
            background: url(image/newimg/方块.png) no-repeat center center;
            background-size: 100% 100%;
            height: 30px;
            width: 140px;
            position: absolute;
            margin-top: 31.5%;
            margin-left: 65%;
            opacity: 0.9;
            border-radius: 2px;
        }

        .fuwuqi4 {
            background: url(image/newimg/服务器.png) no-repeat center center;
            background-size: 100% 100%;
            height: 36px;
                width: 46px;
            position: absolute;
            margin-top: 35%;
            margin-left: 60%;
        }

        .time4 {
            background: url(image/newimg/方块.png) no-repeat center center;
            background-size: 100% 100%;
            height: 30px;
            width: 140px;
            position: absolute;
            margin-top: 35.5%;
            margin-left: 65%;
            opacity: 0.9;
            border-radius: 2px;
        }

        .fuwuqi5 {
            background: url(image/newimg/服务器.png) no-repeat center center;
            background-size: 100% 100%;
            height: 36px;
                width: 46px;
            position: absolute;
            margin-top: 39%;
            margin-left: 60%;
        }

        .time5 {
            background: url(image/newimg/方块.png) no-repeat center center;
            background-size: 100% 100%;
            height: 30px;
            width: 140px;
            position: absolute;
            margin-top: 39.5%;
            margin-left: 65%;
            opacity: 0.9;
            border-radius: 2px;
        }

        .dun3 {
            background: url(image/newimg/盾牌.png) no-repeat center center;
            background-size: 100% 100%;
                height: 37px;
                width: 35px;
            position: absolute;
            margin-top: 31%;
            margin-left: 37%;
        }

        .jiantou9 {
         background: url(image/newimg/右向箭头.png) no-repeat center center;
            background-size: 100% 100%;
               height: 10px;
    width: 134px;

            position: absolute;
            margin-top: 31%;
            margin-left: 39.7%;
        }

        .jiantou10 {
         background: url(image/newimg/右向箭头.png) no-repeat center center;
            background-size: 100% 100%;
               height: 10px;
    width: 134px;

            position: absolute;
            margin-top: 32%;
            margin-left: 40%;
            transform: rotate(180deg);
        }

        .chuanshu3 {
            background: url(image/newimg/连接.png) no-repeat center center;
            background-size: 100% 100%;
            height: 35px;
            width: 70px;
            position: absolute;
            margin-top: 31.8%;
            margin-left: 48%;
        }

        .jiantou11 {
            background: url(image/newimg/灰色箭头.png) no-repeat center center;
            background-size: 100% 100%;
               height: 10px;
    width: 134px;

            position: absolute;
            margin-top: 31%;
            margin-left: 51.7%;
        }

        .jiantou12 {
            background: url(image/newimg/灰色箭头.png) no-repeat center center;
            background-size: 100% 100%;
               height: 10px;
    width: 134px;

            position: absolute;
            margin-top: 32%;
            margin-left: 52%;
            transform: rotate(180deg);
        }

        .fuwuqi3 {
            background: url(image/newimg/服务器.png) no-repeat center center;
            background-size: 100% 100%;
            height: 36px;
                width: 46px;
            position: absolute;
            margin-top: 31%;
            margin-left: 60%;
        }

        .time3 {
            background: url(image/newimg/方块.png) no-repeat center center;
            background-size: 100% 100%;
            height: 30px;
            width: 140px;
            position: absolute;
            margin-top: 31.5%;
            margin-left: 65%;
            opacity: 0.9;
            border-radius: 2px;
        }

        .go {
            background: url(image/newimg/首次获取数据.png) no-repeat center center;
            background-size: contain;
            position: absolute;
            top: 568px;
            left: 732px;
            height: 116px;
            width: 472px;
            color: white;
            font-size: 18px;
            border: 0;
        }

        .return2 {
            margin-top: 13%;
            margin-left: 82%;
            height: 50px;
            width: 50px;
            position: absolute;
            font-size: 12px;
            background: url(机器视觉质检/关闭.png) no-repeat center center;
            background-size: 100% 100%;
            border: 0;
            line-height: 15px;
            padding-left: 38px;
            padding-top: 10px;
            font-weight: 600;
            color: white;
        }

        .image {
            margin-top: 13%;
            margin-left: 15%;
            height: 800px;
            width: 1340px;
            background-repeat: no-repeat;
            background-position: center;
            position: absolute;
            background-size: 100% 100%;
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
        <div class="div1">
     <label class="label1">文件名:</label>
        <input type="text" value="纪念币1" class="input" maxlength="8" />
<!--            <button class="button1">-->
<!--                <p class="button_p0">质检部获取数据</p>-->
<!--                <p class="button_p1">（首次）</p>-->
<!--            </button>-->
 <button class="go button1"></button>
             <div class="completeicon"></div>
            <label class="label2">数据传输中……</label>
            <label class="label3">质检部已接收，
                <a href="#" class="label3_a">显示数据</a>
            </label>
            <div class="jieduan2">
            <div class="department2 button2"></div>
<!--                <button class="button2">-->
<!--                    <p class="button_p0">市场部获取数据</p>-->
<!--                    <p class="button_p1">（再次）</p>-->
<!--                </button>-->
            <div class="department3 button3"></div>

<!--                <button class="button3">-->
<!--                    <p class="button_p0">运营部获取数据</p>-->
<!--                    <p class="button_p1">（再次）</p>-->
<!--                </button>-->

            <div class="department4 button4"></div>

<!--                <button class="button4">-->
<!--                    <p class="button_p0">产品部获取数据</p>-->
<!--                    <p class="button_p1">（再次）</p>-->
<!--                </button>-->

            <div class="department5 button5"></div>

<!--                <button class="button5">-->
<!--                    <p class="button_p0">监控部获取数据</p>-->
<!--                    <p class="button_p1">（再次）</p>-->
<!--                </button>-->
                <label class="gongyibu">工艺部已接收，
                    <a href="#" class="gongyibu_a">显示数据</a></label>
                <label class="shebeibu">设备部已接收，
                    <a href="#" class="shebeibu_a">显示数据</a>
                </label>
                <label class="shengchanbu">生产部已接收，
                    <a href="#" class="shengchanbu_a">显示数据</a>
                </label>
                <label class="chanpinkaifabu">产品部已接收，
                    <a href="#" class="chanpinkaifabu_a">显示数据</a>
                </label>
<!--                <button class="button6">性能对比</button>-->
                <div class="xndb button6"></div>

            </div>
        </div>
        <div class="div2">
             <div class="perfbackground"></div>
            <label class="label4">性&nbsp;能&nbsp;对&nbsp;比</label>
            <label class="label5">部门</label>
            <label class="label6">传输路径</label>
            <label class="label7">用户响应时间</label>
            <div class="division"></div>
            <div class="quality_inspection">
                <label class="quality_inspection_label">质检部获取数据</label>
                <label class="quality_inspection_label_first">（首次）</label>
                <div class="dun1"></div>
                <div class="jiantou1"></div>
                <div class="jiantou2"></div>
                <div class="chuanshu1"></div>
                <div class="jiantou3"></div>
                <div class="jiantou4"></div>
                <div class="fuwuqi1"></div>
                <div class="time1"></div>

            </div>

            <div class="division2"></div>

            <div class="process">
                <label class="process_label">市场部获取数据</label>
                <div class="dun2"></div>
                <div class="jiantou5"></div>
                <div class="jiantou6"></div>
                <div class="chuanshu2"></div>
                <div class="jiantou7"></div>
                <div class="jiantou8"></div>
                <div class="fuwuqi2"></div>
                <div class="time2"></div>
            </div>
            <div class="division3"></div>

            <div class="equipment">
                <label class="equipment_label">运营部获取数据</label>
                <div class="dun3"></div>
                <div class="jiantou9"></div>
                <div class="jiantou10"></div>
                <div class="chuanshu3"></div>
                <div class="jiantou11"></div>
                <div class="jiantou12"></div>
                <div class="fuwuqi3"></div>
                <div class="time3"></div>
            </div>
            <div class="division4"></div>

            <div class="production">
                <label class="production_label">产品部获取数据</label>
                <div class="dun4"></div>
                <div class="jiantou13"></div>
                <div class="jiantou14"></div>
                <div class="chuanshu4"></div>
                <div class="jiantou15"></div>
                <div class="jiantou16"></div>
                <div class="fuwuqi4"></div>
                <div class="time4"></div>
            </div>
            <div class="division5"></div>

            <div class="monitor">
                <label class="monitor_label">监控部获取数据</label>
                <div class="dun5"></div>
                <div class="jiantou17"></div>
                <div class="jiantou18"></div>
                <div class="chuanshu5"></div>
                <div class="jiantou19"></div>
                <div class="jiantou20"></div>
                <div class="fuwuqi5"></div>
                <div class="time5"></div>
            </div>
            <button class="button7">返回</button>
        </div>
        <button class="full"></button>
        <image class="image"></image>
        <button class="return2"></button>

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
                var src = '机器视觉质检/2.jpg';
                $(".image").css('background-image', 'url(' + src + ')');
            });
            $(".shebeibu_a").click(function (e) {
                $(".image").show(); $(".return").hide(); $(".return2").show();
                var src = '机器视觉质检/3.jpg';
                $(".image").css('background-image', 'url(' + src + ')');
            });
            $(".shengchanbu_a").click(function (e) {
                $(".image").show(); $(".return").hide(); $(".return2").show();
                var src = '机器视觉质检/4.jpg';
                $(".image").css('background-image', 'url(' + src + ')');
            });
            $(".chanpinkaifabu_a").click(function (e) {
                $(".image").show(); $(".return").hide(); $(".return2").show();
                var src = '机器视觉质检/5.jpg';
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
                $(".button1 .button_p0").css("color", "gray");
                $(".button1 .button_p1").css("color", "gray");
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
                $(".button2 .button_p0").css("color", "gray");
                $(".button2 .button_p1").css("color", "gray");
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
                $(".button3 .button_p0").css("color", "gray");
                $(".button3 .button_p1").css("color", "gray");
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
                $(".button4 .button_p0").css("color", "gray");
                $(".button4 .button_p1").css("color", "gray");
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
                $(".button5 .button_p0").css("color", "gray");
                $(".button5 .button_p1").css("color", "gray");
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
                  //                 $(location).attr("href", "Main.aspx")
                                    $(".bdy").innerHTML=''
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
