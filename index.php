<?php
/**
 * Created by PhpStorm.
 * User: wnyachiro
 * Date: 4/18/2017
 * Time: 3:47 PM
 */

?>
<?php session_start(); ?>
<!DOCTYPE html>
<html>
    <head>
    <title>QHL - Attendance</title>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=yes"
          name="viewport">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <link href="css/style2.css" rel="stylesheet" type="text/css">
    <link href="css/owl.carousel.css" rel="stylesheet" type="text/css">
    <link href="css/lightbox.css" rel="stylesheet" type="text/css">
    <link href="fonts/fonts.css" rel="stylesheet" type="text/css">
    <link href="css/responsive.css" rel="stylesheet" type="text/css">
    <script src="js/jQuery.js"></script>
    <script src="js/filterable.pack.js"></script>
    <script src="js/owl.carousel.js"></script>
    <script src="js/lightbox-2.6.min.js"></script>
    <script src="js/scrollTo.js" type="text/javascript"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scrollReveal.js"></script>
    <script src="js/parallax.js"></script>
    <script src="js/loader.js"></script>
    <script src="js/js.js"></script>
        <link rel="shortcut icon" href="img/favicon.ico">
    </head>
    <body onload="hide_preloader()" data-spy="scroll" data-target=".navbar" data-offset="100">
        <div id="preloader"> Page loading...
              <div class="preloader_container">
            <div id="circularG">
                  <div id="circularG_1" class="circularG"> </div>
                  <div id="circularG_2" class="circularG"> </div>
                  <div id="circularG_3" class="circularG"> </div>
                  <div id="circularG_4" class="circularG"> </div>
                  <div id="circularG_5" class="circularG"> </div>
                  <div id="circularG_6" class="circularG"> </div>
                  <div id="circularG_7" class="circularG"> </div>
                  <div id="circularG_8" class="circularG"> </div>
                </div>
          </div>
        </div>
        <section id="Home">
            <div class="container header">
                <div role="navigation" class="navbar navbar-inverse navbar-fixed-top">
                    <div class="row">
                    <div class="navbar-header">
                          <button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                          <a href="#Home" class="navbar-brand">Quest<span>Holdings Ltd.</span></a> </div>
                        <div class="collapse navbar-collapse">
                            <ul id="navbar" class="nav navbar-nav">
                               <!-- <li><a href="#">Attendance</a></li>-->
                                <li><a href="#" target="_blank">ClaimFlux</a></li>
                                <li><a href="#" target="_blank">Agent</a></li>
                                <li><a href="#" target="_blank">Leave Management</a></li>
                                <li><a href="#" target="_blank">Raise Ticket</a></li>
                                <li><a href="admin" target="_blank">Admin</a></li>
                            </ul>
                        </div>
                  </div>
                </div>
                <div class="clearfix"></div>

                <div id="carousel-example-generic" class="carousel slide carousel-fade" data-ride="carousel">
                  <!-- Indicators -->
                  <!-- Wrapper for slides -->
                  <div class="carousel-inner">
                    <div class="item active">
                      <div class="slide_mask"></div>
                      <img src="img/slides/slider1.jpg">
                      <div class="carousel-caption">
                        <h1 data-scroll-reveal="wait 0.2s enter bottom ease-in-out 500px over 0.55s">Professional Debt Management</h1>
                        <p data-scroll-reveal="wait 0.3s enter bottom ease-in-out 500px over 0.55s">Interact dynamically with a specialised team......</p>
                        <a class="link" href="#" role="button">Professionalism</a>
                      </div>
                    </div>
                    <div class="item">
                      <div class="slide_mask"></div>
                      <img src="img/slides/slide2.jpg">
                      <div class="carousel-caption">
                        <h1 data-scroll-reveal="wait 0.2s enter bottom ease-in-out 500px over 0.55s">Our technology</h1>
                        <p data-scroll-reveal="wait 0.3s enter bottom ease-in-out 500px over 0.55s">Enjoy the best debt tracking and tracing services.....</p>
                        <a class="link" href="#" role="button">Ethics & Integrity</a>
                      </div>
                    </div>
                    <div class="item">
                      <div class="slide_mask"></div>
                      <img src="img/slides/header_img_a.jpg">
                      <div class="carousel-caption">
                        <h1 data-scroll-reveal="wait 0.2s enter bottom ease-in-out 500px over 0.55s">Looking after your business</h1>
                        <p data-scroll-reveal="wait 0.3s enter bottom ease-in-out 500px over 0.55s">Is our top priority!.</p>
                        <a class="link" href="#" role="button">Partnership</a>
                      </div>
                    </div>
                  </div>
                  <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                  </ol>
                  <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"></span> </a> <a class="right carousel-control" href="#carousel-example-generic" data-slide="next"> <span class="glyphicon glyphicon-chevron-right"></span> </a> </div>
            <div class="clearfix"></div>
            </div>
        </section>
        <div class="container content">
       <!--     <div class="clearfix"></div>-->
            <!--START-->
            <div class="login-box">
                <div class="login-logo">
                    <p id="date"></p>
                    <p id="time" class="bold"></p>
                </div>
                <div class="login-box-body" align="center">
                    <h4 class="login-box-msg"><strong> Quest Holdings Ltd.</strong></h4>
                    <form id="attendance">
                        <div class="form-group">
                            <select class="form-control" name="status">
                                <option value="in">Time In</option>
                                <option value="out">Time Out</option>
                            </select>
                        </div>
                        <div class="form-group has-feedback">
                            <input type="text" class="form-control input-lg" id="employee" placeholder="Enter your Employment ID" name="employee" required>
                            <span class="glyphicon glyphicon-calendar form-control-feedback"></span>
                        </div>
                        <div class="row">
                            <div class="col-xs-4">
                                <button type="submit" class="btn btn-primary btn-block btn-flat" name="signin"><i class="fa fa-sign-in"></i> Sign In</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="alert alert-success alert-dismissible mt20 text-center" style="display:none;">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <span class="result"><i class="icon fa fa-check"></i> <span class="message"></span></span>
                </div>
                <div class="alert alert-danger alert-dismissible mt20 text-center" style="display:none;">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <span class="result"><i class="icon fa fa-warning"></i> <span class="message"></span></span>
                </div>
            </div>
        </div>


    <!--    <div class="container footer">
            <div class="row">
                <ul>
                  <li> <a href="#"><img src="img/social_icons/footer_social_item1.png" alt="image"> </a> </li>
                  <li> <a href="#"><img src="img/social_icons/footer_social_item2.png" alt="image"> </a> </li>
                  <li> <a href="#"><img src="img/social_icons/footer_social_item3.png" alt="image"> </a> </li>
                </ul>
                 <p>&copy; questholdings. All rights reserved. <br />Design by <a href="http://www.questholdings.biz" title="questholdings">questholdings.biz</a>.</p>
             </div>
        </div>-->

        <?php include 'scripts.php' ?>
        <script type="text/javascript">
            $(function() {
                var interval = setInterval(function() {
                    var momentNow = moment();
                    $('#date').html(momentNow.format('dddd').substring(0,3).toUpperCase() + ' - ' + momentNow.format('MMMM DD, YYYY'));
                    $('#time').html(momentNow.format('hh:mm:ss A'));
                }, 100);

                $('#attendance').submit(function(e){
                    e.preventDefault();
                    var attendance = $(this).serialize();
                    $.ajax({
                        type: 'POST',
                        url: 'attendance.php',
                        data: attendance,
                        dataType: 'json',
                        success: function(response){
                            if(response.error){
                                $('.alert').hide();
                                $('.alert-danger').show();
                                $('.message').html(response.message);
                            }
                            else{
                                $('.alert').hide();
                                $('.alert-success').show();
                                $('.message').html(response.message);
                                $('#employee').val('');
                            }
                        }
                    });
                });

            });

            $('.carousel').carousel({
                interval: 4500, // in milliseconds
                pause: 'none' // set to 'true' to pause slider on mouse hover
            })
        </script>


       <!-- <script type="text/javascript">
        $('.carousel').carousel({
          interval: 4500, // in milliseconds
          pause: 'none' // set to 'true' to pause slider on mouse hover
        })
        </script>-->
</body>
</html>
