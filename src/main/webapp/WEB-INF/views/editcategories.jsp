<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm danh mục</title>
<%@include file="/common/admin/linkstyle.jsp"%>
</head>
<body>
	<%@ include file="/common/admin/header.jsp"%>
	<div class="main-content">
		<div class="section__content section__content--p30">
			<div class="container-fluid">
				<div class="card">
					<div class="card-header">
						<strong>Thêm Danh Mục Mới</strong>
					</div>
					<div class="card-body card-block">
						<f:form action="editcate" modelAttribute="editCate"
							method="post" class="form-horizontal">
							<!-- enctype="multipart/form-data" -->
							<div class="row form-group">
							<div class="col col-md-3">
								<f:label path="" for="text-input" class=" form-control-label">Mã Danh Mục</f:label>
							</div>
							<div class="col-12 col-md-9">
								<f:input path="catalogId" type="text" id="text-input"
									name="text-input" placeholder="Mã Danh Mục"
									class="form-control" readonly="readonly" />
							</div>
						</div>
							<div class="row form-group">
								<div class="col col-md-3">
									<f:label path="" for="text-input" class=" form-control-label">Tên Danh Mục</f:label>
								</div>
								<div class="col-12 col-md-9">
									<f:input path="catalogName" type="text" id="text-input"
										name="text-input" placeholder="Tên Danh Mục"
										class="form-control" />
								</div>
							</div>

							<div class="row form-group">
								<div class="col col-md-3">
									<f:label path="" for="textarea-input"
										class=" form-control-label">Mô tả</f:label>
								</div>
								<div class="col-12 col-md-9">
									<f:textarea path="catalogDes" name="textarea-input"
										id="textarea-input" rows="9" placeholder="Mô Tả"
										class="form-control"></f:textarea>
								</div>
							</div>
							<div class="row form-group">
								<div class="col col-md-3">
									<f:label path="" for="text-input" class=" form-control-label">Danh mục cha</f:label>
								</div>
								<div class="col-12 col-md-9">
									<f:input path="parentId" type="text" id="text-input"
										name="text-input" placeholder="Danh mục cha"
										class="form-control" />
								</div>
							</div>
							<div class="row form-group">
								<div class="col col-md-3">
									<f:label path="" for="catalog-status" class=" form-control-label">Trạng Thái</f:label>
								</div>
								<div class="col-12 col-md-9">
									<f:radiobutton path="catalogStatus" id="catalog-status"  checked="checked" value="true"  class="mr-2" />True
									<f:radiobutton path="catalogStatus"  id="catalog-status"  value="false"  class="ml-3 mr-2" />False
								</div>
							</div>
							<div class="card-footer">
								<input type="submit" value="submit"
									class="btn btn-primary btn-sm" />


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