<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cập nhật đơn hàng</title>
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
						<f:form action="editorder" modelAttribute="editOrder" method="POST">
						<table class="table table-borderless table-striped " id="myTable">
								<thead>
									<tr>
										<th>Mã Đơn hàng</th>
										<th>Ngày Mua</th>
										<th>Tổng Tiền</th>
										<th>Địa Chỉ</th>
										<th>Tên Khách Hàng</th>
										<th>Số Điện Thoại</th>
										
										<th>Trạng Thái</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
								
									<tr>
										<td>${editOrder.oderId}</td>
										<f:input path="oderId" type="hidden" value="${editOrder.oderId}"/>
										
										<td><fmt:formatDate value="${editOrder.createDate}"	pattern="dd/MM/yyyy" /></td>
										
										
										<td><fmt:formatNumber value="${editOrder.totalAmount}"	currencySymbol=""></fmt:formatNumber> VND</td>
										
										
										<td>${editOrder.address}</td>
										
										
										<td>${editOrder.customerName}</td>
										
										
										<td class="text-right">${editOrder.phoneNumber}</td>
										
										
										<td>										
										<f:select path="oderStatus">						
												<option value="${editOrder.oderStatus}">${editOrder.oderStatus}</option>
												<option value="Đang giao hàng">Đang giao hàng</option>
												<option value="Đã nhận hàng">Đã nhận hàng</option>
												<option value="Hủy đơn hàng">Hủy đơn hàng</option>
												
										</f:select>
										</td>
										<td><button type="submit"  class="btn btn-primary btn-sm" > Update </button></td>
									</tr>
								</tbody>
							</table>
							
						</f:form>
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