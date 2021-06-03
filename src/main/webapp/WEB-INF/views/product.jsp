<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản Lý Sản Phẩm</title>
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
								<thead>
									<tr>
										<th>Mã sản phẩm</th>
										<th>Tên sản phẩm</th>
										<th>Tiêu Đề</th>
										<th>Ngày tạo</th>
										<th>Thuộc danh mục</th>
										<th>Trạng thái</th>
										<th>Thao Tác</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${listPro}" var="pro">
										<tr>
                                                <td>${pro.productId}</td>
                                                <td>${pro.productName}</td>
                                                <td>${pro.productTitle}</td>
                                                <td><fmt:formatDate value="${pro.createDate}" pattern="dd/MM/yyyy"/> </td>
                                                <td>${pro.catalog.catalogName}</td>
                                                <td class="process">
                                                	<c:choose>
														<c:when test="${pro.productStatus}">Active</c:when>
														<c:otherwise>Inactive</c:otherwise>
													</c:choose>
                                                </td>                 
                                                <td>
                                                    <div class="table-data-feature">
                                                        <a href="viewproductdetail?id=${pro.productId}" class="item" data-toggle="tooltip" data-placement="top" title="View Detail">
                                                            <i class="fa fa-eye"
														aria-hidden="true"></i>
                                                        </a>
                                                        <a href="initeditpro?id=${pro.productId}" class="item" data-toggle="tooltip" data-placement="top" title="Edit">
                                                            <i class="zmdi zmdi-edit"></i>
                                                        </a>
                                                        <a href="deletepro?id=${pro.productId}" class="item" onclick="return confirm('Are You Sure?')" data-toggle="tooltip" data-placement="top" title="Delete">
                                                            <i class="zmdi zmdi-delete"></i>
                                                        </a>
                                                    </div>
                                                </td>
                                           </tr>
									</c:forEach>
								</tbody>
							</table>
							<a href="initaddpro">Add New</a>
						</div>
						<!-- END DATA TABLE                  -->
		

						
						
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
</html>