<%@page import="com.zhy.factory.DaoFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>爱看图书商城</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Favicon -->
		<link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">

		<!-- all css here -->
		<!-- bootstrap v3.3.6 css -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
		<!-- animate css -->
        <link rel="stylesheet" href="css/animate.css">
		<!-- meanmenu css -->
        <link rel="stylesheet" href="css/meanmenu.min.css">
		<!-- owl.carousel css -->
        <link rel="stylesheet" href="css/owl.carousel.css">
		<!-- font-awesome css -->
        <link rel="stylesheet" href="css/font-awesome.min.css">
		<!-- flexslider.css-->
        <link rel="stylesheet" href="css/flexslider.css">
		<!-- chosen.min.css-->
        <link rel="stylesheet" href="css/chosen.min.css">
		<!-- style css -->
		<link rel="stylesheet" href="style.css">
		<!-- responsive css -->
        <link rel="stylesheet" href="css/responsive.css">
		<!-- modernizr css -->
        <script src="js/vendor/modernizr-2.8.3.min.js"></script>
    </head>
    <body class="product-details">

     	<%@ include file="header.jsp" %>
		<!-- breadcrumbs-area-start -->
		<div class="breadcrumbs-area mb-70">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="breadcrumbs-menu">
							<ul>
								<li><a href="index.html">首页</a></li>
								<li><a   class="active">产品详情</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- breadcrumbs-area-end -->
		<!-- product-main-area-start -->
		<div class="product-main-area mb-70">
			<div class="container">
				<div class="row">
					<div class="col-lg-9 col-md-9 col-sm-8 col-xs-12">
						<!-- product-main-area-start -->
						<div class="product-main-area">
							<div class="row">
								<div class="col-lg-5 col-md-5 col-sm-6 col-xs-12">
									<div class="flexslider">
										<ul class="slides">
											<li data-thumb="${pageContext.request.contextPath }${book.cover}">
											  <img src="${pageContext.request.contextPath }${book.cover}" alt="book" />
											</li>
											<li data-thumb="img/thum-2/4.jpg">
											  <img src="img/flex/5.jpg" alt="book" />
											</li>
											<li data-thumb="img/thum-2/2.jpg">
											  <img src="img/flex/2.jpg" alt="book" />
											</li>
											<li data-thumb="img/thum-2/5.jpg">
											  <img src="img/flex/5.jpg" alt="book" />
											</li>
										</ul>
									</div>
								</div>
								<div class="col-lg-7 col-md-7 col-sm-6 col-xs-12">
									<div class="product-info-main">
										<div class="page-title">
											<h1>${book.name }</h1>
										</div>
										<div class="product-info-stock-sku">
											<div class="product-attribute">
												<span>库存：</span>
												<span class="value">${book.stock }</span>
											</div>
										</div>
										<div class="product-reviews-summary">
											<div class="rating-summary">
												<a><i class="fa fa-star"></i></a>
												<a><i class="fa fa-star"></i></a>
												<a><i class="fa fa-star"></i></a>
												<a><i class="fa fa-star"></i></a>
												<a><i class="fa fa-star"></i></a>
												
											</div>
											<div class="reviews-actions">
												<a >推荐指数</a>
												<a  class="view">五星好评</a>
											</div>
										</div>
										<div class="product-info-price">
											<div class="price-final">
												<span>￥${book.price }</span>
												<span class="old-price">￥${book.price+10 }</span>
											</div>
										</div>
										<div class="product-add-form">
											<form action="#">
											
												<a href="${pageContext.request.contextPath }/CartServlet?method=add&id=${book.id}">加入购物车</a>
											</form>
										</div>
										<div class="product-social-links">
											<div class="product-addto-links-text">
												<p>${book.introduction }</p>
											</div>
										</div>
									</div>
								</div>
							</div>	
						</div>
						<!-- product-main-area-end -->
						
						<!-- new-book-area-start -->
						<div class="new-book-area mt-60">
							<div class="section-title text-center mb-30">
								<h3>相关推荐</h3>
							</div>
							<div class="tab-active-2 owl-carousel">
								<!-- single-product-start -->
								<div class="product-wrapper">
									<div class="product-img">
										<a  >
											<img src="img/product/1.jpg" alt="book" class="primary" />
										</a>
										<div class="quick-view">
                                            <a class="action-view"   data-target="#productModal" data-toggle="modal" title="Quick View">
                                                <i class="fa fa-search-plus"></i>
                                            </a>
                                        </div>
                                        <div class="product-flag">
                                            <ul>
                                                <li><span class="sale">新品</span></li>
                                                <li><span class="discount-percentage">-5%</span></li>
                                            </ul>
                                        </div>
									</div>
									<div class="product-details text-center">
										<div class="product-rating">
											<ul>
												<li><a  ><i class="fa fa-star"></i></a></li>
												<li><a  ><i class="fa fa-star"></i></a></li>
												<li><a  ><i class="fa fa-star"></i></a></li>
												<li><a  ><i class="fa fa-star"></i></a></li>
												<li><a  ><i class="fa fa-star"></i></a></li>
											</ul>
										</div>
										<h4><a  >Joust Duffle Bag</a></h4>
										<div class="product-price">
											<ul>
												<li>$60.00</li>
											</ul>
										</div>
									</div>
									<div class="product-link">
										<div class="product-button">
											<a   title="Add to cart"><i class="fa fa-shopping-cart"></i>加入购物车</a>
										</div>
										<div class="add-to-link">
                                            <ul>
                                                <li><a href="product-details.html" title="Details"><i class="fa fa-external-link"></i></a></li>
                                            </ul>
                                        </div>
									</div>	
								</div>
								<!-- single-product-end -->
								<!-- single-product-start -->
								<div class="product-wrapper">
									<div class="product-img">
										<a  >
											<img src="img/product/3.jpg" alt="book" class="primary" />
										</a>
										<div class="quick-view">
                                            <a class="action-view"   data-target="#productModal" data-toggle="modal" title="Quick View">
                                                <i class="fa fa-search-plus"></i>
                                            </a>
                                        </div>
                                        <div class="product-flag">
                                            <ul>
                                                <li><span class="sale">新品</span></li>
                                            </ul>
                                        </div>
									</div>
									<div class="product-details text-center">
										<div class="product-rating">
											<ul>
												<li><a  ><i class="fa fa-star"></i></a></li>
												<li><a  ><i class="fa fa-star"></i></a></li>
												<li><a  ><i class="fa fa-star"></i></a></li>
												<li><a  ><i class="fa fa-star"></i></a></li>
												<li><a  ><i class="fa fa-star"></i></a></li>
											</ul>
										</div>
										<h4><a  >Chaz Kangeroo Hoodie</a></h4>
										<div class="product-price">
											<ul>
												<li>$52.00</li>
											</ul>
										</div>
									</div>
									<div class="product-link">
										<div class="product-button">
											<a   title="Add to cart"><i class="fa fa-shopping-cart"></i>加入购物车</a>
										</div>
										<div class="add-to-link">
                                            <ul>
                                                <li><a href="product-details.html" title="Details"><i class="fa fa-external-link"></i></a></li>
                                            </ul>
                                        </div>
									</div>	
								</div>
								<!-- single-product-end -->
								<!-- single-product-start -->
								<div class="product-wrapper">
									<div class="product-img">
										<a  >
											<img src="img/product/5.jpg" alt="book" class="primary" />
										</a>
										<div class="quick-view">
                                            <a class="action-view"   data-target="#productModal" data-toggle="modal" title="Quick View">
                                                <i class="fa fa-search-plus"></i>
                                            </a>
                                        </div>
                                        <div class="product-flag">
                                            <ul>
                                                <li><span class="discount-percentage">-5%</span></li>
                                            </ul>
                                        </div>
									</div>
									<div class="product-details text-center">
										<div class="product-rating">
											<ul>
												<li><a  ><i class="fa fa-star"></i></a></li>
												<li><a  ><i class="fa fa-star"></i></a></li>
												<li><a  ><i class="fa fa-star"></i></a></li>
												<li><a  ><i class="fa fa-star"></i></a></li>
												<li><a  ><i class="fa fa-star"></i></a></li>
											</ul>
										</div>
										<h4><a  >Set of Sprite Yoga Straps</a></h4>
										<div class="product-price">
											<ul>
												<li> <span>Starting at</span>$34.00</li>
											</ul>
										</div>
									</div>
									<div class="product-link">
										<div class="product-button">
											<a   title="Add to cart"><i class="fa fa-shopping-cart"></i>加入购物车</a>
										</div>
										<div class="add-to-link">
                                            <ul>
                                                <li><a href="product-details.html" title="Details"><i class="fa fa-external-link"></i></a></li>
                                            </ul>
                                        </div>
									</div>	
								</div>
								<!-- single-product-end -->
								<!-- single-product-start -->
								<div class="product-wrapper">
									<div class="product-img">
										<a  >
											<img src="img/product/7.jpg" alt="book" class="primary" />
										</a>
										<div class="quick-view">
                                            <a class="action-view"   data-target="#productModal" data-toggle="modal" title="Quick View">
                                                <i class="fa fa-search-plus"></i>
                                            </a>
                                        </div>
                                        <div class="product-flag">
                                            <ul>
                                                <li><span class="sale">新品</span></li>
                                                <li><span class="discount-percentage">-5%</span></li>
                                            </ul>
                                        </div>
									</div>
									<div class="product-details text-center">
										<div class="product-rating">
											<ul>
												<li><a  ><i class="fa fa-star"></i></a></li>
												<li><a  ><i class="fa fa-star"></i></a></li>
												<li><a  ><i class="fa fa-star"></i></a></li>
												<li><a  ><i class="fa fa-star"></i></a></li>
												<li><a  ><i class="fa fa-star"></i></a></li>
											</ul>
										</div>
										<h4><a  >Strive Shoulder Pack</a></h4>
										<div class="product-price">
											<ul>
												<li>$30.00</li>
												<li class="old-price">$32.00</li>
											</ul>
										</div>
									</div>
									<div class="product-link">
										<div class="product-button">
											<a   title="Add to cart"><i class="fa fa-shopping-cart"></i>加入购物车</a>
										</div>
										<div class="add-to-link">
                                            <ul>
                                                <li><a href="product-details.html" title="Details"><i class="fa fa-external-link"></i></a></li>
                                            </ul>
                                        </div>
									</div>	
								</div>
								<!-- single-product-end -->	
							</div>
						</div>
						<!-- new-book-area-start -->
					</div>
					<div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
						<div class="shop-left">
							<div class="left-title mb-20">
								<h4>相关产品</h4>
							</div>
							<div class="random-area mb-30">
								<div class="product-active-2 owl-carousel">
									<div class="product-total-2">
										<div class="single-most-product bd mb-18">
											<div class="most-product-img">
												<a  ><img src="img/product/20.jpg" alt="book" /></a>
											</div>
											<div class="most-product-content">
												<div class="product-rating">
													<ul>
														<li><a  ><i class="fa fa-star"></i></a></li>
														<li><a  ><i class="fa fa-star"></i></a></li>
														<li><a  ><i class="fa fa-star"></i></a></li>
														<li><a  ><i class="fa fa-star"></i></a></li>
														<li><a  ><i class="fa fa-star"></i></a></li>
													</ul>
												</div>
												<h4><a  >Endeavor Daytrip</a></h4>
												<div class="product-price">
													<ul>
														<li>$30.00</li>
														<li class="old-price">$33.00</li>
													</ul>
												</div>
											</div>
										</div>
										<div class="single-most-product bd mb-18">
											<div class="most-product-img">
												<a  ><img src="img/product/21.jpg" alt="book" /></a>
											</div>
											<div class="most-product-content">
												<div class="product-rating">
													<ul>
														<li><a  ><i class="fa fa-star"></i></a></li>
														<li><a  ><i class="fa fa-star"></i></a></li>
														<li><a  ><i class="fa fa-star"></i></a></li>
														<li><a  ><i class="fa fa-star"></i></a></li>
														<li><a  ><i class="fa fa-star"></i></a></li>
													</ul>
												</div>
												<h4><a  >Savvy Shoulder Tote</a></h4>
												<div class="product-price">
													<ul>
														<li>$30.00</li>
														<li class="old-price">$35.00</li>
													</ul>
												</div>
											</div>
										</div>
										<div class="single-most-product">
											<div class="most-product-img">
												<a  ><img src="img/product/22.jpg" alt="book" /></a>
											</div>
											<div class="most-product-content">
												<div class="product-rating">
													<ul>
														<li><a  ><i class="fa fa-star"></i></a></li>
														<li><a  ><i class="fa fa-star"></i></a></li>
														<li><a  ><i class="fa fa-star"></i></a></li>
														<li><a  ><i class="fa fa-star"></i></a></li>
														<li><a  ><i class="fa fa-star"></i></a></li>
													</ul>
												</div>
												<h4><a  >Compete Track Tote</a></h4>
												<div class="product-price">
													<ul>
														<li>$35.00</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
									<div class="product-total-2">
										<div class="single-most-product bd mb-18">
											<div class="most-product-img">
												<a  ><img src="img/product/23.jpg" alt="book" /></a>
											</div>
											<div class="most-product-content">
												<div class="product-rating">
													<ul>
														<li><a  ><i class="fa fa-star"></i></a></li>
														<li><a  ><i class="fa fa-star"></i></a></li>
														<li><a  ><i class="fa fa-star"></i></a></li>
														<li><a  ><i class="fa fa-star"></i></a></li>
														<li><a  ><i class="fa fa-star"></i></a></li>
													</ul>
												</div>
												<h4><a  >Voyage Yoga Bag</a></h4>
												<div class="product-price">
													<ul>
														<li>$30.00</li>
														<li class="old-price">$33.00</li>
													</ul>
												</div>
											</div>
										</div>
										<div class="single-most-product bd mb-18">
											<div class="most-product-img">
												<a  ><img src="img/product/24.jpg" alt="book" /></a>
											</div>
											<div class="most-product-content">
												<div class="product-rating">
													<ul>
														<li><a  ><i class="fa fa-star"></i></a></li>
														<li><a  ><i class="fa fa-star"></i></a></li>
														<li><a  ><i class="fa fa-star"></i></a></li>
														<li><a  ><i class="fa fa-star"></i></a></li>
														<li><a  ><i class="fa fa-star"></i></a></li>
													</ul>
												</div>
												<h4><a  >Impulse Duffle</a></h4>
												<div class="product-price">
													<ul>
														<li>$70.00</li>
														<li class="old-price">$74.00</li>
													</ul>
												</div>
											</div>
										</div>
										<div class="single-most-product">
											<div class="most-product-img">
												<a  ><img src="img/product/22.jpg" alt="book" /></a>
											</div>
											<div class="most-product-content">
												<div class="product-rating">
													<ul>
														<li><a  ><i class="fa fa-star"></i></a></li>
														<li><a  ><i class="fa fa-star"></i></a></li>
														<li><a  ><i class="fa fa-star"></i></a></li>
														<li><a  ><i class="fa fa-star"></i></a></li>
														<li><a  ><i class="fa fa-star"></i></a></li>
													</ul>
												</div>
												<h4><a  >Fusion Backpack</a></h4>
												<div class="product-price">
													<ul>
														<li>$59.00</li>
													</ul>
												</div>
											</div>
										</div>
									</div>	
								</div>
							</div>
							<div class="banner-area mb-30">
								<div class="banner-img-2">
									<a  ><img src="img/banner/33.jpg" alt="banner" /></a>
								</div>
							</div>
							<div class="left-title-2 mb-30">
								<h2>Compare Products</h2>
								<p>You have no items to compare.</p>
							</div>
							<div class="left-title-2">
								<h2>My Wish List</h2>
								<p>You have no items in your wish list.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- product-main-area-end -->

		
		<!-- footer-area-end -->
		<!-- Modal -->
        <div class="modal fade" id="productModal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">x</span></button>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-5 col-sm-5 col-xs-12">
                                <div class="modal-tab">
                                    <div class="product-details-large tab-content">
                                        <div class="tab-pane active" id="image-1">
                                            <img src="img/product/quickview-l4.jpg" alt="" />
                                        </div>
                                        <div class="tab-pane" id="image-2">
                                            <img src="img/product/quickview-l2.jpg" alt="" />
                                        </div>
                                        <div class="tab-pane" id="image-3">
                                            <img src="img/product/quickview-l3.jpg" alt="" />
                                        </div>
                                        <div class="tab-pane" id="image-4">
                                            <img src="img/product/quickview-l5.jpg" alt="" />
                                        </div>
                                    </div>
                                    <div class="product-details-small quickview-active owl-carousel">
                                        <a class="active" href="#image-1"><img src="img/product/quickview-s4.jpg" alt="" /></a>
                                        <a href="#image-2"><img src="img/product/quickview-s2.jpg" alt="" /></a>
                                        <a href="#image-3"><img src="img/product/quickview-s3.jpg" alt="" /></a>
                                        <a href="#image-4"><img src="img/product/quickview-s5.jpg" alt="" /></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-7 col-sm-7 col-xs-12">
                                <div class="modal-pro-content">
                                    <h3>Chaz Kangeroo Hoodie3</h3>
                                    <div class="price">
                                        <span>$70.00</span>
                                    </div>
                                    <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet.</p>	
                                    <div class="quick-view-select">
                                        <div class="select-option-part">
                                            <label>Size*</label>
                                            <select class="select">
                                                <option value="">S</option>
                                                <option value="">M</option>
                                                <option value="">L</option>
                                            </select>
                                        </div>
                                        <div class="quickview-color-wrap">
                                            <label>Color*</label>
                                            <div class="quickview-color">
                                                <ul>
                                                    <li class="blue">b</li>
                                                    <li class="red">r</li>
                                                    <li class="pink">p</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <form action="#">
                                        <input type="number" value="1" />
                                        <button>Add to cart</button>
                                    </form>
                                    <span><i class="fa fa-check"></i> In stock</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal end -->
		
		
		
		
		
		<!-- all js here -->
		<!-- jquery latest version -->
        <script src="js/vendor/jquery-1.12.0.min.js"></script>
		<!-- bootstrap js -->
        <script src="js/bootstrap.min.js"></script>
		<!-- owl.carousel js -->
        <script src="js/owl.carousel.min.js"></script>
		<!-- meanmenu js -->
        <script src="js/jquery.meanmenu.js"></script>
		<!-- wow js -->
        <script src="js/wow.min.js"></script>
		<!-- jquery.parallax-1.1.3.js -->
        <script src="js/jquery.parallax-1.1.3.js"></script>
		<!-- jquery.countdown.min.js -->
        <script src="js/jquery.countdown.min.js"></script>
		<!-- jquery.flexslider.js -->
        <script src="js/jquery.flexslider.js"></script>
		<!-- chosen.jquery.min.js -->
        <script src="js/chosen.jquery.min.js"></script>
		<!-- jquery.counterup.min.js -->
        <script src="js/jquery.counterup.min.js"></script>
		<!-- waypoints.min.js -->
        <script src="js/waypoints.min.js"></script>
		<!-- plugins js -->
        <script src="js/plugins.js"></script>
		<!-- main js -->
        <script src="js/main.js"></script>
    </body>
</html>
