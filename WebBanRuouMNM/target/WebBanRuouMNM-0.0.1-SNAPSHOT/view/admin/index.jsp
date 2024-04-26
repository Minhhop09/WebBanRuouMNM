<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
	response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setHeader("Expires", "0");

	if (session.getAttribute("admin-username") == null) {
		response.sendRedirect(request.getContextPath() + "/admin/login");
	}
%>
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.css">

<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.js"></script>
<!-- Start header section -->
<jsp:include page="./header/header.jsp" flush="true" />
<div class="content-wrapper">

	<div class="container-fluid">
		<div class="card mt-3">
			<div class="card-content">
				<div class="row row-group m-0">
					<div class="col-12 col-lg-6 col-xl-3 border-light">
						<div class="card-body">
							<h5 class="text-white mb-0">
								${ordertheongay} <span class="float-right"><i
									class="fa fa-shopping-cart"></i></span>
							</h5>

							<p class="mb-0 text-white small-font">
								Đơn hàng trong ngày<span class="float-right"><i
									class="zmdi zmdi-long-arrow-up"></i></span>
							</p>
						</div>
					</div>
					<div class="col-12 col-lg-6 col-xl-3 border-light">
						<div class="card-body">
							<h5 class="text-white mb-0">
								${producttheongay} <span class="float-right"><i
									class="fa fa-shopping-cart"></i></span>
							</h5>

							<p class="mb-0 text-white small-font">
								Sản phẩm đã bán trong ngày<span class="float-right"><i
									class="zmdi zmdi-long-arrow-up"></i></span>
							</p>
						</div>
					</div>
					<div class="col-12 col-lg-6 col-xl-3 border-light">
						<div class="card-body">
							<h5 class="text-white mb-0">
								${pricetheongay}.000 VNĐ<span class="float-right"><i
									class="fa fa-shopping-cart"></i></span>
							</h5>

							<p class="mb-0 text-white small-font">
								Doanh thu ngày<span class="float-right"><i
									class="zmdi zmdi-long-arrow-up"></i></span>
							</p>
						</div>

					</div>

				</div>
			</div>

		</div>
		<div class="card mt-3">
			<div class="card-content">
				<div class="row row-group m-0">
					<div class="col-12 col-lg-6 col-xl-3 border-light">
						<div class="card-body">
							<h5 class="text-white mb-0">
								${ordertheothang} <span class="float-right"><i
									class="fa fa-shopping-cart"></i></span>
							</h5>

							<p class="mb-0 text-white small-font">
								Đơn hàng trong tháng<span class="float-right"><i
									class="zmdi zmdi-long-arrow-up"></i></span>
							</p>
						</div>
					</div>
					<div class="col-12 col-lg-6 col-xl-3 border-light">
						<div class="card-body">
							<h5 class="text-white mb-0">
								${producttheothang} <span class="float-right"><i
									class="fa fa-shopping-cart"></i></span>
							</h5>

							<p class="mb-0 text-white small-font">
								Sản phẩm đã bán trong tháng<span class="float-right"><i
									class="zmdi zmdi-long-arrow-up"></i></span>
							</p>
						</div>

					</div>
					<div class="col-12 col-lg-6 col-xl-3 border-light">
						<div class="card-body">
							<h5 class="text-white mb-0">
								${pricetheothang }.000 VNĐ <span class="float-right"><i
									class="fa fa-shopping-cart"></i></span>
							</h5>

							<p class="mb-0 text-white small-font">
								Doanh thu tháng <span class="float-right"><i
									class="zmdi zmdi-long-arrow-up"></i></span>
							</p>
						</div>

					</div>

				</div>
			</div>
		</div>

	</div>
	
</div>
<a href="javaScript:void();" class="back-to-top"><i
	class="fa fa-angle-double-up"></i> </a>
<div class="right-sidebar">
	<div class="switcher-icon">
		<i class="zmdi zmdi-settings zmdi-hc-spin"></i>
	</div>
	<div class="right-sidebar-content">
		<p class="mb-0">Admin background</p>
		<hr>
		<ul class="switcher">
			<li id="theme1"></li>
			<li id="theme2"></li>
			<li id="theme3"></li>
			<li id="theme4"></li>
			<li id="theme5"></li>
			<li id="theme6"></li>
		</ul>
		<p class="mb-0">Gradient background</p>
		<hr>
		<ul class="switcher">
			<li id="theme7"></li>
			<li id="theme8"></li>
			<li id="theme9"></li>
			<li id="theme10"></li>
			<li id="theme11"></li>
			<li id="theme12"></li>
			<li id="theme13"></li>
			<li id="theme14"></li>
			<li id="theme15"></li>
		</ul>
	</div>
</div>
</div>

<jsp:include page="./footer/footer.jsp" flush="true" />