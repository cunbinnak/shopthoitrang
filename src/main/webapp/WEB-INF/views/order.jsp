<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản lý đơn hàng</title>
<%@include file="/common/admin/linkstyle.jsp"%>
</head>
<body>
	<%@ include file="/common/admin/header.jsp"%>
	<div class="main-content">
		<div class="section__content section__content--p30">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<div class="table-responsive table--no-card m-b-30">
							<table class="table table-borderless table-striped " id="myTable">
								<thead>
									<tr>
										<th>Mã Đơn hàng</th>
										<th>Tên Khách Hàng</th>
										<th>Địa chỉ</th>
										<th>Số Điện Thoại</th>
										<th>Ngày Mua</th>
										<th>Trạng Thái</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${listOrder}" var="order">
										<tr>
											<td>${order.oderId}</td>
											<td>${order.customerName}</td>
											<td>${order.address}</td>
											<td class="text-right">${order.phoneNumber}</td>
											<td><fmt:formatDate value="${order.createDate}"	pattern="dd/MM/yyyy" /></td>
											<td>${order.oderStatus}</td>
											<td>
												<div class="table-data-feature">
													<a href="vieworder?id=${order.oderId}" class="item"
														data-toggle="tooltip" data-placement="top"
														title="View Details"> <i class="fa fa-eye"
														aria-hidden="true"></i>
													</a> <a href="initeditoder?id=${order.oderId}" class="item"
														data-toggle="tooltip" data-placement="top" title="Edit">
														<i class="zmdi zmdi-edit"></i>
													</a> <a href="deleteoder?id=${order.oderId}" class="item"
														data-toggle="tooltip" data-placement="top" title="Delete"
														onclick="return confirm('Are You Sure?')"> <i
														class="zmdi zmdi-delete"></i>
													</a>
												</div>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="copyright">
						<p>
							Copyright © 2018 Colorlib. All rights reserved. Template by <a
								href="https://colorlib.com">Colorlib</a>.
						</p>
					</div>
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
	<!-- Main JS-->
	<script src="<c:url value='/template/admin/js/main.js'/>"></script>

</body>
</html>