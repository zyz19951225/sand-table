<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="机器视觉质检场景.aspx.cs" Inherits="之江.机器视觉质检场景" %>

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
                        background: url(image/newimg/机器视觉质检场景.png) no-repeat center center;
                        background-size: 100% 100%;
                        height: 77px;
                        width: 721px;
                        position: absolute;
                        top: 2%;
                        left: 0;
                        right: 0;
                        margin: auto;
        }
            .label1 {
                      color: white;
                      font-size: 24px;
                      position: absolute;
                      margin-top: 15.2%;
                      margin-left: 40.5%;
                      border-radius: 40px;
                      font-weight: 600;
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

       .input {
                    color: black;
                    font-size: 20px;
                    position: absolute;
                    margin-top: 15.2%;
                    height: 27.2px;
                    width: 200px;
                    margin-left: 48.5%;
                    font-weight: 400;
              }

        .button1 {
            position: absolute;
            margin-top: 21%;
            height: 50px;
            width: 250px;
            margin-left: 43.8%;
            text-align: center;
            border-radius: 10px;
            border: 0;
            padding-top: -1px;
        }

        .button7 {
            position: absolute;
            margin-top: 40%;
            height: 50px;
            width: 250px;
            margin-left: 43.8%;
            text-align: center;
            border-radius: 10px;
            border: 0;
            padding-top: -1px;
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

        .button_p7 {
            color: black;
            font-size: 18px;
            position: absolute;
            width: 250px;
            font-weight: 600;
            font-family: 宋体;
            text-align: center;
            margin-top: -9px;
        }

        .xndb{
        background: url(image/newimg/性能对比.png) no-repeat center center;
        background-size: 100% 100%;
        height: 111px;
        width: 342px;
        position: absolute;
        margin-top: 728px;
        margin-left: 785px;
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
            font-family: 宋体;
            text-align: center;
            margin-top: 5px;
        }

        .label2 {
            color: white;
            font-size: 18px;
            position: absolute;
            margin-top: 23.9%;
            margin-left: 47.2%;
            border-radius: 40px;
            font-weight: 600;
        }
        .completeicon{
                 background: url(image/newimg/接受数据图标.png) no-repeat center center;
            background-size: 100% 100%;
                height: 113px;
                width: 112px;
            position: absolute;
               margin-top: 428px;
               margin-left: 780px;
        }

        .department2{
             background: url(image/newimg/工艺部门.png) no-repeat center center;
                                 background-size: 100% 100%;
                                     height: 75px;
                                     width: 317px;
                                 position: absolute;
                               margin-top: 565px;
                               margin-left: 233px;
        }
         .department3{
             background: url(image/newimg/工艺部门.png) no-repeat center center;
                                 background-size: 100% 100%;
                                     height: 75px;
                                     width: 317px;
                                 position: absolute;
                               margin-top: 565px;
                               margin-left: 633px;
        }
         .department4{
             background: url(image/newimg/工艺部门.png) no-repeat center center;
                                 background-size: 100% 100%;
                                     height: 75px;
                                     width: 317px;
                                 position: absolute;
                               margin-top: 565px;
                               margin-left: 1033px;
        }
           .department5{
             background: url(image/newimg/工艺部门.png) no-repeat center center;
                                 background-size: 100% 100%;
                                     height: 75px;
                                     width: 317px;
                                 position: absolute;
                               margin-top: 565px;
                               margin-left: 1425px;
        }

        .label3 {
    color: white;
        font-size: 23px;
        position: absolute;
        margin-top: 468px;
        margin-left: 892px;
        border-radius: 40px;
        font-weight: 600;
        }

        .label3_a {
            color: #13FFEF;
        }

        .gongyibu {
            color: white;
            font-size: 18px;
            position: absolute;
            margin-top: 34%;
            margin-left: 15%;
            border-radius: 40px;
            font-weight: 600;
        }

        .gongyibu_a {
            color: #13FFEF;
        }

        .shebeibu {
            color: white;
            font-size: 18px;
            position: absolute;
            margin-top: 34%;
            margin-left: 35%;
            border-radius: 40px;
            font-weight: 600;
        }

        .shebeibu_a {
            color: #13FFEF;
        }

        .shengchanbu {
            color: white;
            font-size: 18px;
            position: absolute;
            margin-top: 34%;
            margin-left: 55%;
            border-radius: 40px;
            font-weight: 600;
        }

        .shengchanbu_a {
            color: #13FFEF;
        }

        .chanpinkaifabu {
            color: white;
            font-size: 18px;
            position: absolute;
            margin-top: 34%;
            margin-left: 74%;
            border-radius: 40px;
            font-weight: 600;
        }

        .chanpinkaifabu_a {
            color: #13FFEF;
        }

        .label4 {
            color: white;
            font-size: 22px;
            position: absolute;
            margin-top: 13%;
            margin-left: 47%;
            border-radius: 40px;
            font-weight: 600;
        }

        .label5 {
            color: white;
            font-size: 18px;
            position: absolute;
            margin-top: 15.5%;
            margin-left: 30.5%;
            border-radius: 40px;
            font-weight: 600;
        }

        .label6 {
            color: white;
            font-size: 18px;
            position: absolute;
            margin-top: 15.5%;
            margin-left: 48%;
            border-radius: 40px;
            font-weight: 600;
        }

        .label7 {
            color: white;
            font-size: 18px;
            position: absolute;
            margin-top: 15.5%;
            margin-left: 69%;
            border-radius: 40px;
            font-weight: 600;
        }

        .division {
            width: 1350px;
            height: 2px;
            margin-top: 17%;
            margin-left: 15%;
            position: absolute;
            background-color: white;
        }

        .division2 {
            width: 1350px;
            height: 2px;
            margin-top: 22%;
            margin-left: 15%;
            position: absolute;
            background-color: white;
        }

        .division3 {
            width: 1350px;
            height: 2px;
            margin-top: 26%;
            margin-left: 15%;
            position: absolute;
            background-color: white;
        }

        .division4 {
            width: 1350px;
            height: 2px;
            margin-top: 30%;
            margin-left: 15%;
            position: absolute;
            background-color: white;
        }

        .division5 {
            width: 1350px;
            height: 2px;
            margin-top: 34%;
            margin-left: 15%;
            position: absolute;
            background-color: white;
        }

        .quality_inspection_label {
            color: white;
            font-size: 18px;
            position: absolute;
            margin-top: 19%;
            margin-left: 28%;
            border-radius: 40px;
            font-weight: 600;
        }

        .process_label {
            color: white;
            font-size: 18px;
            position: absolute;
            margin-top: 23.5%;
            margin-left: 28%;
            border-radius: 40px;
            font-weight: 600;
        }

        .equipment_label {
            color: white;
            font-size: 18px;
            position: absolute;
            margin-top: 27.5%;
            margin-left: 28%;
            border-radius: 40px;
            font-weight: 600;
        }

        .production_label {
            color: white;
            font-size: 18px;
            position: absolute;
            margin-top: 31.5%;
            margin-left: 28%;
            border-radius: 40px;
            font-weight: 600;
        }

        .monitor_label {
            color: white;
            font-size: 18px;
            position: absolute;
            margin-top: 35.5%;
            margin-left: 28%;
            border-radius: 40px;
            font-weight: 600;
        }

        .quality_inspection_label_first {
            color: white;
            font-size: 12px;
            position: absolute;
            margin-top: 20.5%;
            margin-left: 30%;
            border-radius: 40px;
            font-weight: 600;
        }


        .dun1 {
            background: url(image/盾牌.png) no-repeat center center;
            background-size: 100% 100%;
            height: 50px;
            width: 50px;
            position: absolute;
            margin-top: 19%;
            margin-left: 37%;
        }

        .jiantou1 {
            background: url(image/箭头4.png) no-repeat center center;
            background-size: 100% 100%;
            height: 30px;
            width: 150px;
            position: absolute;
            margin-top: 19%;
            margin-left: 39.7%;
        }

        .jiantou2 {
            background: url(image/箭头4.png) no-repeat center center;
            background-size: 100% 100%;
            height: 30px;
            width: 150px;
            position: absolute;
            margin-top: 20%;
            margin-left: 40%;
            transform: rotate(180deg);
        }

        .chuanshu1 {
            background: url(image/连接.png) no-repeat center center;
            background-size: 100% 100%;
            height: 70px;
            width: 70px;
            position: absolute;
            margin-top: 18.5%;
            margin-left: 48%;
        }

        .jiantou3 {
            background: url(image/箭头4.png) no-repeat center center;
            background-size: 100% 100%;
            height: 30px;
            width: 150px;
            position: absolute;
            margin-top: 19%;
            margin-left: 51.7%;
        }

        .jiantou4 {
            background: url(image/箭头4.png) no-repeat center center;
            background-size: 100% 100%;
            height: 30px;
            width: 150px;
            position: absolute;
            margin-top: 20%;
            margin-left: 52%;
            transform: rotate(180deg);
        }

        .fuwuqi1 {
            background: url(image/服务器.png) no-repeat center center;
            background-size: 100% 100%;
            height: 50px;
            width: 50px;
            position: absolute;
            margin-top: 19%;
            margin-left: 60%;
        }

        .time1 {
            background: url(image/方块.png) no-repeat center center;
            background-size: 100% 100%;
            height: 30px;
            width: 300px;
            position: absolute;
            margin-top: 19.5%;
            margin-left: 65%;
            opacity: 0.9;
            border-radius: 2px;
        }




        .dun2 {
            background: url(image/盾牌.png) no-repeat center center;
            background-size: 100% 100%;
            height: 50px;
            width: 50px;
            position: absolute;
            margin-top: 23%;
            margin-left: 37%;
        }

        .jiantou5 {
            background: url(image/箭头4.png) no-repeat center center;
            background-size: 100% 100%;
            height: 30px;
            width: 150px;
            position: absolute;
            margin-top: 23%;
            margin-left: 39.7%;
        }

        .jiantou6 {
            background: url(image/箭头4.png) no-repeat center center;
            background-size: 100% 100%;
            height: 30px;
            width: 150px;
            position: absolute;
            margin-top: 24%;
            margin-left: 40%;
            transform: rotate(180deg);
        }

        .chuanshu2 {
            background: url(image/连接.png) no-repeat center center;
            background-size: 100% 100%;
            height: 70px;
            width: 70px;
            position: absolute;
            margin-top: 22.5%;
            margin-left: 48%;
        }

        .jiantou7 {
            background: url(image/箭头3.png) no-repeat center center;
            background-size: 100% 100%;
            height: 30px;
            width: 150px;
            position: absolute;
            margin-top: 23%;
            margin-left: 51.7%;
        }

        .jiantou8 {
            background: url(image/箭头3.png) no-repeat center center;
            background-size: 100% 100%;
            height: 30px;
            width: 150px;
            position: absolute;
            margin-top: 24%;
            margin-left: 52%;
            transform: rotate(180deg);
        }

        .fuwuqi2 {
            background: url(image/服务器.png) no-repeat center center;
            background-size: 100% 100%;
            height: 50px;
            width: 50px;
            position: absolute;
            margin-top: 23%;
            margin-left: 60%;
        }

        .time2 {
            background: url(image/方块.png) no-repeat center center;
            background-size: 100% 100%;
            height: 30px;
            width: 140px;
            position: absolute;
            margin-top: 23.5%;
            margin-left: 65%;
            opacity: 0.9;
            border-radius: 2px;
        }


        .dun3 {
            background: url(image/盾牌.png) no-repeat center center;
            background-size: 100% 100%;
            height: 50px;
            width: 50px;
            position: absolute;
            margin-top: 27%;
            margin-left: 37%;
        }

        .dun4 {
            background: url(image/盾牌.png) no-repeat center center;
            background-size: 100% 100%;
            height: 50px;
            width: 50px;
            position: absolute;
            margin-top: 31%;
            margin-left: 37%;
        }

        .dun5 {
            background: url(image/盾牌.png) no-repeat center center;
            background-size: 100% 100%;
            height: 50px;
            width: 50px;
            position: absolute;
            margin-top: 35%;
            margin-left: 37%;
        }

        .jiantou9 {
            background: url(image/箭头4.png) no-repeat center center;
            background-size: 100% 100%;
            height: 30px;
            width: 150px;
            position: absolute;
            margin-top: 27%;
            margin-left: 39.7%;
        }

        .jiantou10 {
            background: url(image/箭头4.png) no-repeat center center;
            background-size: 100% 100%;
            height: 30px;
            width: 150px;
            position: absolute;
            margin-top: 28%;
            margin-left: 40%;
            transform: rotate(180deg);
        }

        .chuanshu3 {
            background: url(image/连接.png) no-repeat center center;
            background-size: 100% 100%;
            height: 70px;
            width: 70px;
            position: absolute;
            margin-top: 26.5%;
            margin-left: 48%;
        }

        .jiantou11 {
            background: url(image/箭头3.png) no-repeat center center;
            background-size: 100% 100%;
            height: 30px;
            width: 150px;
            position: absolute;
            margin-top: 27%;
            margin-left: 51.7%;
        }

        .jiantou12 {
            background: url(image/箭头3.png) no-repeat center center;
            background-size: 100% 100%;
            height: 30px;
            width: 150px;
            position: absolute;
            margin-top: 28%;
            margin-left: 52%;
            transform: rotate(180deg);
        }

        .jiantou13 {
            background: url(image/箭头4.png) no-repeat center center;
            background-size: 100% 100%;
            height: 30px;
            width: 150px;
            position: absolute;
            margin-top: 31%;
            margin-left: 39.7%;
        }

        .jiantou14 {
            background: url(image/箭头4.png) no-repeat center center;
            background-size: 100% 100%;
            height: 30px;
            width: 150px;
            position: absolute;
            margin-top: 32%;
            margin-left: 40%;
            transform: rotate(180deg);
        }

        .chuanshu4 {
            background: url(image/连接.png) no-repeat center center;
            background-size: 100% 100%;
            height: 70px;
            width: 70px;
            position: absolute;
            margin-top: 30.5%;
            margin-left: 48%;
        }

        .jiantou15 {
            background: url(image/箭头3.png) no-repeat center center;
            background-size: 100% 100%;
            height: 30px;
            width: 150px;
            position: absolute;
            margin-top: 31%;
            margin-left: 51.7%;
        }

        .jiantou16 {
            background: url(image/箭头3.png) no-repeat center center;
            background-size: 100% 100%;
            height: 30px;
            width: 150px;
            position: absolute;
            margin-top: 32%;
            margin-left: 52%;
            transform: rotate(180deg);
        }

        .jiantou17 {
            background: url(image/箭头4.png) no-repeat center center;
            background-size: 100% 100%;
            height: 30px;
            width: 150px;
            position: absolute;
            margin-top: 35%;
            margin-left: 39.7%;
        }

        .jiantou18 {
            background: url(image/箭头4.png) no-repeat center center;
            background-size: 100% 100%;
            height: 30px;
            width: 150px;
            position: absolute;
            margin-top: 36%;
            margin-left: 40%;
            transform: rotate(180deg);
        }

        .chuanshu5 {
            background: url(image/连接.png) no-repeat center center;
            background-size: 100% 100%;
            height: 70px;
            width: 70px;
            position: absolute;
            margin-top: 34.5%;
            margin-left: 48%;
        }

        .jiantou19 {
            background: url(image/箭头3.png) no-repeat center center;
            background-size: 100% 100%;
            height: 30px;
            width: 150px;
            position: absolute;
            margin-top: 35%;
            margin-left: 51.7%;
        }

        .jiantou20 {
            background: url(image/箭头3.png) no-repeat center center;
            background-size: 100% 100%;
            height: 30px;
            width: 150px;
            position: absolute;
            margin-top: 36%;
            margin-left: 52%;
            transform: rotate(180deg);
        }

        .fuwuqi3 {
            background: url(image/服务器.png) no-repeat center center;
            background-size: 100% 100%;
            height: 50px;
            width: 50px;
            position: absolute;
            margin-top: 27%;
            margin-left: 60%;
        }

        .time3 {
            background: url(image/方块.png) no-repeat center center;
            background-size: 100% 100%;
            height: 30px;
            width: 140px;
            position: absolute;
            margin-top: 27.5%;
            margin-left: 65%;
            opacity: 0.9;
            border-radius: 2px;
        }

        .fuwuqi4 {
            background: url(image/服务器.png) no-repeat center center;
            background-size: 100% 100%;
            height: 50px;
            width: 50px;
            position: absolute;
            margin-top: 31%;
            margin-left: 60%;
        }

        .time4 {
            background: url(image/方块.png) no-repeat center center;
            background-size: 100% 100%;
            height: 30px;
            width: 140px;
            position: absolute;
            margin-top: 31.5%;
            margin-left: 65%;
            opacity: 0.9;
            border-radius: 2px;
        }

        .fuwuqi5 {
            background: url(image/服务器.png) no-repeat center center;
            background-size: 100% 100%;
            height: 50px;
            width: 50px;
            position: absolute;
            margin-top: 35%;
            margin-left: 60%;
        }

        .time5 {
            background: url(image/方块.png) no-repeat center center;
            background-size: 100% 100%;
            height: 30px;
            width: 140px;
            position: absolute;
            margin-top: 35.5%;
            margin-left: 65%;
            opacity: 0.9;
            border-radius: 2px;
        }

        .dun3 {
            background: url(image/盾牌.png) no-repeat center center;
            background-size: 100% 100%;
            height: 50px;
            width: 50px;
            position: absolute;
            margin-top: 27%;
            margin-left: 37%;
        }

        .jiantou9 {
            background: url(image/箭头4.png) no-repeat center center;
            background-size: 100% 100%;
            height: 30px;
            width: 150px;
            position: absolute;
            margin-top: 27%;
            margin-left: 39.7%;
        }

        .jiantou10 {
            background: url(image/箭头4.png) no-repeat center center;
            background-size: 100% 100%;
            height: 30px;
            width: 150px;
            position: absolute;
            margin-top: 28%;
            margin-left: 40%;
            transform: rotate(180deg);
        }

        .chuanshu3 {
            background: url(image/连接.png) no-repeat center center;
            background-size: 100% 100%;
            height: 70px;
            width: 70px;
            position: absolute;
            margin-top: 26.5%;
            margin-left: 48%;
        }

        .jiantou11 {
            background: url(image/箭头3.png) no-repeat center center;
            background-size: 100% 100%;
            height: 30px;
            width: 150px;
            position: absolute;
            margin-top: 27%;
            margin-left: 51.7%;
        }

        .jiantou12 {
            background: url(image/箭头3.png) no-repeat center center;
            background-size: 100% 100%;
            height: 30px;
            width: 150px;
            position: absolute;
            margin-top: 28%;
            margin-left: 52%;
            transform: rotate(180deg);
        }

        .fuwuqi3 {
            background: url(image/服务器.png) no-repeat center center;
            background-size: 100% 100%;
            height: 50px;
            width: 50px;
            position: absolute;
            margin-top: 27%;
            margin-left: 60%;
        }

        .time3 {
            background: url(image/方块.png) no-repeat center center;
            background-size: 100% 100%;
            height: 30px;
            width: 140px;
            position: absolute;
            margin-top: 27.5%;
            margin-left: 65%;
            opacity: 0.9;
            border-radius: 2px;
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
               .go {
                     background: url(image/newimg/首次获取数据.png) no-repeat center center;
                     background-size: 100% 100%;
                     position: absolute;
                     margin-top: 353px;
                     margin-left: 733px;
                     height: 98px;
                     width: 454px;
                     color: white;
                     font-size: 18px;
                     border: 0;
                     font-weight: 600;
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
        <div v-bind:class="{ 'background': isActive}"></div>
        <div v-bind:class="{ 'occlusion': isActive}"></div>

        <div v-bind:class="{ 'title': isActive }"></div>
        <div v-bind:class="{ 'title': isActive }"></div>

        <div v-bind:class="{ 'border': isActive }"></div>
        <div v-bind:class="{ 'border2': isActive }"></div>
        <div v-bind:class="{ 'border3': isActive }"></div>
        <div v-bind:class="{ 'border4': isActive }"></div>
        <div v-bind:class="{ 'play': isActive }"></div>
        <div v-bind:class="{ 'play2': isActive }"></div>
           <button v-bind:class="{'home':isActive}"></button>
        <label v-bind:class="{'lable1':isActive}">二号投影大屏:</label>
        <label v-bind:class="{'lable2':isActive}">场景介绍</label>
        <label v-bind:class="{'lable4':isActive}">沙盘演示</label>
        <label v-bind:class="{'lable3':isActive}">沙盘位置示意图</label>
        <div v-bind:class="{'div1':isActive}">
     <label v-bind:class="{'label1':isActive}">纪念币文字:</label>
        <input type="text" value="之江实验室" v-bind:class="{'input':isActive}" maxlength="8" />
<!--            <button v-bind:class="{'button1':isActive}">-->
<!--                <p v-bind:class="{'button_p0':isActive}">质检部获取数据</p>-->
<!--                <p v-bind:class="{'button_p1':isActive}">（首次）</p>-->
<!--            </button>-->
 <button v-bind:class="{'go':isActive,'button1':isActive}"></button>
             <div v-bind:class="{'completeicon':isActive}"></div>
            <label v-bind:class="{'label2':isActive}">数据传输中……</label>
            <label v-bind:class="{'label3':isActive}">质检部已接收，<a href="#" v-bind:class="{'label3_a':isActive}">显示数据</a></label>
            <div v-bind:class="{'jieduan2':isActive}">
            <div v-bind:class="{'department2':isActive,'button2':isActive}"></div>
<!--                <button v-bind:class="{'button2':isActive}">-->
<!--                    <p v-bind:class="{'button_p0':isActive}">市场部获取数据</p>-->
<!--                    <p v-bind:class="{'button_p1':isActive}">（再次）</p>-->
<!--                </button>-->
            <div v-bind:class="{'department3':isActive,'button3':isActive}"></div>

<!--                <button v-bind:class="{'button3':isActive}">-->
<!--                    <p v-bind:class="{'button_p0':isActive}">运营部获取数据</p>-->
<!--                    <p v-bind:class="{'button_p1':isActive}">（再次）</p>-->
<!--                </button>-->

            <div v-bind:class="{'department4':isActive,'button4':isActive}"></div>

<!--                <button v-bind:class="{'button4':isActive}">-->
<!--                    <p v-bind:class="{'button_p0':isActive}">产品部获取数据</p>-->
<!--                    <p v-bind:class="{'button_p1':isActive}">（再次）</p>-->
<!--                </button>-->

            <div v-bind:class="{'department5':isActive,'button5':isActive}"></div>

<!--                <button v-bind:class="{'button5':isActive}">-->
<!--                    <p v-bind:class="{'button_p0':isActive}">监控部获取数据</p>-->
<!--                    <p v-bind:class="{'button_p1':isActive}">（再次）</p>-->
<!--                </button>-->
                <label v-bind:class="{'gongyibu':isActive}">市场部已接收，<a href="#" v-bind:class="{'gongyibu_a':isActive}">显示数据</a></label>
                <label v-bind:class="{'shebeibu':isActive}">运营部已接收，<a href="#" v-bind:class="{'shebeibu_a':isActive}">显示数据</a></label>
                <label v-bind:class="{'shengchanbu':isActive}">产品部已接收，<a href="#" v-bind:class="{'shengchanbu_a':isActive}">显示数据</a></label>
                <label v-bind:class="{'chanpinkaifabu':isActive}">监控部已接收，<a href="#" v-bind:class="{'chanpinkaifabu_a':isActive}">显示数据</a></label>
<!--                <button v-bind:class="{'button6':isActive}">性能对比</button>-->
                <div v-bind:class="{'xndb':isActive,'button6':isActive}"></div>

            </div>
        </div>
        <div v-bind:class="{'div2':isActive}">
            <label v-bind:class="{'label4':isActive}">性&nbsp;能&nbsp;对&nbsp;比</label>
            <label v-bind:class="{'label5':isActive}">部门</label>
            <label v-bind:class="{'label6':isActive}">传输路径</label>
            <label v-bind:class="{'label7':isActive}">用户响应时间</label>
            <div v-bind:class="{'division':isActive}"></div>
            <div v-bind:class="{'quality_inspection':isActive}">
                <label v-bind:class="{'quality_inspection_label':isActive}">质检部获取数据</label>
                <label v-bind:class="{'quality_inspection_label_first':isActive}">（首次）</label>
                <div v-bind:class="{'dun1':isActive}"></div>
                <div v-bind:class="{'jiantou1':isActive}"></div>
                <div v-bind:class="{'jiantou2':isActive}"></div>
                <div v-bind:class="{'chuanshu1':isActive}"></div>
                <div v-bind:class="{'jiantou3':isActive}"></div>
                <div v-bind:class="{'jiantou4':isActive}"></div>
                <div v-bind:class="{'fuwuqi1':isActive}"></div>
                <div v-bind:class="{'time1':isActive}"></div>

            </div>

            <div v-bind:class="{'division2':isActive}"></div>

            <div v-bind:class="{'process':isActive}">
                <label v-bind:class="{'process_label':isActive}">市场部获取数据</label>
                <div v-bind:class="{'dun2':isActive}"></div>
                <div v-bind:class="{'jiantou5':isActive}"></div>
                <div v-bind:class="{'jiantou6':isActive}"></div>
                <div v-bind:class="{'chuanshu2':isActive}"></div>
                <div v-bind:class="{'jiantou7':isActive}"></div>
                <div v-bind:class="{'jiantou8':isActive}"></div>
                <div v-bind:class="{'fuwuqi2':isActive}"></div>
                <div v-bind:class="{'time2':isActive}"></div>
            </div>
            <div v-bind:class="{'division3':isActive}"></div>

            <div v-bind:class="{'equipment':isActive}">
                <label v-bind:class="{'equipment_label':isActive}">运营部获取数据</label>
                <div v-bind:class="{'dun3':isActive}"></div>
                <div v-bind:class="{'jiantou9':isActive}"></div>
                <div v-bind:class="{'jiantou10':isActive}"></div>
                <div v-bind:class="{'chuanshu3':isActive}"></div>
                <div v-bind:class="{'jiantou11':isActive}"></div>
                <div v-bind:class="{'jiantou12':isActive}"></div>
                <div v-bind:class="{'fuwuqi3':isActive}"></div>
                <div v-bind:class="{'time3':isActive}"></div>
            </div>
            <div v-bind:class="{'division4':isActive}"></div>

            <div v-bind:class="{'production':isActive}">
                <label v-bind:class="{'production_label':isActive}">产品部获取数据</label>
                <div v-bind:class="{'dun4':isActive}"></div>
                <div v-bind:class="{'jiantou13':isActive}"></div>
                <div v-bind:class="{'jiantou14':isActive}"></div>
                <div v-bind:class="{'chuanshu4':isActive}"></div>
                <div v-bind:class="{'jiantou15':isActive}"></div>
                <div v-bind:class="{'jiantou16':isActive}"></div>
                <div v-bind:class="{'fuwuqi4':isActive}"></div>
                <div v-bind:class="{'time4':isActive}"></div>
            </div>
            <div v-bind:class="{'division5':isActive}"></div>

            <div v-bind:class="{'monitor':isActive}">
                <label v-bind:class="{'monitor_label':isActive}">监控部获取数据</label>
                <div v-bind:class="{'dun5':isActive}"></div>
                <div v-bind:class="{'jiantou17':isActive}"></div>
                <div v-bind:class="{'jiantou18':isActive}"></div>
                <div v-bind:class="{'chuanshu5':isActive}"></div>
                <div v-bind:class="{'jiantou19':isActive}"></div>
                <div v-bind:class="{'jiantou20':isActive}"></div>
                <div v-bind:class="{'fuwuqi5':isActive}"></div>
                <div v-bind:class="{'time5':isActive}"></div>
            </div>
            <button v-bind:class="{'button7':isActive}">
                <p v-bind:class="{'button_p7':isActive}">返回</p>
            </button>
        </div>

        <button v-bind:class="{'return':isActive}"></button>
        <button v-bind:class="{'full':isActive}"></button>
        <image v-bind:class="{ 'image': isActive }"></image>
        <button v-bind:class="{'return2':isActive}"></button>

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
            $(".return").click(function (e) {
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
                    $(location).attr("href", "Main.aspx")

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
                               $(".border2").click(function (e) {
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
                               $(".play").click(function (e) {
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
                               $(".border4").click(function (e) {
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
                               $(".play2").click(function (e) {
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
                               $(".boder3").click(function (e) {
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
