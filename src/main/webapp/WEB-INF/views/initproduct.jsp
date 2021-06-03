<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm sản phẩm mới</title>
<%@include file="/common/admin/linkstyle.jsp"%>
</head>
<body>
	<%@ include file="/common/admin/header.jsp"%>
	<div class="main-content">
		<div class="section__content section__content--p30">
			<div class="container-fluid">
				<h3>Thêm Sản Phẩm mới</h3>
				<br>
				<div class="card">
					<div class="card-header">
						<strong>Sản phẩm mới</strong> 
					</div>
					<div class="card-body card-block">
						<f:form action="savepro"  modelAttribute="newPro" method="post" class="form-horizontal" enctype="multipart/form-data">							
							<div class="row form-group">
								<div class="col col-md-3">
									<f:label path="" for="ma-input" class=" form-control-label">Mã
										Sản Phẩm</f:label>
								</div>
								<div class="col-12 col-md-9">
									<f:input path="productId" type="text" id="ma-input" name="text-input"
										placeholder="Mã	Sản Phẩm"  class="form-control"/>
								</div>
							</div>
							<div class="row form-group">
								<div class="col col-md-3">
									<f:label path="" for="text-input" class=" form-control-label">Tên
										Sản Phẩm</f:label>
								</div>
								<div class="col-12 col-md-9">
									<f:input path="productName" type="text" id="text-input" name="text-input"
										placeholder="Tên Sản Phẩm" class="form-control"/>
								</div>
							</div>
							
							<div class="row form-group">
								<div class="col col-md-3">
									<f:label path="" for="title-input" class=" form-control-label">Tiêu
										Đề</f:label>
								</div>
								<div class="col-12 col-md-9">
									<f:input path="productTitle" type="text" placeholder="Tiêu đề sản phẩm" class="form-control"/>
								</div>
							</div>
							
							<div class="row form-group">
								<div class="col col-md-3">
									<f:label path="" for="textarea-input" class=" form-control-label">Mô
										tả</f:label>
								</div>
								<div class="col-12 col-md-9">
									<f:textarea path="productDes" name="textarea-input" id="textarea-input" rows="9"
										placeholder="Mô Tả" class="form-control"></f:textarea>
								</div>
							</div>
							<div class="row form-group">
								<div class="col col-md-3">
									<f:label path="" for="date-input" class=" form-control-label">Ngày
										Tạo</f:label>
								</div>
								<div class="col-12 col-md-9">
									<f:input path="createDate" type="date" id="date-input" name="text-input"
										 class="form-control"/>
								</div>
							</div>
							<div class="row form-group">
								<div class="col col-md-3">
									<f:label path="" for="price" class=" form-control-label">Giá Bán</f:label>
								</div>
								<div class="col-12 col-md-9">
									<f:input path="price" type="number" id="price" name="text-input"
										 class="form-control"/>
								</div>
							</div>
							<div class="row form-group">
								<div class="col col-md-3">
									<f:label path="" for="catalogid-input" class=" form-control-label">Thuộc
										Danh Mục</f:label>
								</div>
								<div class="col-12 col-md-9">
									<f:select path="catalog.catalogId" class="form-control">
										<f:options items="${listCate}" itemLabel="catalogName" itemValue="catalogId" />
									</f:select>
								</div>
							</div>
							
							<div class="row form-group">
								<div class="col col-md-3">
									<f:label path="" for="file-input" class=" form-control-label">Ảnh
										Sản Phẩm</f:label>
								</div>
								<div class="col-12 col-md-9">
									<input name="fileData" type="file" id="file-input" 
										class="form-control-file"/>
								</div>
							</div>
							<div class="row form-group">
								<div class="col col-md-3">
									<f:label path="" for="pro-status" class=" form-control-label">Trạng Thái</f:label>
								</div>
								<div class="col-12 col-md-9">
									<f:radiobutton path="productStatus" id="pro-status"  checked="checked" value="true"  class="mr-2" />True
									<f:radiobutton path="productStatus"  id="pro-status"  value="false"  class="ml-3 mr-2" />False
								</div>
							</div>
							<div class="card-footer">
						<button type="submit" class="btn btn-primary btn-sm">
							<i class="fa fa-dot-circle-o"></i> Submit
						</button>
						<button type="reset" class="btn btn-danger btn-sm">
							<i class="fa fa-ban"></i> Reset
						</button>
					</div>
						</f:form>
					</div>
					
				</div>
			</div>
		</div>
	</div>
</body>
</html>