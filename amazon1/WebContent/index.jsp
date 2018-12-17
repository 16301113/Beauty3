
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>CHIC - Homepage</title>
<link href="${pageContext.request.contextPath}/css/index.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/adv.css"
	rel="stylesheet" type="text/css" />
<script src="${pageContext.request.contextPath}/scripts/jquery-2.1.0.js"
	type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/scripts/adv.js"
	type="text/javascript"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/scripts/function.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/scripts/index.js"></script>

<!--=== Favicon ===-->
    <link rel="shortcut icon" href="assets/img/favicon.ico" type="image/x-icon"/>

    <!--== Google Fonts ==-->
    <link href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,900" rel="stylesheet">

    <!--=== Bootstrap CSS ===-->
    <link href="assets/css/vendor/bootstrap.min.css" rel="stylesheet"/>
    <!--=== Font-Awesome CSS ===-->
    <link href="assets/css/vendor/font-awesome.css" rel="stylesheet"/>
    <!--=== Plugins CSS ===-->
    <link href="assets/css/plugins.css" rel="stylesheet"/>
    <!--=== Main Style CSS ===-->
    <link href="assets/css/style.css" rel="stylesheet"/>

    <!-- Modernizer JS -->
    <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>

    <!--[if lt IE 9]>
    <script src="//oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!--[if lt IE 9]>
    <script src="//oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<header>
 <!-- Start PreHeader Area -->
    <div class="preheader-area">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6 text-center text-md-left">
                    <!-- Start PreHeader Left -->
                    <div class="preheader-left-wrap">
                        <a href="tel:1018889999"><i class="fa fa-phone"></i> 101.888.9999</a>
                        <a href="#">FREE Shipping on orders over $150</a>
                    </div>
                    <!-- End PreHeader Left -->
                </div>

                <div class="col-md-6 mt-3 mt-md-0">
                      <!-- Start PreHeader Right -->
                    <div class="preheader-right-wrap">
                        <nav id="site-settings">
                            <ul class="nav justify-content-center justify-content-md-end">
                                <a href="login.jsp">Click Here to Login on or Register Please</a>
                              
                                <li class="dropdown-show"><a href="#" class="arrow-toggle"><img
                                        src="assets/img/icons/flag/en.png" alt="English"/> English</a>
                                    <ul class="dropdown-nav">
                                        <li><a href="#"><img src="assets/img/icons/flag/de.png" alt="German"/>
                                            German</a></li>
                                        <li><a href="#"><img src="assets/img/icons/flag/bd.png" alt="Bengali"/> Bengali</a>
                                        </li>
                                        <li><a href="#"><img src="assets/img/icons/flag/fr.png" alt="France"/>
                                            France</a></li>
                                    </ul>
                                </li>

                            </ul>
                        </nav>
                    </div>
                    <!-- End PreHeader Right -->
                </div>
            </div>
        </div>
    </div>
    <!-- End PreHeader Area -->

</header>
</head>
<body>
	<%@ include file="index_top.jsp"%>
	<div id="middle">
		<div class="p_left">
			<!--商品分类-->
			<%@ include file="index_product_sort.jsp"%>
			<!--商品分类结束-->

			<div class="pre_look">
				<h3>Recently Visit</h3>
				
				<dl>
					<c:forEach items="${reclist}" var="p" end="3">
						<dt>
							<img style="width: 54px; height: 54px;" src="${p.hp_file_name}" />
						</dt>
						<dd>
							<a href="pview">${p.hp_name}</a>
						</dd>
					</c:forEach>
				</dl>
			</div>
		</div>

		<div class="p_center">
			<div id="wrapper">
				<div id="focus">
					<ul>
						<li><a href="#"><img src="images/T1.jpg" /></a></li>
						<li><a href="#"><img src="images/T2.jpg" /></a></li>
						<li><a href="#"><img src="images/T3.jpg" /></a></li>
						<li><a href="#"><img src="images/T4.jpg" /></a></li>
						<li><a href="#"><img src="images/T5.jpg" /></a></li>
					</ul>
				</div>
			</div>
			<div class="p_list">
				<div class="p_info">
					<img src="images/icon_sale.png" />List of Products
				</div>
			</div>

			<ul class="product2">
				<c:if test="${requestScope.proolist.size()==0}">
					<h3 style="width: 500px; text-align: center; line-height: 150px">Cannot be found！</h3>
				</c:if>
				<c:set value="${requestScope.proolist}" var="products"></c:set>
				<c:forEach items="${products}" var="p">
					<li>
						<dl>
							<dt>
								<a href="pview?pid=${p.hp_id}" target="_self"><img
									src="${p.hp_file_name}" /></a>
							</dt>
							<dd class="title">
								<a href="pview?pid=${p.hp_id}" target="_self">${p.hp_name}</a>
							</dd>
							<dd class="price">￥${p.hp_price}</dd>
						</dl>
					</li>

				</c:forEach>

			</ul>

			<!--分页-->
			<div class="pager">
				<ul>
					<ul>
						<li><a href="javascript:lastPage()" id="lastPage">last page</a></li>
						<c:forEach items="${requestScope.pages}" var="pl">
							<li><a href="ref?page=${pl}&cate=${requestScope.cate}&pid=${requestScope.pid}&pcid=${requestScope.pid}">${pl}</a></li>
						</c:forEach>
						<li><a href="javascript:nextPage()" id="nextPage">next page</a></li>
					</ul>
				</ul>
				<input type="hidden" id="cate" value="${requestScope.cate}" />
				<input type="hidden" id="pid" value="${requestScope.pid}" />
				<input type="hidden" id="totalPage" value="${totalPage}" /> 
				<input type="hidden" id="currentPage" value="${page}" /> 
				<input type="hidden" id="queryName" value="" />
			</div>
		</div>

		<div id="p_right">
			<%@ include file="index_news.jsp"%>
			<%@ include file="hotproduct.jsp"%>
		</div>
	</div>
	
	
<!--== Start New, Feature Products & Testimonial Area ==-->
<section id="new-feature-pro-reviews">
    <div class="container">
        <div class="row">
            <!-- Start New Products Area -->
            <div class="col-lg-4 col-sm-6">
                <div id="new-products-area">
                    <!-- Section Title -->
                    <div class="section-title-wrap style-two">
                        <h2>Testimonials</h2>
                    </div>

                    <!-- Start Single Testimonial Item -->
                            <div class="single-testimonial-item text-center">
                                <div class="testimonial-avatar">
                                    <img src="assets/img/testimonials/testimonial-3.jpg" alt="Client Avatar"/>
                                </div>
                                <div class="testimonial-quote">
                                    <p>CHIC is the best brand I have created. It is famous for its low price and high quality. We have been authorized to cooperate with many luxury brands and cosmetic brands in the world. Our goal is to make all women use cosmetic products suitable for themselves and find the most beautiful themselves.</p>
                                    <h4 class="testimonial-author">Zihan Zhao <span
                                            class="title">- CEO of CHIC</span></h4>
                                </div>
                            </div>
                            <!-- End Single Testimonial Item -->

                     
                </div>
            </div>
            <!-- End New Products Area -->

            <!-- Start Feature Products Area -->
            <div class="col-lg-4 col-sm-6">
                <div id="feature-products-area">
                    <!-- Section Title -->
                    <div class="section-title-wrap style-two">
                        <h2>Testimonials</h2>
                    </div>

                  <!-- Start Single Testimonial Item -->
                            <div class="single-testimonial-item text-center">
                                <div class="testimonial-avatar">
                                    <img src="assets/img/testimonials/testimonial-1.jpg" alt="Client Avatar"/>
                                </div>
                                <div class="testimonial-quote">
                                    <p>CHIC has been amazing, helping me with several issues
                                        I came across and got them solved almost the same day. The quality and the quantity help the price get as low as possible.A pleasure to work with
                                        them!</p>
                                    <h4 class="testimonial-author">Wen Liu <span
                                            class="title">- Celebrity of CHIC</span></h4>
                                </div>
                            </div>
                            <!-- End Single Testimonial Item -->
							
                        
                </div>
            </div>
            <!-- End Feature Products Area -->
			
            <!-- Start Testimonials Area -->
            <div class="col-lg-4">
                <div id="testimonial-wrapper">
                    <!-- Section Title -->
                    <div class="section-title-wrap style-two">
                        <h2>Testimonials</h2>
                    </div>

                    <!-- Testimonials Content -->
                    <div class="testimonial-content">
                       
                          
                            <!-- Start Single Testimonial Item -->
                            <div class="single-testimonial-item text-center">
                                <div class="testimonial-avatar">
                                    <img src="assets/img/testimonials/testimonial-2.jpg" alt="Client Avatar"/>
                                </div>
                                <div class="testimonial-quote">
                                    <p>CHIC is the best in the area in my opinion.It gathers most and the best brands and products.And the price is as low as possible.It gives cosumers some instructions for them to shop and find what's most proper for them.I like it very much!</p>
                                    <h4 class="testimonial-author">Xiaowen Ju <span
                                            class="title">- Chinese Model</span></h4>
                                </div>
                            </div>
                            <!-- End Single Testimonial Item -->

							
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Testimonials Area -->

        </div>
    </div>
</section>
<!--== End New, Feature Products & Testimonial Area ==-->
	
	
	
<!--== Start Instagram Feed Area ==-->
<section id="instagram-feed-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="instagram-content-header">
                    <h3><span>@C H I C </span> </h3>
                    <em>Follow us on instagram</em>
                </div>

                <div class="instagram-feed-thumb">
                    <div id="instafeed" class="instagram-carousel" data-userid="6665768655"
                         data-accesstoken="6665768655.1677ed0.313e6c96807c45d8900b4f680650dee5">
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--== End Instagram Feed Area ==-->
	
	
	
	
<!--== Start Brand Carousel Area ==-->
<div class="brand-logo-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="brand-logo-wrapper">
                    <div class="brand-logo-carousel">
                        <!-- Single Brand Logo Start -->
                        <div class="single-brand-item">
                            <img src="assets/img/brand-logo/brand1.png" alt="brand"/>
                        </div>
                        <!-- Single Brand Logo End -->

                        <!-- Single Brand Logo Start -->
                        <div class="single-brand-item">
                            <img src="assets/img/brand-logo/brand2.png" alt="brand"/>
                        </div>
                        <!-- Single Brand Logo End -->

                        <!-- Single Brand Logo Start -->
                        <div class="single-brand-item">
                           <img src="assets/img/brand-logo/brand3.png" alt="brand"/>
                        </div>
                        <!-- Single Brand Logo End -->

                        <!-- Single Brand Logo Start -->
                        <div class="single-brand-item">
                           <img src="assets/img/brand-logo/brand4.png" alt="brand"/>
                        </div>
                        <!-- Single Brand Logo End -->

                        <!-- Single Brand Logo Start -->
                        <div class="single-brand-item">
                            <img src="assets/img/brand-logo/brand5.png" alt="brand"/>
                        </div>
                        <!-- Single Brand Logo End -->

                        <!-- Single Brand Logo Start -->
                        <div class="single-brand-item">
                            <img src="assets/img/brand-logo/brand6.png" alt="brand"/>
                        </div>
                        <!-- Single Brand Logo End -->

                        <!-- Single Brand Logo Start -->
                        <div class="single-brand-item">
                            <img src="assets/img/brand-logo/brand7.png" alt="brand"/>
                        </div>
                        <!-- Single Brand Logo End -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--== End Brand Carousel Area ==-->

<!--== Start Footer Section ===-->
<footer id="footer-area">
    <!-- Start Newsletter Area -->
    <div class="newsletter-area-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 m-auto text-center">
                    <div class="newsletter-content-wrap">
                        <h2>Newsletter</h2>
                        <p>Be the first to hear about new styles and offers and see how you’ve helped.</p>
						<h2>Email us 888888@chic.com</h2>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Newsletter Area -->
</footer>
<!--== End Footer Section ===-->

<!-- Scroll to Top Start -->
<a href="#" class="scrolltotop"><i class="fa fa-angle-double-up"></i></a>
<!-- Scroll to Top End -->

<!--=======================Javascript============================-->
<!--=== Jquery Min Js ===-->
<script src="assets/js/vendor/jquery-3.3.1.min.js"></script>
<!--=== Jquery Migrate Min Js ===-->
<script src="assets/js/vendor/jquery-migrate-1.4.1.min.js"></script>
<!--=== Popper Min Js ===-->
<script src="assets/js/vendor/popper.min.js"></script>
<!--=== Bootstrap Min Js ===-->
<script src="assets/js/vendor/bootstrap.min.js"></script>
<!--=== Plugins Js ===-->
<script src="assets/js/plugins.js"></script>
<!--=== Ajax Mail Js ===-->
<script src="assets/js/ajax-mail.js"></script>

<!--=== Active Js ===-->
<script src="assets/js/active.js"></script>
</body>
</html>