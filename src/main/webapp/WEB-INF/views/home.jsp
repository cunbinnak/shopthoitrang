<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang Chu</title>
<link href="<c:url value='/template/admin/css/font-face.css'/>"
	rel="stylesheet" media="all">
<link
	href="<c:url value='/template/admin/vendor/font-awesome-4.7/css/font-awesome.min.css'/>"
	rel="stylesheet" media="all">

<link
	href="<c:url value='/template/admin/vendor/font-awesome-5/css/fontawesome-all.min.css'/>"
	rel="stylesheet" media="all">

<link
	href="<c:url value='/template/admin/vendor/mdi-font/css/material-design-iconic-font.min.css'/>"
	rel="stylesheet" media="all">
<!-- Bootstrap CSS-->
<link
	href="<c:url value='/template/admin/vendor/bootstrap-4.1/bootstrap.min.css'/>"
	rel="stylesheet" media="all">

<!-- Vendor CSS-->
<link
	href="<c:url value='/template/admin/vendor/animsition/animsition.min.css'/>"
	rel="stylesheet" media="all">

<link
	href="<c:url value='/template/admin/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css'/>"
	rel="stylesheet" media="all">
<link href="<c:url value='/template/admin/vendor/wow/animate.css'/>"
	rel="stylesheet" media="all">
<link
	href="<c:url value='/template/admin/vendor/css-hamburgers/hamburgers.min.css'/>"
	rel="stylesheet" media="all">
<link href="<c:url value='/template/admin/vendor/slick/slick.css'/>"
	rel="stylesheet" media="all">
<link
	href="<c:url value='/template/admin/vendor/select2/select2.min.css'/>"
	rel="stylesheet" media="all">
<link
	href="<c:url value='/template/admin/vendor/perfect-scrollbar/perfect-scrollbar.css'/>"
	rel="stylesheet" media="all">
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css">
<!-- Main CSS-->
<link href="<c:url value='/template/admin/css/theme.css'/>"
	rel="stylesheet" media="all">
</head>
<body>
	<%@ include file="/common/admin/header.jsp"%>
	<div class="main-content">
		<div class="section__content section__content--p30">
			<div class="container-fluid">
				<section class="statistic statistic2">
					<div class="container">
						<div class="row">
							<div class="col-md-6 col-lg-3">
								<div class="statistic__item statistic__item--green">
									<h2 class="number">10,368</h2>
									<span class="desc">lượng người truy cập</span>
									<div class="icon">
										<i class="zmdi zmdi-account-o"></i>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-3">
								<div class="statistic__item statistic__item--orange">
									<h2 class="number">388,688</h2>
									<span class="desc">Số hàng đã bán</span>
									<div class="icon">
										<i class="zmdi zmdi-shopping-cart"></i>
									</div>

								</div>
							</div>
							<div class="col-md-6 col-lg-3">
								<div class="statistic__item statistic__item--blue">
									<h2 class="number">1,086</h2>
									<span class="desc">Trong Tuần</span>
									<div class="icon">
										<i class="zmdi zmdi-calendar-note"></i>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-3">
								<div class="statistic__item statistic__item--red">
									<h2 class="number">$1,060,386</h2>
									<span class="desc">Tổng thu nhập</span>
									<div class="icon">
										<i class="zmdi zmdi-money"></i>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
				<div class="row">
					<div class="col-lg-8">
						<!-- RECENT REPORT-->
						<div class="recent-report3 m-b-40">
							<div class="title-wrap">
								<h3 class="title-3">recent reports</h3>
								<div class="chart-info-wrap">
									<div class="chart-note">
										<span class="dot dot--blue"></span> <span>số lượng bán</span>
									</div>
									<div class="chart-note mr-0">
										<span class="dot dot--green"></span> <span>doanh thu</span>
									</div>
								</div>
							</div>

							<div class="filters m-b-55">
								<div
									class="rs-select2--dark rs-select2--md m-r-10 rs-select2--border">
									<select class="js-select2" name="property">
										<option selected="selected">Products Sales</option>
										<option value="">Products</option>
										<option value="">Services</option>
									</select>
									<div class="dropDownSelect2"></div>
								</div>
								<div class="rs-select2--dark rs-select2--sm rs-select2--border">
									<select class="js-select2 au-select-dark" name="time">
										<option selected="selected">All Time</option>
										<option value="">By Month</option>
										<option value="">By Day</option>
									</select>
									<div class="dropDownSelect2"></div>
								</div>
							</div>
							<div class="chart-wrap">
								<canvas id="recent-rep3-chart"></canvas>
							</div>
						</div>
						<!-- END RECENT REPORT-->
					</div>
					<div class="col-lg-4">
						<!-- CHART PERCENT-->
						<div class="chart-percent-3 m-b-40">
							<h3 class="title-3 m-b-25">chart by %</h3>
							<div class="chart-note m-b-5">
								<span class="dot dot--blue"></span> <span>products</span>
							</div>
							<div class="chart-note">
								<span class="dot dot--red"></span> <span>services</span>
							</div>
							<div class="chart-note">
								<span class="dot dot--brown"></span> <span>Earning</span>
							</div>
							<div class="chart-note">
								<span class="dot dot--gray"></span> <span>Discount</span>
							</div>
							<div class="chart-wrap m-t-60">
								<canvas id="percent-chart2"></canvas>
							</div>
						</div>
						<!-- END CHART PERCENT-->
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<!-- DATA TABLE-->
						<div class="table-responsive m-b-40">
							<table class="table table-borderless table-data3" id="myTable">
								<thead>
									<tr>
										<th>CatalogID</th>
										<th>Catalog Name</th>
										<th>description</th>
										<th>status</th>

									</tr>
								</thead>
								<tbody>
									<c:forEach items="${listCate}" var="item">
										<tr>
											<td>${item.catalogId}</td>
											<td>${item.catalogName}</td>
											<td>${item.catalogDes}</td>
											<td class="process">${item.catalogStatus}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<!-- END DATA TABLE-->
					</div>
				</div>
				<h3>Product</h3>
				<div class="row">
					<div class="col-md-12">
						<!-- DATA TABLE-->
						<div class="table-responsive m-b-40">
							<table class="table table-borderless table-data3" id="myTable1">
								<thead>
									<tr>
										<th>Mã sản phẩm</th>
										<th>Tên sản phẩm</th>
										<th>Tiêu Đề</th>
										<th>Ngày tạo</th>
										<th>Trạng thái</th>										
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${listPro}" var="pro">
										<tr>
											<td>${pro.productId}</td>
											<td>${pro.productName}</td>
											<td>${pro.titlePro}</td>
											<td>${pro.created}</td>										
											<td class="process"><c:choose>
													<c:when test="${pro.proStatus}">Active</c:when>
													<c:otherwise>Inactive</c:otherwise>
												</c:choose>
											</td>											
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<!-- END DATA TABLE-->
					</div>
				</div>
				<div class="row">
					<!--content-------->
					<!--footer------------->
					<div class="col-md-12">
						<div class="copyright">
							<p>
								Copyright © 2018 Colorlib. All rights reserved. Template by <a
									href="https://colorlib.com">Colorlib</a>.
							</p>
						</div>
					</div>
					<!--end footer--------->
				</div>
			</div>
		</div>
	</div>


	<script
		src="<c:url value='/template/admin/vendor/jquery-3.2.1.min.js'/>"></script>

	<!-- Bootstrap JS-->
	<script
		src="<c:url value='/template/admin/vendor/bootstrap-4.1/popper.min.js'/>"></script>
	<script
		src="<c:url value='/template/admin/vendor/bootstrap-4.1/bootstrap.min.js'/>"></script>
	<!-- Vendor JS       -->
	<script
		src="<c:url value='/template/admin/vendor/slick/slick.min.js'/>"></script>
	<script src="<c:url value='/template/admin/vendor/wow/wow.min.js'/>"></script>
	<script
		src="<c:url value='/template/admin/vendor/animsition/animsition.min.js'/>"></script>
	<script
		src="<c:url value='/template/admin/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js'/>"></script>
	<script
		src="<c:url value='/template/admin/vendor/counter-up/jquery.waypoints.min.js'/>"></script>
	<script
		src="<c:url value='/template/admin/vendor/counter-up/jquery.counterup.min.js'/>">
		
	</script>
	<script
		src="<c:url value='/template/admin/vendor/circle-progress/circle-progress.min.js'/>"></script>
	<script
		src="<c:url value='/template/admin/vendor/perfect-scrollbar/perfect-scrollbar.js'/>"></script>
	<script
		src="<c:url value='/template/admin/vendor/chartjs/Chart.bundle.min.js'/>"></script>
	<script
		src="<c:url value='/template/admin/vendor/select2/select2.min.js'/>">
		
	</script>
	<script type="text/javascript"
		src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#myTable').DataTable();
		});
	</script>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#myTable1').DataTable();
		});
	</script>
	<!-- Main JS-->
	<script src="<c:url value='/template/admin/js/main.js'/>"></script>
</body>
</html>