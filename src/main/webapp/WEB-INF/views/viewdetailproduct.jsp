<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chi Tiết Sản Phẩm</title>
<%@include file="/common/admin/linkstyle.jsp"%>
</head>
<body>
	<%@include file="/common/admin/header.jsp"%>
	<div class="main-content">
		<div class="section__content section__content--p30">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<!-- DATA TABLE-->
						<div class="table-responsive m-b-40">
							<table class="table table-borderless table-data3" id="myTable">
								<tr>
									<td>
										<!--  anh -->
										<div>
											<img
												src="${pageContext.request.contextPath}/resources/image/${viewPro.productImg}"
												width="100%" height="auto" />
										</div>
									</td>
									<td>
										<table class="table table-borderless table-data3" id="myTable">
											<tbody>
												<tr>
													<td><b>Mã sản phẩm:</b></td>
													<td>${viewPro.productId}</td>
												</tr>
												<tr>
													<td><b>Tên sản phẩm:</b></td>
													<td>${viewPro.productName}</td>
												</tr>
												<tr>
													<td>Tiêu Đề</td>
													<td>${viewPro.productTitle}</td>
												</tr>
												<tr>
													<td>Mô Tả</td>
													<td>${viewPro.productDes}</td>
												</tr>
												<tr>
													<td>Ngày tạo</td>
													<td><fmt:formatDate value="${viewPro.createDate}"
															pattern="dd/MM/yyyy" /></td>
												</tr>
												<tr>
													<td>Giá Bán</td>
													<td><fmt:formatNumber value="${viewPro.price}" currencySymbol="" > </fmt:formatNumber> VND</td>
												</tr>
												<tr>
													<td>Thuộc danh mục</td>
													<td>${viewPro.catalog.catalogName}</td>
												</tr>
												<tr>
													<td>Trạng thái</td>
													<td class="process"><c:choose>
															<c:when test="${viewPro.productStatus}">Active</c:when>
															<c:otherwise>Inactive</c:otherwise>
														</c:choose></td>
												</tr>
											</tbody>
										</table>
									</td>
								</tr>
							</table>

						</div>
						<!-- END DATA TABLE -->
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
	<!-- Main JS-->
	<script src="<c:url value='/template/admin/js/main.js'/>"></script>
</body>
</html>tml>