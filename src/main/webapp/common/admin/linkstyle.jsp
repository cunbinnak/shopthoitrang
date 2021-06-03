<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="<c:url value='/template/admin/css/font-face.css'/>" rel="stylesheet" media="all">
    <link href="<c:url value='/template/admin/vendor/font-awesome-4.7/css/font-awesome.min.css'/>" rel="stylesheet" media="all">
    
    <link href="<c:url value='/template/admin/vendor/font-awesome-5/css/fontawesome-all.min.css'/>" rel="stylesheet" media="all">
   
	<link href="<c:url value='/template/admin/vendor/mdi-font/css/material-design-iconic-font.min.css'/>" rel="stylesheet" media="all">
    <!-- Bootstrap CSS-->
    <link href="<c:url value='/template/admin/vendor/bootstrap-4.1/bootstrap.min.css'/>" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="<c:url value='/template/admin/vendor/animsition/animsition.min.css'/>" rel="stylesheet" media="all">
    
    <link href="<c:url value='/template/admin/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css'/>" rel="stylesheet" media="all">
    <link href="<c:url value='/template/admin/vendor/wow/animate.css'/>" rel="stylesheet" media="all">
    <link href="<c:url value='/template/admin/vendor/css-hamburgers/hamburgers.min.css'/>" rel="stylesheet" media="all">
    <link href="<c:url value='/template/admin/vendor/slick/slick.css'/>" rel="stylesheet" media="all">
    <link href="<c:url value='/template/admin/vendor/select2/select2.min.css'/>" rel="stylesheet" media="all">
    <link href="<c:url value='/template/admin/vendor/perfect-scrollbar/perfect-scrollbar.css'/>" rel="stylesheet" media="all">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.min.css">
    <!-- Main CSS-->
    <link href="<c:url value='/template/admin/css/theme.css'/>" rel="stylesheet" media="all">
</head>
<body>
<script src="<c:url value='/template/admin/vendor/jquery-3.2.1.min.js'/>"></script>

    <!-- Bootstrap JS-->
    <script src="<c:url value='/template/admin/vendor/bootstrap-4.1/popper.min.js'/>"></script>
    <script src="<c:url value='/template/admin/vendor/bootstrap-4.1/bootstrap.min.js'/>"></script>
    <!-- Vendor JS       -->
    <script src="<c:url value='/template/admin/vendor/slick/slick.min.js'/>"></script>
    <script src="<c:url value='/template/admin/vendor/wow/wow.min.js'/>"></script>
    <script src="<c:url value='/template/admin/vendor/animsition/animsition.min.js'/>"></script>
    <script src="<c:url value='/template/admin/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js'/>"></script>
    <script src="<c:url value='/template/admin/vendor/counter-up/jquery.waypoints.min.js'/>"></script>
    <script src="<c:url value='/template/admin/vendor/counter-up/jquery.counterup.min.js'/>"> </script>
    <script src="<c:url value='/template/admin/vendor/circle-progress/circle-progress.min.js'/>"></script>
    <script src="<c:url value='/template/admin/vendor/perfect-scrollbar/perfect-scrollbar.js'/>"></script>
    <script src="<c:url value='/template/admin/vendor/chartjs/Chart.bundle.min.js'/>"></script>
    <script src="<c:url value='/template/admin/vendor/select2/select2.min.js'/>">
    </script>
    <script type="text/javascript"src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript">
        $(document).ready( function () {
		    $('#myTable').DataTable();
		} );
    </script>
    <!-- Main JS-->
    <script src="<c:url value='/template/admin/js/main.js'/>"></script>
</body>
</html>