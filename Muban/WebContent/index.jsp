<%@page import="java.util.ArrayList"%>
<%@page import="org.hjc.entity.Message"%>
<%@page import="java.util.List"%>
<%@page import="org.hjc.Dao.MessageQueryDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
<meta charset="UTF-8">
<title>爱宠之家</title>
</head>
	<link rel="icon" href="images/headpic1.jpg" >
<head>
    <title>Home</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="keywords" content="" />
    <script>
        addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- //Meta tag Keywords -->

    <!-- Custom-Files -->
    <link rel="stylesheet" href="css/bootstrap.css">
    <!-- Bootstrap-Core-CSS -->

    <!-- owl carousel -->
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    <link href="css/blast.min.css" rel="stylesheet" />

    <!-- Style-CSS -->
    <!-- font-awesome-icons -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome-icons -->
    <!--lightbox -->
    <link rel="stylesheet" href="css/lightbox.css">
    <!-- lightbox -->


    <!-- Font-Awesome-Icons-CSS -->
    <link href="http://fonts.googleapis.com/css?family=Oswald:300,400,500,600,700" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">

</head>

<body>
    <div class="main">
        <div class="blast-box">
            <div class="blast-frame">
                <p>颜色方案</p>
                <div class="blast-colors d-flex justify-content-center">
                    <div class="blast-color">#00a8e0</div>
                    <div class="blast-color">#ff322e</div>
                    <div class="blast-color">#ff9900</div>
                    <div class="blast-color">#34bf49</div>

                    <!-- you can add more colors here -->
                </div>
                <p class="blast-custom-colors">选择颜色</p>
                <input type="color" name="blastCustomColor" value="#cf2626">
            </div>
            <div class="blast-icon"><i class="fa fa-cog" aria-hidden="true"></i></div>

        </div>
        <div id="page">
            <div id="home" class="banner" data-blast="bgColor">

                <!--/banner-->
                <nav class="navbar navbar-expand-lg mb-4 top-bar navbar-static-top sps sps--abv">
                    <div class="container">
                        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarCollapse1" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"><i class="fa fa-bars" aria-hidden="true"></i></span>
      </button>
                        <a class="navbar-brand mx-auto" href="index.html">爱宠 <span data-blast="color">之家</span></a>
                        <div class="collapse navbar-collapse" id="navbarCollapse1">
                            <ul class="navbar-nav ml-auto">
                                <li class="nav-item active"> <a class="nav-link" href="#myCarousel" data-blast="color">Home <span class="sr-only">(current)</span></a> </li>
                                <li class="nav-item"> <a class="nav-link" href="#services">Services</a> </li>
                                <li class="nav-item"> <a class="nav-link" href="#about">About</a> </li>
                                <li class="nav-item"> <a class="nav-link" href="#gallery">Photos</a> </li>
                                <li class="nav-item"> <a class="nav-link" href="#book">Book Now</a> </li>
                                <li class="nav-item"> <a class="nav-link" href="#contact">Contact</a> </li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <!-- Swiper Sildera
    ================================================== -->
                <!-- Slider main container -->
                <div class="swiper-container main-slider" id="myCarousel" data-blast="bgColor">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide slider-bg-position" style="background:url(images/1.jpg)" data-hash="slide1">
                            <div class="ban-info" data-blast="bgColor">
                                <h2>欢迎来到爱宠之家</h2>
                                <p>在这里你可以远程查看爱宠的状态，小屋的环境</p>
                            </div>
                        </div>
                        <div class="swiper-slide slider-bg-position" style="background:url(images/2.jpg)" data-hash="slide2">
                            <div class="ban-info" data-blast="bgColor">
                                <h2>欢迎来到爱宠之家</h2>
                                <p> 在这里你可以远程查看爱宠的状态，小屋的环境</p>
                            </div>
                        </div>
                    </div>
                    <!-- Add Pagination -->
                    <div class="swiper-pagination"></div>
                    <!-- Add Navigation -->
                    <div class="swiper-button-prev"><i class="fa fa-chevron-left"></i></div>
                    <div class="swiper-button-next"><i class="fa fa-chevron-right"></i></div>
                </div>
            </div>
        </div>
    </div>

    <!-- Benefits
    ================================================== -->

    <section class="grids-bottom-w3ls bg-light py-md-5 py-3">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 about-in text-left">
                    <div class="card">
                        <div class="card-body">
                            <i class="fa fa-home" aria-hidden="true" data-blast="color"></i>
                            <h5 class="card-title">宠物小家温度监控</h5>
                            <div class="line" data-blast="bgColor"></div>
                           
						<!--  	</br><button style="height:50px;width:100px;" onclick="window.location.href='Temperture.jsp'">查询小屋温度</button>  -->
                            
                             <p class="card-text mt-3">在这里，您可以看到全天候时间段爱宠小屋的温度状况，小屋会自动根据温度进行调节，给予您的爱宠最温暖舒适的环境.
                            </p>      
                        </div>
                    </div>

                </div>
                <div class="col-lg-3 about-in text-left">
                    <div class="card">
                        <div class="card-body">
                            <i class="fa fa-cubes" aria-hidden="true" data-blast="color"></i>
                            <h5 class="card-title"> 喂食系统</h5>
                            <div class="line" data-blast="bgColor"></div>
                   <!--        </br><button style="height:50px;width:100px;" onclick="window.location.href='Temperture.jsp'">进入喂食系统</button>  -->   
                             <p class="card-text mt-3">铲屎官出差再也不用担心爱宠被饿着了，智能小屋能带给你远程喂食您的爱宠.      
                            </p>
                        </div>
                    </div>

                </div>
                <div class="col-lg-3 about-in text-left">
                    <div class="card">
                        <div class="card-body">
                            <i class="fa fa-heart-o" aria-hidden="true" data-blast="color"></i>
                            <h5 class="card-title"> 给爱宠无微不至的关心</h5>
                            <div class="line" data-blast="bgColor"></div>
                            <p class="card-text mt-3">爱宠小屋致力于给予爱宠最好的关心，让物联网时代便利生活.
                            </p>
                        </div>
                    </div>

                </div>
                <div class="col-lg-3 about-in text-left">
                    <div class="card">
                        <div class="card-body">
                            <i class="fa fa-calendar" aria-hidden="true" data-blast="color"></i>
                            <h5 class="card-title">查看历史记录</h5>
                            <div class="line" data-blast="bgColor"></div>
                            <p class="card-text mt-3">小屋的历史数据我们都保存好了，就等铲屎官您随时查看.
                            </p>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
   <!--  <div class="tlinks">Collect from <a href="http://www.cssmoban.com/"  title="网站模板">网站模板</a></div>    -->
    <!-- Servives
    ================================================== -->
    <section class="banner-bottom-wthree py-md-5 py-3" id="services">
        <div class="container">
            <div class="inner-sec-w3layouts py-md-5 py-3">
                <h3 class="tittle text-center mb-lg-5 mb-3">
                    <span data-blast="color">Our</span>Services</h3>
                <div class="row choose-main mb-lg-4">
                    <div class="col-lg-6 galsses-grid-right">
                        <!----
                        <h5>
                            <span class="post-color">21</span> May 2018</h5>
                         <!---->
                        <h4 class="post mt-3">随时随地查询爱宠小屋历史温度，折线图一目了然</h4>
                        <div class="line" data-blast="bgColor"></div>
                        <p class="mt-3"> 这里，你可以查看任何时间段，爱宠小屋的温度数据，小屋是否正常工作！ </p>
                        <div class="log-in mt-md-4 mt-3">
                   <!-- 点击跳转按钮 -->         <a class="btn text-uppercase" data-blast="bgColor" href="QueryWindow.jsp">
                             进入温度查询</a>
                        </div>
                    </div>
                    <div class="col-lg-6 galsses-grid-right">
                        <div class="galsses-grid-left">
                            <figure class="effect-lexi">
                                <img src="images/4.jpg" alt="" class="img-fluid">
                                <figcaption>
                                    <h3>PetHome
                                        <span data-blast="color">Temperture</span>

                                    </h3>
                                    <p data-blast="color"> Service 1</p>
                                </figcaption>
                            </figure>
                        </div>
                    </div>
                </div>
                <div class="row choose-main my-lg-4 my-3">
                    <div class="col-lg-6 galsses-grid-right mt-lg-4">
                        <div class="galsses-grid-left">
                            <figure class="effect-lexi">
                                <img src="images/5.jpg" alt="" class="img-fluid">
                                <figcaption>
                                    <h3>real time of
                                        <span data-blast="color">Temperture</span>

                                    </h3>
                                    <p data-blast="color"> Service 2</p>
                                </figcaption>
                            </figure>
                        </div>
                    </div>
                    <div class="col-lg-6 galsses-grid-right mt-4">

                        <h4 class="post mt-3">爱宠小屋实时温度</h4>
                        <div class="line" data-blast="bgColor"></div>
                         <p class="mt-3">身在异地，看看当前小屋是否暖和.. </p>
                        <div class="log-in mt-md-4 mt-3">
          <!-- 实时温度显示 -->        <a class="btn text-uppercase" data-blast="bgColor" href="RealTimeTemperture.jsp">
                             查看实时温度</a>
                        </div>

                    </div>
                </div>
                <div class="row choose-main mb-lg-4">
                    <div class="col-lg-6 galsses-grid-right mt-lg-4">
                        <!----
                        <h5>
                            <span class="post-color">21</span> May 2018</h5>
                         <!---->
                        <h4 class="post mt-3">查看爱宠是否在小屋内</h4>
                        <div class="line" data-blast="bgColor"></div>
                        <p class="mt-3">爱宠是否在小屋内.. </p>
                        <div class="log-in mt-md-4 mt-3">
                            <a class="btn text-uppercase" data-blast="bgColor" href="IsPetInHome.jsp">
                             查看是否在屋内</a>
                        </div>
                    </div>
                    <div class="col-lg-6 galsses-grid-right mt-lg-4">
                        <div class="galsses-grid-left">
                            <figure class="effect-lexi">
                                <img src="images/6.jpg" alt="" class="img-fluid">
                                <figcaption>
                                    <h3>Pet
                                        <span data-blast="color">Playing</span>

                                    </h3>
                                    <p data-blast="color"> Service 3</p>
                                </figcaption>
                            </figure>
                        </div>
                    </div>
                </div>
                <div class="row choose-main mt-lg-4 mt-3">
                    <div class="col-lg-6 galsses-grid-right mt-lg-4">
                        <div class="galsses-grid-left">
                            <figure class="effect-lexi">
                                <img src="images/7.jpg" alt="" class="img-fluid">
                                <figcaption>
                                    <h3>Pet
                                        <span data-blast="color">Feeding</span>

                                    </h3>
                                    <p data-blast="color"> Service 4</p>
                                </figcaption>
                            </figure>
                        </div>
                    </div>
                    <div class="col-lg-6 galsses-grid-right mt-4 last-gd">

                        <h4 class="post mt-3">宠物喂食</h4>
                        <div class="line" data-blast="bgColor"></div>
                       <p class="mt-3">随时喂食和定时喂食爱宠.. </p>
                        <div class="log-in mt-md-4 mt-3">
                            <a class="btn text-uppercase" data-blast="bgColor" href="PetFeed.jsp">
                             进入喂食</a>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- About 
    ================================================== -->
    <section class="about-sec parallax-section py-lg-5 py-4" id="about">
        <div class="container">
            <div class="inner-sec-w3layouts py-md-5 py-3">
                <div class="row choose-main">
                    <div class="col-lg-3">
                        <h3><small>Who We Are</small>About<br> Our Blog</h3>
                    </div>
                    <div class="col-lg-4">
                        <p>Lorem ipsum dolor sit amet Neque porro quisquam est qui dolorem Lorem int ipsum dolor sit amet when an unknown printer..</p>
                        <p>Maecenas interdum, metus vitae tincidunt porttitor, magna quam egestas sem, ac scelerisque nisl nibh vel lacus. Proin eget gravida odio. Donec ullamcorper est eu accumsan cursus.</p>
                    </div>
                    <div class="col-lg-4">
                        <p>Maecenas interdum, metus vitae tincidunt porttitor, magna quam egestas sem, ac scelerisque nisl nibh vel lacus. Proin eget gravida odio. Donec ullamcorper est eu accumsan cursus.</p>
                        <div class="log-in mt-md-4 mt-3">
                            <a class="btn text-uppercase" data-blast="bgColor" href="#">
                             Read More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Gallery
    ================================================== -->
    <section class="banner-bottom-wthree py-md-5 py-3" id="gallery">
        <div class="container">
            <div class="inner-sec-w3layouts py-md-5 py-3">
                <h3 class="tittle text-center mb-lg-5 mb-3">
                    <span data-blast="color">Latest</span> Photos</h3>
                <div class="row gallery_grid-more project-grids">
                    <div class="col-md-3 p-0 pr-2 col-sm-3 col-6 personal_gallery_grid1 hover14 column">
                        <div class="personal_gallery_effect">
                            <a href="images/g1.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
                                <figure>
                                    <img src="images/g1.jpg" alt=" " class="img-fluid" />
                                </figure>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-3 p-0 pr-2 col-sm-3 col-6 personal_gallery_grid1 hover14 column">
                        <div class="personal_gallery_effect">
                            <a href="images/g2.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
                                <figure>
                                    <img src="images/g2.jpg" alt=" " class="img-fluid" />
                                </figure>
                            </a>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="col-md-6 p-0 col-sm-6 col-12 pt-sm-0 pt-2 personal_gallery_grid1 hover14 column">
                        <div class="personal_gallery_effect">
                            <a href="images/g3.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
                                <figure>
                                    <img src="images/g3.jpg" alt=" " class="img-fluid" />
                                </figure>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="row gallery_grid-more">
                    <div class="col-md-6 p-0 col-sm-6 col-12 pt-sm-0 pt-2 personal_gallery_grid1 view_gallery_grid1 hover14 column">
                        <div class="personal_gallery_effect">
                            <a href="images/g4.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
                                <figure>
                                    <img src="images/g4.jpg" alt=" " class="img-fluid" />
                                </figure>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-3 pt-2 pl-2 p-0 col-sm-3 col-6 personal_gallery_grid1 hover14 column">
                        <div class="personal_gallery_effect">
                            <a href="images/g5.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
                                <figure>
                                    <img src="images/g5.jpg" alt=" " class="img-fluid" />
                                </figure>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-3 pt-2 pl-2 p-0 col-sm-3 col-6 personal_gallery_grid1 hover14 column">
                        <div class="personal_gallery_effect">
                            <a href="images/g6.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
                                <figure>
                                    <img src="images/g6.jpg" alt=" " class="img-fluid" />
                                </figure>
                            </a>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>

            </div>
        </div>
    </section>


    <!-- Booking Form
    ================================================== 
    <section class="about-sec parallax-section py-lg-5 py-4" id="book">
        <div class="container">
            <div class="inner-sec-w3layouts py-md-5 py-3">
                <div class="choose-main">
                    <div id="search_form" class="search_top text-center">
                        <form action="#" method="post" class="booking-form row">
                            <div class="col-md-3 banf">
                                <input class="form-control" type="text" name="Name" placeholder="Name" required="">
                            </div>
                            <div class="col-md-3 banf">
                                <input class="form-control" type="text" name="Phone" placeholder="Phone Number" required="">
                            </div>
                            <div class="col-md-3 banf">
                                <select id="country13" class="form-control">
                                    <option>
Choose Service</option>
                                    <option>Puppy Program</option>
                                    <option>Dog Walking</option>
                                    <option>Pet Sitting</option>
                                </select>
                            </div>
                            <div class="col-md-3 banf">
                                <input class="form-control" data-blast="bgColor" type="submit" value="Book Now">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
                 -->
    <!-- Testimonials
    ================================================== -->
    <section class="banner-bottom-wthree py-lg-5 py-4" id="test">
        <div class="container">
            <div class="inner-sec-w3layouts py-md-5 py-3">
                <h3 class="tittle text-center mb-lg-5 mb-3">
                    <span data-blast="color">Customer Reviews </span>What Clients Say</h3>
                <div class="row blog">
                    <div class="col-md-12">
                        <div id="blogCarousel" class="carousel slide" data-ride="carousel">

                            <ol class="carousel-indicators">
                                <li data-target="#blogCarousel" data-slide-to="0" class="active"></li>
                                <li data-target="#blogCarousel" data-slide-to="1"></li>
                            </ol>

                            <!-- Carousel items -->
                            <div class="carousel-inner">

                                <div class="carousel-item active">
                                    <div class="row">
                                        <div class="col-md-3 reviews-box">
                                            <a href="#">
                                            <img src="images/4.jpg" alt="Image" style="max-width:100%;">
                                        </a>
                                        <%
                                        	List<Message> message = new ArrayList<>();
                                         	message =  MessageQueryDao.Mmessagequery();//查询最新的用户评价 
                                        %>
                                            <p class="my-4 text-left"><i class="fa fa-quote-right" aria-hidden="true"></i> <%=message.get(0).getName() %> : <%=message.get(0).getTextarea() %>..email:<%=message.get(0).getEmail() %>
                                        	    发布于：<%=message.get(0).getTime() %>
                                            </p>
                                        </div>
                                        <div class="col-md-3 reviews-box">
                                            <a href="#">
                                             <img src="images/5.jpg" alt="Image" style="max-width:100%;">
                                        </a>
                                            <p class="my-4 text-left"><i class="fa fa-quote-right" aria-hidden="true"></i> <%=message.get(1).getName() %> : <%=message.get(1).getTextarea() %>..email:<%=message.get(1).getEmail() %>
                                        	    发布于：<%=message.get(1).getTime() %></p>
                                        </div>
                                        <div class="col-md-3 reviews-box">
                                            <a href="#">
                                             <img src="images/7.jpg" alt="Image" style="max-width:100%;">
                                        </a>
                                            <p class="my-4 text-left"><i class="fa fa-quote-right" aria-hidden="true"></i> <%=message.get(2).getName() %> : <%=message.get(2).getTextarea() %>..email:<%=message.get(2).getEmail() %>
                                        	    发布于：<%=message.get(2).getTime() %></p>
                                        </div>
                                        <div class="col-md-3 reviews-box">
                                            <a href="#">
                                           <img src="images/8.jpg" alt="Image" style="max-width:100%;">
                                        </a>
                                            <p class="my-4 text-left"><i class="fa fa-quote-right" aria-hidden="true"></i> <%=message.get(3).getName() %> : <%=message.get(3).getTextarea() %>..email:<%=message.get(3).getEmail() %>
                                        	    发布于：<%=message.get(3).getTime() %></p>
                                        </div>
                                    </div>
                                    <!--.row-->
                                </div>
                                <!--.item-->

                                <div class="carousel-item">
                                    <div class="row">
                                        <div class="col-md-3 reviews-box">
                                            <a href="#">
                                             <img src="images/5.jpg" alt="Image" style="max-width:100%;">
                                        </a>
                                            <p class="my-4 text-left"><i class="fa fa-quote-right" aria-hidden="true"></i> <%=message.get(4).getName() %> : <%=message.get(4).getTextarea() %>..email:<%=message.get(4).getEmail() %>
                                        	    发布于：<%=message.get(4).getTime() %></p>
                                        </div>
                                        <div class="col-md-3 reviews-box">
                                            <a href="#">
                                             <img src="images/7.jpg" alt="Image" style="max-width:100%;">
                                        </a>
                                            <p class="my-4 text-left"><i class="fa fa-quote-right" aria-hidden="true"></i> <%=message.get(5).getName() %> : <%=message.get(5).getTextarea() %>..email:<%=message.get(5).getEmail() %>
                                        	    发布于：<%=message.get(5).getTime() %></p>
                                        </div>
                                        <div class="col-md-3 reviews-box">
                                            <a href="#">
                                           <img src="images/8.jpg" alt="Image" style="max-width:100%;">
                                        </a>
                                            <p class="my-4 text-left"><i class="fa fa-quote-right" aria-hidden="true"></i> <%=message.get(6).getName() %> : <%=message.get(6).getTextarea() %>..email:<%=message.get(6).getEmail() %>
                                        	    发布于：<%=message.get(6).getTime() %></p>
                                        </div>
                                        <div class="col-md-3 reviews-box">
                                            <a href="#">
                                            <img src="images/4.jpg" alt="Image" style="max-width:100%;">
                                        </a>
                                            <p class="my-4 text-left"><i class="fa fa-quote-right" aria-hidden="true"></i> <%=message.get(7).getName() %> : <%=message.get(7).getTextarea() %>..email:<%=message.get(7).getEmail() %>
                                        	    发布于：<%=message.get(7).getTime() %></p>
                                        </div>
                                    </div>
                                    <!--.row-->
                                </div>
                                <!--.item-->

                            </div>
                            <!--.carousel-inner-->
                        </div>
                        <!--.Carousel-->

                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact
    ================================================== -->
    <section class="about-sec contact-sec parallax-section py-lg-5 py-4" id="contact">
        <div class="container">
            <div class="inner-sec-w3layouts py-md-5 py-3">
                <div class="choose-main row">
                    <div class="col-md-4">
                        <h3><small>Share Together</small> Let's talk about Pet feeding experience</h3>
                            <div class="map mt-3">
                            <iframe src="" allowfullscreen=""></iframe>

                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="form-contact">
                            <form action="InsertMesaageServlet" method="post">
                                <div class="form-group">
                                    <label class="my-2">Name</label>
                                    <input class="form-control" type="text" name="Name" placeholder="" required="">
                                </div>
                                <div class="form-group">
                                    <label>Email</label>
                                    <input class="form-control" type="email" name="Email" placeholder="" required="">
                                </div>
                                <div class="form-group">
                                    <label>Message</label>
                                    <textarea id="textarea" placeholder="" name="textarea"></textarea>
                                </div>
                                <div class="input-group1">
                                    <input class="form-control" data-blast="bgColor" type="submit" value="Submit">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer
    ================================================== -->
    <footer class="action-sec py-lg-5 py-3">
        <div class="container-fluid px-lg-5 px-3">
            <div class="row">
                <div class="col-lg-5 footer-grid">
                    <h3 class="mb-4">About Us</h3>
                    <p>Lorem ipsum dolor sit amet, Cras blandit nibh ut pretium elementum. Duis bibendum convallis nunc a dictum. Quisque ac ipsum porta, ultrices metus sit amet, cursus nisl. Duis aliquet varius sem sit amet tempus. Curabitur vitae dui bibendum. </p>
                    <div class="row mt-4">
                        <div class="col-md-6">
                            <h3 class="text-uppercase mb-3 ">Connect With Social</h3>
                            <p><span class="fa fa-twitter"></span> twitter/@my_website</p>
                            <p><span class="fa fa-instagram"></span> instagram/@my_website</p>
                            <p><span class="fa fa-youtube mb-5"></span> youtube/@my_website</p>
                            <a href="#" class="facebook-footer mr-2"><span class="fa fa-facebook mr-1"></span> Facebook</a>
                            <a href="#" class="twitter-footer"><span class="fa fa-twitter mr-1"></span> Twitter</a>
                        </div>
                        <div class="col-md-6">
                            <h3 class="mb-4">Address</h3>
                            <address class="mb-0">
							<p class="mb-2"><i class="fas fa-map-marker-alt"></i> 8088H 5th Street Parking, King <br>Block, New York City.</p>
							<p><i class="fa fa-phone mr-1"></i> +12 445 8453 8088</p>
							<p><i class="fa fa-fax mr-1"></i> +11 997 2040 9436 </p>
							<p><i class="fa fa-envelope-open  mr-1"></i> <a href="mailto:info@example.com">info@example.com</a></p>
						</address>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 footer-grid">
                    <h3 class="mb-4">Instagram</h3>
                    <div class="blog-grids row mb-3">
                        <div class="col-md-4 blog-grid-left">
                            <a href="single.html">
							<img src="images/5.jpg" class="img-fluid" alt="">
						</a>
                        </div>
                        <div class="col-md-8 blog-grid-right">
                            <h5>
                                <a href="single.html">Lorem ipsum dolor sit amet . Maecenas male non felis convallis nunc </a>
                            </h5>
                            <div class="sub-meta">
                                <span>
								<i class="far fa-clock"></i> 10 Sep, 2018</span>
                            </div>
                        </div>
                    </div>
                    <div class="blog-grids row mb-3">
                        <div class="col-md-4 blog-grid-left">
                            <a href="single.html">
							<img src="images/4.jpg" class="img-fluid" alt="">
						</a>
                        </div>
                        <div class="col-md-8 blog-grid-right">
                            <h5>
                                <a href="single.html">Lorem ipsum dolor sit amet . Maecenas male non felis convallis nunc </a>
                            </h5>
                            <div class="sub-meta">
                                <span>
								<i class="far fa-clock"></i> 22 Sep, 2018</span>
                            </div>
                        </div>
                    </div>
                    <div class="blog-grids row mb-3">
                        <div class="col-md-4 blog-grid-left">
                            <a href="single.html">
							<img src="images/6.jpg" class="img-fluid" alt="">
						</a>
                        </div>
                        <div class="col-md-8 blog-grid-right">
                            <h5>
                                <a href="single.html">Lorem ipsum dolor sit amet . Maecenas male non felis convallis nunc </a>
                            </h5>
                            <div class="sub-meta">
                                <span>
								<i class="far fa-clock"></i> 23 Sep, 2018</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 footer-grid">
                    <h3 class="mb-4">We Offer</h3>
                    <ul>
                        <li><i class="fa mr-1 fa-long-arrow-alt-right"></i> Blandit nibh ut pretium elementum.</li>
                        <li><i class="fa mr-1 fa-long-arrow-alt-right"></i> Convallis nunc a dictum ipsum.</li>
                        <li><i class="fa mr-1 fa-long-arrow-alt-right"></i> Ultrices metus sit amet.</li>
                    </ul>
                    <h3 class="mt-4 mb-4">Newsletter</h3>
                    <p class="mb-3">Subscribe to Our Newsletter to get News, Amazing Offers &amp; More</p>
                    <form action="#" method="post">
                        <input type="email" name="Email" placeholder="Enter your email..." required="">
                        <button class="btn1" data-blast="bgColor"><i class="fa fa-envelope-o" aria-hidden="true"></i></button>
                        <div class="clearfix"> </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="copyright mt-md-5 mt-4 text-center">
        <!--    <p>Copyright &copy; 2018.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
		 --> 
        </div>

    </footer>


    <!--//banner-->
    <!--//footer-->
    <script src="js/jquery-2.2.3.min.js"></script>
    <script src="js/boost.js"></script>
    <script src="js/blast.min.js"></script>
    <!--  light box js -->
    <script src="js/lightbox-plus-jquery.min.js">
    </script>
    <script>
        // optional
        $('#blogCarousel').carousel({
            interval: 5000
        });
    </script>
    <!-- //light box js-->

    <!--/ start-smoth-scrolling -->
    <script src="js/move-top.js"></script>
    <script src="js/easing.js"></script>
    <script>
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event) {
                event.preventDefault();
                $('html,body').animate({
                    scrollTop: $(this.hash).offset().top
                }, 900);
            });
        });
    </script>
    <script>
        $(document).ready(function() {
            /*
            						var defaults = {
            							  containerID: 'toTop', // fading element id
            							containerHoverID: 'toTopHover', // fading element hover id
            							scrollSpeed: 1200,
            							easingType: 'linear' 
            						 };
            						*/

            $().UItoTop({
                easingType: 'easeOutQuart'
            });

        });
    </script>
    <!--// end-smoth-scrolling -->

    <!-- //js -->

    <script src="js/bootstrap.js"></script>

</body>

</html>>>
<body>

</body>
</html>