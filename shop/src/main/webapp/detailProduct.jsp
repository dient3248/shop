<%@page import="model.SanPham"%>
<%@page import="database.SanPhamDAO"%>
<%@page import="model.KhachHang"%>
<%@page import="controller.DetailController"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="controller.HomeController"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Chi Tiết Sản Phẩm</title>
</head>
<body>
	<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Trang Chủ</title>

<!-- Google font -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700"
	rel="stylesheet">

<!-- Bootstrap -->
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

<!-- Slick -->
<link type="text/css" rel="stylesheet" href="css/slick.css" />
<link type="text/css" rel="stylesheet" href="css/slick-theme.css" />

<!-- nouislider -->
<link type="text/css" rel="stylesheet" href="css/nouislider.min.css" />

<!-- Font Awesome Icon -->
<link rel="stylesheet" href="css/font-awesome.min.css">

<link type="text/css" rel="stylesheet" href="css/style.css" />
</head>

<body>
	<!-- HEADER -->
	<header>
		<!-- TOP HEADER -->
		<div id="top-header">
			<div class="container">
				<ul class="header-links pull-left">
					<li><a href="#"><i class="fa fa-phone"></i> +84 0353494201</a></li>
					<li><a href="#"><i class="fa fa-envelope-o"></i>
							dient3248@gmail.com</a></li>
					<li><a href="#"><i class="fa fa-map-marker"></i> 237 Hoa
							Binh, Tan Phu</a></li>
				</ul>
				<ul class="header-links pull-right">

					<li>
						<%
						Object obj = session.getAttribute("khachHang");
						KhachHang khachHang = null;
						if (obj != null)
							khachHang = (KhachHang) obj;

						if (khachHang == null) {
						%>
					
					<li><a href="./register.jsp"> Đăng Ký</a></li>
					<li><a href="./login.jsp">Đăng Nhập</a></li>
					<%
					} else {
					%>

					<li><a href="./detailUser.jsp"><i class="fa fa-user-o"></i>
							<%=khachHang.getTenDangNhap()%></a></li>
					<li><a href="khach-hang?action=log-out">Đăng Xuất</a></li>
					<%
					}
					%>
					</li>
				</ul>
			</div>
		</div>
		<!-- END TOP HEADER -->

		<!-- MAIN HEADER -->
		<div id="header">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<!-- SEARCH BAR -->
					<div class="col-md-8">
						<div class="header-search">
							<form>
								<input class="input" placeholder="Tìm Kiếm">
								<button class="search-btn">Tìm Kiếm</button>
							</form>
						</div>
					</div>
					<!-- /SEARCH BAR -->

					<!-- ACCOUNT -->
					<div class="col-md-4 clearfix">
						<div class="header-ctn">
							<!-- Cart -->
							<div class="dropdown">
								<a class="dropdown-toggle" data-toggle="dropdown"
									aria-expanded="true"> <i class="fa fa-shopping-cart"></i> <span>Giỏ
										Hàng</span>
								</a>
							</div>
							<!-- /Cart -->
	</header>
	<!-- /HEADER -->



	<!-- NAVIGATION -->
	<nav id="navigation">
		<!-- container -->
		<div class="container">
			<!-- responsive-nav -->
			<div id="responsive-nav">
				<!-- NAV -->
				<ul class="main-nav nav navbar-nav">
					<li><a href="home">Trang Chủ</a></li>
					<li><a href="#">Đồng Hồ</a></li>
					<li><a href="#">Nhẫn</a></li>
					<li><a href="#">Dây Chuyền</a></li>
					<li><a href="#">Vòng</a></li>
					<li><a href="#">Lắc</a></li>
				</ul>
				<!-- /NAV -->
			</div>
			<!-- /responsive-nav -->
		</div>
		<!-- /container -->
	</nav>
	<!-- /NAVIGATION -->


	<!-- SECTION -->

	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<!-- Product main img -->
				<div class="col-md-5 col-md-push-2">
					<div id="product-main-img">
						<div class="product-preview">
							<img src="${detail.hinhAnh}" alt="">
						</div>

						<div class="product-preview">
							<img src="${detail.hinhAnh}" alt="">
						</div>

						<div class="product-preview">
							<img src="${detail.hinhAnh}" alt="">
						</div>
						<div class="product-preview">
							<img src="${detail.hinhAnh}" alt="">
						</div>
						<div class="product-preview">
							<img src="${detail.hinhAnh}" alt="">
						</div>

					</div>
				</div>
				<!-- /Product main img -->

				<!-- Product thumb imgs -->
				<div class="col-md-2  col-md-pull-5">
					<div id="product-imgs">
						<div class="product-preview">
							<img src="${detail.hinhAnh }" alt="">
						</div>

						<div class="product-preview">
							<img src="${detail.hinhAnh }" alt="">
						</div>

						<div class="product-preview">
							<img src="${detail.hinhAnh}" alt="">
						</div>
						<div class="product-preview">
							<img src="${detail.hinhAnh}" alt="">
						</div>
						<div class="product-preview">
							<img src="${detail.hinhAnh}" alt="">
						</div>
					</div>
				</div>
				<!-- /Product thumb imgs -->

				<!-- Product details -->
				<div class="col-md-5">
					<div class="product-details">
						<h2 class="product-name">${detail.tenSanPham}</h2>
						<div>
							<div class="product-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star-o"></i>
							</div>
						</div>
						<div>
							<h3 class="product-price">${detail.giaBan }đ</h3>
						</div>
						<!-- <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p> -->

						<div class="product-options">
							<label> Kích Cỡ <select class="input-select">
									<option value="size1">1</option>
									<option value="size2">2</option>
									<option value="size3">3</option>
									<option value="size4">4</option>
									<option value="size5">5</option>
							</select>
							</label> <label> Màu <select class="input-select">
									<option value="0">Red</option>
							</select>
							</label>
						</div>

						<div class="add-to-cart">
							<div class="qty-label">
								Số Lượng:
								<div class="input-number">
									<input type="hidden" />${detail.soLuong }
								</div>
							</div>
							<button class="add-to-cart-btn">
								<i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng
							</button>
						</div>

						<a href="cart">
							<div class="add-to-cart">
								<button class="add-to-cart-btn">Mua Ngay</button>
							</div>
						</a>

						<ul class="product-links">
							<li>Share:</li>
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
							<li><a href="#"><i class="fa fa-envelope"></i></a></li>
						</ul>

					</div>
				</div>
				<!-- /Product details -->

				<!-- Product tab -->
				<div class="col-md-12">
					<div id="product-tab">
						<!-- product tab nav -->
						<ul class="tab-nav">
							<li class="active"><a data-toggle="tab" href="#tab1">Mô
									tả</a></li>
						</ul>
						<!-- /product tab nav -->

						<!-- product tab content -->
						<div class="tab-content">
							<!-- tab1  -->
							<div id="tab1" class="tab-pane fade in active">
								<div class="row">
									<div class="col-md-12">
										<p>${detail.moTa }</p>
									</div>
								</div>
							</div>
							<!-- /tab1  -->
						</div>
						<!-- /product tab content  -->
					</div>
				</div>
				<!-- /product tab -->
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /SECTION -->

	<!-- Section -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">

				<div class="col-md-12">
					<div class="section-title text-center">
						<h3 class="title"></h3>
					</div>
				</div>






			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /Section -->


	<!-- FOOTER -->
	<footer id="footer">
		<!-- top footer -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-3 col-xs-6">
						<div class="footer">
							<h3 class="footer-title">About Us</h3>
							<p></p>
							<ul class="footer-links">
								<li><a href="#"><i class="fa fa-map-marker"></i>237 Hoa
										Binh, Tan Phu</a></li>
								<li><a href="#"><i class="fa fa-phone"></i>+84
										0353494201</a></li>
								<li><a href="#"><i class="fa fa-envelope-o"></i>dient3248@gmail.com</a></li>
							</ul>
						</div>
					</div>

					<div class="col-md-3 col-xs-6">
						<div class="footer">
							<h3 class="footer-title">Danh Mục Sản Phẩm</h3>
							<ul class="footer-links">
								<li><a href="#">Đồng Hồ</a></li>
								<li><a href="#">Nhẫn</a></li>
								<li><a href="#">Dây Chuyền</a></li>
								<li><a href="#">Vòng</a></li>
								<li><a href="#">Lắc</a></li>
							</ul>
						</div>
					</div>

					<div class="clearfix visible-xs"></div>

					<div class="col-md-3 col-xs-6">
						<div class="footer">
							<h3 class="footer-title">Thông Tin</h3>
							<ul class="footer-links">
								<li><a href="#">About Us</a></li>
								<li><a href="#">Contact Us</a></li>
								<li><a href="#">Privacy Policy</a></li>
								<li><a href="#">Orders and Returns</a></li>
								<li><a href="#">Terms & Conditions</a></li>
							</ul>
						</div>
					</div>

					<div class="col-md-3 col-xs-6">
						<div class="footer">
							<h3 class="footer-title">Dịch Vụ</h3>
							<ul class="footer-links">
								<li><a href="#">My Account</a></li>
								<li><a href="#">View Cart</a></li>
								<li><a href="#">Wishlist</a></li>
								<li><a href="#">Track My Order</a></li>
								<li><a href="#">Help</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /top footer -->

		<!-- bottom footer -->
		<div id="bottom-footer" class="section">
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12 text-center">
						<ul class="footer-payments">
							<li><a href="#"><i class="fa fa-cc-visa"></i></a></li>
							<li><a href="#"><i class="fa fa-credit-card"></i></a></li>
							<li><a href="#"><i class="fa fa-cc-paypal"></i></a></li>
							<li><a href="#"><i class="fa fa-cc-mastercard"></i></a></li>
							<li><a href="#"><i class="fa fa-cc-discover"></i></a></li>
							<li><a href="#"><i class="fa fa-cc-amex"></i></a></li>
						</ul>
						<!-- <span class="copyright">
							Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0.
							Copyright &copy;
							<script>document.write(new Date().getFullYear());</script> All rights reserved | This
							template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">Colorlib</a>
						
						</span> -->
					</div>
				</div>
				<!-- /row -->
			</div>
			s
			<!-- /container -->
		</div>
		<!-- /bottom footer -->
	</footer>
	<!-- /FOOTER -->

	<!-- jQuery Plugins -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/slick.min.js"></script>
	<script src="js/nouislider.min.js"></script>
	<script src="js/jquery.zoom.min.js"></script>
	<script src="js/main.js"></script>


</body>
</html>