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

        .title {
            background: url(image/newimg/生产制造场景.png) no-repeat center center;
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

        .chanxian {
               /* background: url(image/产线生产控制.png) no-repeat center center; */
               background-size: 100% 100%;
               position: absolute;
               margin-top: 415px;
               margin-left: 824px;
               height: 50px;
               width: 300px;
               color: white;
               font-size: 50px;
        }

        .image {
            background: url(image/图例.png) no-repeat center center;
            background-size: 100% 100%;
            position: absolute;
            margin-top: 20%;
            margin-left: 45%;
            width: 80px;
            height: 80px;
        }

        .state {
            color: white;
            font-size: 24px;
            position: absolute;
            margin-top: 21.2%;
            margin-left: 51%;
            border-radius: 40px;
            font-weight: 700;
        }

        .label1 {
            color: white;
            font-size: 24px;
            position: absolute;
            margin-top: 27.2%;
            margin-left: 40.5%;
            border-radius: 40px;
            font-weight: 600;
        }

        .label2 {
            color: white;
            font-size: 24px;
            position: absolute;
            margin-top: 30.2%;
            margin-left: 40.5%;
            border-radius: 40px;
            font-weight: 600;
        }

        .input {
            color: black;
            font-size: 20px;
            position: absolute;
            margin-top: 27.2%;
            height: 27.2px;
            width: 200px;
            margin-left: 48.5%;
            font-weight: 400;
            text-align: center;
        }

        .input2 {
            color: black;
            font-size: 20px;
            position: absolute;
            margin-top: 30.2%;
            height: 27.2px;
            width: 154px;
            margin-left: 49.6%;
            font-weight: 400;
            text-align: center;
        }

        .but2 {
            color: black;
            font-size: 20px;
            position: absolute;
            margin-top: 30.2%;
            height: 31px;
            width: 25px;
            margin-left: 48.5%;
            font-weight: 400;
            text-align: center;
        }

        .but1 {
            color: black;
            font-size: 20px;
            position: absolute;
            margin-top: 30.2%;
            height: 31px;
            width: 25px;
            margin-left: 57.7%;
            font-weight: 400;
            text-align: center;
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
        .go {
background: url(image/newimg/启动纪念币制作.png) no-repeat center center;
    background-size: 100% 100%;
    position: absolute;
    margin-top: 683px;
    margin-left: 733px;
    height: 98px;
    width: 454px;
    color: white;
    font-size: 18px;
    border: 0;
    font-weight: 600;
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
        .bdy{
            overflow:hidden;
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
        <div v-bind:class="{ 'chanxian': isActive }">产线生产控制</div>
<!--        <div v-bind:class="{ 'image': isActive }"></div>-->
          <div v-bind:class="{ 'image1': isActive }"></div>
<!--        <label class="state" id="type" runat="server">待启动</label>-->
        <label v-bind:class="{'label1':isActive}">纪念币文字:</label>
        <label v-bind:class="{'label2':isActive}">纪念币数量:</label>
        <input type="text" value="之江实验室" v-bind:class="{'input':isActive}" maxlength="8" />
        <input type="number" v-model="counter" v-bind:class="{'input2':isActive}" max="5" oninput="if(value>5)value=5;if(value<0)value=0;" />
        <button v-bind:class="{'but1':isActive}" v-on:click="counter++;if(counter>99)counter=99">+</button>
        <button v-bind:class="{'but2':isActive}" v-on:click="counter--;if(counter<0)counter=0">-</button>
        <button v-bind:class="{'go':isActive}"></button>

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
            setInterval(function () {
                $.ajax({
                    type: "post",
                    contentType: "application/json; charset=utf-8",//传值的方式
                    dataType: "json",
                    url: "生产制造场景.aspx/GetYanshiType",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                    success: function (result) {
                        if (result.d) {
                            $(".state").text("待启动");
                        } else {
                            $(".state").text("已启动");
                        }
                    }
                })
            }, 1000);

            $(".go").click(function (e) {
                var v = $(".input2").val();
                if (v > 0) {
                    $(".state").text("已启动");
                    $(".go").css("opacity","0.2");
                    $.ajax({
                        type: "post",
                        contentType: "application/json; charset=utf-8",//传值的方式
                        dataType: "json",
                        url: "生产制造场景.aspx/Fasong",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                        data: "{count:" + v + "}",//username 为想问后台传的参数（这里的参数可有可无）
                        success: function (result) {
                            //alert(result.d);//result.d为后台返回的参数

                        }
                    })
                }
            });
            $(".return,.home").click(function (e) {
                $.ajax({
                    type: "post",
                    contentType: "application/json; charset=utf-8",//传值的方式
                    dataType: "json",
                    url: "生产制造场景.aspx/Return",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                    data: "{type:" + 2 + "}",//username 为想问后台传的参数（这里的参数可有可无）
                    success: function (result) {
                        //alert(result.d);//result.d为后台返回的参数
                    }
                })
                //                 $(location).attr("href", "Main.aspx")
                                  $(".bdy").innerHTML=''
                                                $(".bdy").load("Main.aspx")
            });
            $.ajax({
                type: "post",
                contentType: "application/json; charset=utf-8",//传值的方式
                dataType: "json",
                url: "生产制造场景.aspx/Return",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                data: "{type:" + 3 + "}",//username 为想问后台传的参数（这里的参数可有可无）
                success: function (result) {
                    //alert(result.d);//result.d为后台返回的参数
                }
            })
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
                        url: "生产制造场景.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                        data: "{window1:8,window2:2,operation:1}",//username 为想问后台传的参数（这里的参数可有可无）
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
                        url: "生产制造场景.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                        data: "{window1:8,window2:2,operation:2}",//username 为想问后台传的参数（这里的参数可有可无）
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
                                  url: "生产制造场景.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                                  data: "{window1:8,window2:2,operation:1}",//username 为想问后台传的参数（这里的参数可有可无）
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
                                  url: "生产制造场景.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                                  data: "{window1:8,window2:2,operation:2}",//username 为想问后台传的参数（这里的参数可有可无）
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
                                  url: "生产制造场景.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                                  data: "{window1:8,window2:2,operation:1}",//username 为想问后台传的参数（这里的参数可有可无）
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
                                  url: "生产制造场景.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                                  data: "{window1:8,window2:2,operation:2}",//username 为想问后台传的参数（这里的参数可有可无）
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
                                  url: "生产制造场景.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                                  data: "{window1:13,window2:2,operation:1}",//username 为想问后台传的参数（这里的参数可有可无）
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
                                  url: "生产制造场景.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                                  data: "{window1:13,window2:2,operation:2}",//username 为想问后台传的参数（这里的参数可有可无）
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
                                  url: "生产制造场景.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                                  data: "{window1:13,window2:2,operation:1}",//username 为想问后台传的参数（这里的参数可有可无）
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
                                  url: "生产制造场景.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                                  data: "{window1:13,window2:2,operation:2}",//username 为想问后台传的参数（这里的参数可有可无）
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
                                  url: "生产制造场景.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                                  data: "{window1:13,window2:2,operation:1}",//username 为想问后台传的参数（这里的参数可有可无）
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
                                  url: "生产制造场景.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                                  data: "{window1:13,window2:2,operation:2}",//username 为想问后台传的参数（这里的参数可有可无）
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
                          url: "生产制造场景.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                          data: "{window1:2,window2:2,operation:0}",//username 为想问后台传的参数（这里的参数可有可无）
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
                              url: "生产制造场景.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                              data: "{window1:2,window2:2,operation:0}",//username 为想问后台传的参数（这里的参数可有可无）
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
                              url: "生产制造场景.aspx/Qie",//WebAjaxForMe.aspx为目标文件，GetValueAjax为目标文件中的方法
                              data: "{window1:2,window2:2,operation:0}",//username 为想问后台传的参数（这里的参数可有可无）
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
