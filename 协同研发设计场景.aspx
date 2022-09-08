
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
        .image {
            background-repeat: no-repeat;
            background-position: center top;
            position: absolute;
            background-size: 100% auto;
            top: 262px;
            left: 26px;
            bottom: 26px;
            right: 26px;
            border-radius: 12px;
        }
        .title {
            background-image: url(image/newimg/协同研发设计场景.png);
        }
        
        .control-bar {
            border-bottom: 1px solid rgba(255,255,255,.5);
            padding-bottom: 24px;
            
        }
        .lable4 {
            margin-right: 36px;
        }
        .options {
            position: absolute;
            width: 566px;
            height: 184px;
        }
        .options-box {
            position: absolute;
            left: 0; right: 0; top: 0; bottom: 0;
        }
        .options-image {
            position: absolute;
            width: 142px;
            height: 100%;
            left: 16px;
        }
        .options-image::after {
            content: '';
            position: absolute;
            width: 1px;
            height: 90px;
            top: 47px;
            right: -8px;
            background: rgba(255,255,255,.5);
        }
        .tips1, .tips2 {
            position: absolute;
            left: 196px;
            color: white;
        }
        .tips1 {
            font-size: 42px;
            top: 36px;
        }
        .tips2 {
            font-size: 32px;
            top: 100px;
            opacity: .6;
        }
        .options1 {
            top: 411px;
            left: 349px;
        }
        .image1 {
           background: url(image/newimg/OA.png) no-repeat center center;
        }
        .options2 {
            top: 411px;
            left: 991px;
        }
        .image2 {
            background: url(image/newimg/gitlab.png) no-repeat center center;
        }
        .options3 {
            top: 670px;
            left: 349px;
        }
        .image3 {
            background: url(image/newimg/知识.png) no-repeat center center;
        }
        .options4 {
            top: 670px;
            left: 991px;
        }
        .image4 {
            background: url(image/newimg/知识.png) no-repeat center center;
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
    </style>
</head>
<body class="bdy">

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


        <div class="options options1">
            <div class="box options-box"></div>
            <div class="options-image image1"></div>
            <label class="tips1">OA系统</label>
            <label class="tips2">IPv4</label>
        </div>
        
        <div class="options options2">
            <div class="box options-box"></div>
            <div class="options-image image2"></div>
            <label class="tips1">Gitlab</label>
            <label class="tips2">IPv4</label>
        </div>
        <div class="options options3">
            <div class="box options-box"></div>
            <div class="options-image image3"></div>
            <label class="tips1">知识与协同平台</label>
            <label class="tips2">IPv6</label>
        </div>
        <div class="options options4">
            <div class="box options-box"></div>
            <div class="options-image image4"></div>
            <label class="tips1">知识与协同平台</label>
            <label class="tips2">IPv4</label>
        </div>
    
        <div class="image"></div>
        <button class="home">首页</button>
        <button class="return2"></button>
        <button class="full"></button>


    
    <script>
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
            $(".options1").click(function (e) {
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
            $(".options4").click(function (e) {
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
            $(".options3").click(function (e) {
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
            $(".options2").click(function (e) {
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

                          $(".home").click(function (e) {

//                               $(location).attr("href", "Main.aspx")
                            $(".bdy").innerHTML=''
                            $(".bdy").load("Main.aspx")
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
