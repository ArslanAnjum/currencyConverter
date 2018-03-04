<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<!DOCTYPE html>
<html>
<head lang="en">
<title>Bitcoin Wallet MVP</title>
<meta charset="utf-8" />
<meta name="author" content="ArslanAnjum" />
<meta name="description" content="MainPage">
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />

<!-- Main_CSS  -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link
	href="https://demo.geekslabs.com/materialize/v2.1/layout03/sass/components/_icons-material-design.scss"
	rel="stylesheet">


<link href="<c:url value='/webResources/css/materialize.min.css' />"
	type="text/css" rel="stylesheet" media="screen,projection" />


<link href="<c:url value='/webResources/css/style.min.css' />"
	type="text/css" rel="stylesheet" media="screen,projection" />



<!-- INCLUDED PLUGIN CSS ON THIS PAGE -->
<link href="<c:url value='/webResources/js/plugins/prism/prism.css' />"
	type="text/css" rel="stylesheet" media="screen,projection">
<link
	href="<c:url value='/webResources/js/plugins/perfect-scrollbar/perfect-scrollbar.min.css' />"
	type="text/css" rel="stylesheet" media="screen,projection">
<link
	href="<c:url value='/webResources/js/plugins/loadingbar/loading-bar.min.css' />"
	rel="stylesheet" type="text/css" />

</head>


<body ng-app="app">
	<!-- Start Page Loading -->
	<div id="loader-wrapper">
		<div id="loader"></div>
		<div class="loader-section section-left"></div>
		<div class="loader-section section-right"></div>
	</div>
	<!-- End Page Loading -->


	<!-- START HEADER -->
	<header id="header" class="page-topbar">
		<!-- start header nav-->
		<div class="navbar-fixed">
			<nav class="navbar-color">
				<div class="nav-wrapper red-accent-3">
					<div class="center-align">
						<h5>Currency Converter</h5>
					</div>
				</div>
			</nav>
		</div>
		<!-- end header nav-->
	</header>
	<!-- END HEADER -->

	<!-- //////////////////////////////////////////////////////////////////////////// -->

	<div id="main">
		<div class="wrapper">
			<section id="content">
				<div class="container">
					<div style="position: relative">
						<div style="width: 100%" ng-view
							ng-animate="{enter: 'view-enter', leave: 'view-leave'}"></div>
					</div>
				</div>
			</section>
		</div>
	</div>

	<!-- ================================================
    Scripts
    ================================================ -->


	<!--  Main_Scripts-->
	<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>

	<script src="<c:url value='/webResources/js/materialize.min.js'/>"></script>

	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-route.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-sanitize.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-resource.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.26/angular-touch.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-animate.js"></script>

	<!------------------------  Plugins  --------------------------->

	<script
		src="<c:url value='/webResources/js/plugins/perfect-scrollbar/perfect-scrollbar.min.js'/>"></script>
	<script type="text/javascript"
		src="<c:url value='/webResources/js/plugins/prism/prism.js'/>"></script>


	<!-- LoadingBar_JS  -->
	<script
		src="<c:url value='/webResources/js/plugins/loadingbar/loading-bar.min.js'/>"></script>

	<!--plugins.js - Some Specific JS codes for Plugin Settings-->
	<script type="text/javascript"
		src="<c:url value='/webResources/js/plugins/plugins.js'/>"></script>

	<script src="<c:url value='/app/app.js'/>"></script>
	<script src="<c:url value='/app/routes.js'/>"></script>

	<%@ include file="includeFiles/controllersList.jsp"%>

</body>
</html>