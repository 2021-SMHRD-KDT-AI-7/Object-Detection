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
<link rel="shortcut icon">
<link href="css/styles.css" rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
	crossorigin="anonymous"></script>
<script src="jquery-3.6.0.min.js"></script>
</head>
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<!-- 메인 메뉴바-->
		<a class="navbar-brand ps-3" href="index.html">모델 이름 적는곳</a>
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
					<!-- 회원 세팅 -->
					<li><a class="dropdown-item" href="#!">Settings</a></li>
					<!-- 로그? 뭔지모름 -->
					<li><a class="dropdown-item" href="#!">Activity Log</a></li>
					<!-- 줄나누기 -->
					<li><hr class="dropdown-divider" /></li>
					<!-- 로그아웃 -->
					<li><a class="dropdown-item" href="#!">Logout</a></li>
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
		<!-- cctv 페이지 -->
		<div id="layoutSidenav_content">
			<div id="layoutSidenav_content">
				<main>
					<!-- 차트 메인 페이지 시작-->
					<div class="container-fluid px-4">
						<h1 class="mt-4">CCTV페이지</h1>
						<ol class="breadcrumb mb-4">
							<li class="breadcrumb-item"><a href="Main.jsp">전체 간략 보기</a></li>
							<li class="breadcrumb-item active">CCTV페이지</li>
						</ol>
						<!-- 차트 표1 -->
						<div class="card mb-4">
							<div class="card-header">
								<i class="fas fa-chart-area me-1"></i> CCTV보기
							</div>
							<!-- 영상 불러오기 -->
							<div class="row">
								<div class="col-xl-3-cctv1 col-md-6">
									<div>
										<video class='cctv' src='./video/1.mp4' controls></video>
										<input class="testcctv1" type="file" name="cctv1">
										<button class='testcctv1' type="button" id="uploadcctv1">CCTV1</button>
									</div>
								</div>
								<div class="col-xl-3-cctv1 col-md-6">
									<div>
										<video class='cctv' src='./video/2.mp4' controls></video>
										<input class="testcctv1" type="file" name="cctv2">
										<button class='testcctv1' type="button" id="uploadcctv2">CCTV2</button>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xl-3-cctv1 col-md-6">
									<div>
										<video class='cctv' src='./video/3.mp4' controls></video>
										<input class="testcctv1" type="file" name="cctv3">
										<button class='testcctv1' type="button" id="uploadcctv3">CCTV3</button>
									</div>
								</div>
								<div class="col-xl-3-cctv1 col-md-6">
									<div>
										<video class='cctv' src='./video/10sec.mp4' controls></video>
										<input class="testcctv1" type="file" name="cctv4">
										<button class='testcctv1' type="button" id="uploadcctv4">CCTV4</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</main>
				<!-- 하단 메뉴?-->
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
</body>
<script>
	$(function() {
		$('#uploadcctv1')
				.on(
						'click',
						function() {

							console.log($(this).parent());

							var $parent = $(this).parent().parent();
							var form = $('#cctv1')[0];
							var formData = new FormData(form);
							var url = '../FileUpload';

							$
									.ajax({
										url : url,
										type : 'post',
										data : formData,
										contentType : false,
										processData : false,
										success : function(data) {
											alert("전송성공");
											console.log(data);
											$parent.empty();
											$parent
													.html("<video class='testcctv' src='../video/"+data.fileName+"' controls/>");
										},
										error : function() {
											alert("전송실패");
										}
									});

						});
	});

	$(function() {
		$('#uploadcctv1')
				.on(
						'click',
						function() {

							console.log($(this).parent());

							var $parent = $(this).parent().parent();
							var form = $('#cctv1')[0];
							var formData = new FormData(form);
							var url = '../FileUpload';

							$
									.ajax({
										url : url,
										type : 'post',
										data : formData,
										contentType : false,
										processData : false,
										success : function(data) {
											alert("전송성공");
											console.log(data);
											$parent.empty();
											$parent
													.html("<video class='testcctv' src='../video/"+data.fileName+"' controls/>");
										},
										error : function() {
											alert("전송실패");
										}
									});

						});
	});
</script>
</html>