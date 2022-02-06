
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
t_objectDAO odao = new t_objectDAO();
ArrayList<t_objectDTO> o_list = new ArrayList<t_objectDTO>();
o_list = odao.obj_show();
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
						<a class="nav-link" href="Main.jsp">
							<div class="sb-nav-link-icon">
								<i class="fas fa-tachometer-alt"></i>
							</div> 전체 간략 보기
						</a>
						<!-- interface 1번 사이드 -->
						<div class="sb-sidenav-menu-heading">interface</div>
						<a class="nav-link" href="imgcap.jsp">
							<div class="sb-nav-link-icon">
								<i class="fas fa-chart-area"></i>
							</div> 절도 이미지 보기
						</a>
						<!-- interface 2번 사이드 -->
						<a class="nav-link" href="tables.jsp">
							<div class="sb-nav-link-icon">
								<i class="fas fa-table"></i>
							</div> 절도 물품 확인
						</a>
						<!-- interface 3번 사이드 -->
						<a class="nav-link" href="cctv.jsp">
							<div class="sb-nav-link-icon">
								<i class="fas fa-table"></i>
							</div> CCVT보기
						</a>

					</div>
				</div>
				<!-- 사이드바 하단-->
				<div class="sb-sidenav-footer">
					<div class="small">스마트 인재개발원점</div>

				</div>
			</nav>
		</div>
		<div id="layoutSidenav_content">
			<!-- 메인 페이지 -->
			<div id="layoutSidenav_content">
				<main>
					<div class="container-fluid px-4">
						<!-- 메인 헤드 -->
						<h1 class="mt-4">전체 간략 보기</h1>
						<ol class="breadcrumb mb-4">
							<!-- 서브 헤드 -->
							<li class="breadcrumb-item active">전체 간략 보기</li>
						</ol>
						<!-- 메인 메뉴-->
						<div class="row">
							<!-- 메인메뉴 1-->
							<div class="col-xl-3 col-md-6">
								<div class="card bg-primary text-white mb-4">
									<div class="card-body">CCTV보기</div>
									<div
										class="card-footer d-flex align-items-center justify-content-between">
										<a class="small text-white stretched-link" href="cctv.jsp">View
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
									<div class="card-body">절도 이미지 보기</div>
									<div
										class="card-footer d-flex align-items-center justify-content-between">
										<a class="small text-white stretched-link" href="imgcap.jsp">View
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
									<div class="card-body">절도 물품 확인</div>
									<div
										class="card-footer d-flex align-items-center justify-content-between">
										<a class="small text-white stretched-link" href="tables.jsp">View
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
									<div class="card-body">개발자 페이지</div>
									<div
										class="card-footer d-flex align-items-center justify-content-between">
										<a class="small text-white stretched-link" href="adminMain.jsp">View
											Details</a>
										<div class="small text-white">
											<i class="fas fa-angle-right"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
						<%
							ArrayList<t_detectionDTO> f_list = new ArrayList();
						%>
						<div class="row">
							<div class="col-xl-6">
								<div class="card mb-4">
									<div class="card-header">
										<i class="fas fa-chart-area me-1"></i> 절도행위 캡처
										<!-- 절도 이미지 보기 (div클래스 바꾸기) -->
									</div>
									<div class="imgcen">
										<img class="imgsize" src="./assets/img/juldo.jpg">
									</div>
								</div>
							</div>
							<div class="col-xl-6">
								<div class="card mb-4">
									<div class="card-header">
										<i class="fas fa-chart-bar me-1"></i> 절도범 얼굴 캡처
										<!-- 절도범 얼굴 보기 -->
									</div>
									<div class="imgcen">
										<img class="imgsize" src="./assets/img/aaa.jpg">
									</div>
								</div>
							</div>
						</div>
						<div class="card mb-4">
							<div class="card-header">
								<i class="fas fa-table me-1"></i> 절도 물품확인하기
							</div>
							<div class="card-body">
								<table id="datatablesSimple">
									<thead>
										<tr>
											<th>순서</th>
											<th>물품명</th>
											<th>물품수량</th>
										</tr>
									</thead>
									<tbody>
										<%
											for (int i = 0; i < o_list.size(); i++) {
										%>
										<tr>
											<td><%=i + 1%></td>
											<td><%=o_list.get(i).getItem_name()%></td>
											<td><%=o_list.get(i).getItem_cnt()%></td>
										</tr>
										<%
											}
										%>
									</tbody>
								</table>
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