
<%@page import="Model.t_objectDAO"%>
<%@page import="Model.t_objectDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.t_detectionDTO"%>
<%@page import="javax.sound.midi.MidiDevice.Info"%>
<%@page import="Model.userDTO"%>
<%@page import="Model.userDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Charts - SB Admin</title>
<link href="css/styles.css" rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
	crossorigin="anonymous"></script>
</head>
<%
	userDAO dao = new userDAO();
request.setCharacterEncoding("utf-8");
String user_id = (String) session.getAttribute("user_id");
String user_shop = (String) session.getAttribute("user_shop");
%>
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<!-- 메인 메뉴바-->
		<a class="navbar-brand ps-3" href="Main.jsp">스마트 인재개발원점</a>
		<!-- 사이드 메뉴바-->
		<button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0"
			id="sidebarToggle" href="#!">
			<i class="fas fa-bars"></i>
		</button>
		<!-- 회원 정보 메뉴-->
		<ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
				role="button" data-bs-toggle="dropdown" aria-expanded="false"><i
					class="fas fa-user fa-fw"></i></a>
				<ul class="dropdown-menu dropdown-menu-end"
					aria-labelledby="navbarDropdown">
					<!-- 회원아이디 적기 -->
					<li><%=user_id%>님 환영합니다</li>
					<!-- 줄나누기 -->
					<li><hr class="dropdown-divider" /></li>
					<!-- 로그아웃 -->
					<li><a class="dropdown-item" href="../LogoutServiceCon">Logout</a></li>
				</ul></li>
		</ul>
	</nav>
	<!-- 사이드바 메뉴-->
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<!-- core 1번 사이드 -->
						<div class="sb-sidenav-menu-heading">core</div>
						<a class="nav-link" href="adminMain.jsp">
							<div class="sb-nav-link-icon">
								<i class="fas fa-tachometer-alt"></i>
							</div> 통합 / 개별 영상
						</a>
						<!-- interface 1번 사이드 -->
						<div class="sb-sidenav-menu-heading">interface</div>
						<a class="nav-link" href="Act.jsp">
							<div class="sb-nav-link-icon">
								<i class="fas fa-chart-area"></i>
							</div> 행위 인식
						</a>
						<!-- interface 2번 사이드 -->
						<a class="nav-link" href="Face.jsp">
							<div class="sb-nav-link-icon">
								<i class="fas fa-table"></i>
							</div> 얼굴 인식
						</a>
						<!-- interface 3번 사이드 -->
						<a class="nav-link" href="Obj.jsp">
							<div class="sb-nav-link-icon">
								<i class="fas fa-table"></i>
							</div> 객체 인식
						</a>
					</div>
				</div>
				<!-- 사이드바 하단-->
				<div class="sb-sidenav-footer">
					<div class="small">스마트 인재개발원점</div>

				</div>
			</nav>
		</div>
		<!-- 메인 페이지 -->
		<div id="layoutSidenav_content">
			<!-- 메인 페이지 -->
			<div id="layoutSidenav_content">
				<main>
					<div class="container-fluid px-4">
						<!-- 메인 헤드 -->
						<h1 class="mt-4">개발 페이지</h1>
						<ol class="breadcrumb mb-4">
							<!-- 서브 헤드 -->
							<li class="breadcrumb-item active">개발페이지</li>
						</ol>
						<!-- 메인 메뉴-->
						<div class="row">
							<!-- 메인메뉴 1-->
							<div class="col-xl-3 col-md-6">
								<div class="card bg-primary text-white mb-4">
									<div class="card-body">행위 인식</div>
									<div
										class="card-footer d-flex align-items-center justify-content-between">
										<a class="small text-white stretched-link" href="Act.jsp">View
											Details</a>
										<div class="small text-white">
											<i class="fas fa-angle-right"></i>
										</div>
									</div>
								</div>
							</div>

							<!-- 메인메뉴 2-->
							<div class="col-xl-3 col-md-6">
								<div class="card bg-warning text-white mb-4">
									<div class="card-body">얼굴 인식</div>
									<div
										class="card-footer d-flex align-items-center justify-content-between">
										<a class="small text-white stretched-link" href="Face.jsp">View
											Details</a>
										<div class="small text-white">
											<i class="fas fa-angle-right"></i>
										</div>
									</div>
								</div>
							</div>
							<!-- 메인메뉴 3-->
							<div class="col-xl-3 col-md-6">
								<div class="card bg-success text-white mb-4">
									<div class="card-body">객체 인식</div>
									<div
										class="card-footer d-flex align-items-center justify-content-between">
										<a class="small text-white stretched-link" href="Obj.jsp">View
											Details</a>
										<div class="small text-white">
											<i class="fas fa-angle-right"></i>
										</div>
									</div>
								</div>
							</div>
							<!-- 메인메뉴 4-->
							<div class="col-xl-3 col-md-6">
								<div class="card bg-danger text-white mb-4">
									<div class="card-body">전체 간략 보기</div>
									<div
										class="card-footer d-flex align-items-center justify-content-between">
										<a class="small text-white stretched-link" href="Main.jsp">View
											Details</a>
										<div class="small text-white">
											<i class="fas fa-angle-right"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!--  통합 영상 보여주기  -->
						<div class="container-fluid px-4">
							<div class="card mb-4">
								<div class="card-header">
									<i class="me-1"></i> 얼굴 탐지
								</div>
								<div class="row">
									<!-- 1번 영상-->
									<div class="col-xl-3-frame col-md-6">
										<form class="cctvadmin">
											<iframe class="frame"
												src="http://121.147.0.176:2000/face_model"></iframe>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
			</div>
			</main>
			<!-- 하단바 -->
			<footer class="py-4 bg-light mt-auto">
				<div class="container-fluid px-4">
					<div
						class="d-flex align-items-center justify-content-between small">
						<div class="text-muted">Copyright &copy; Your Website 2021</div>
						<div>
							<a href="#">Privacy Policy</a> &middot; <a href="#">Terms
								&amp; Conditions</a>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script src="js/datatables-simple-demo.js"></script>
	<script src="./js/dataset.js"></script>
</body>
</html>