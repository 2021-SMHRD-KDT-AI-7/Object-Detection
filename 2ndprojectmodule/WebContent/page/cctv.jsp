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
							</div> 어드민 페이지 이동
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
					<div class="small">점포 명</div>
					"점포명 적기"
				</div>
			</nav>
		</div>
		<!-- cctv 페이지 -->
		<div id="layoutSidenav_content">
			<main>
				<!-- 차트 메인 페이지 시작-->
				<div class="container-fluid px-4">
					<h1 class="mt-4">CCTV페이지</h1>
					<ol class="breadcrumb mb-4">
						<li class="breadcrumb-item"><a href="Main.jsp">어드민 페이지</a></li>
						<li class="breadcrumb-item active">CCTV페이지</li>
					</ol>
					<!-- 차트 표1 -->
					<div class="card mb-4">
						<div class="card-header">
							<i class="fas fa-chart-area me-1"></i> CCTV보기
						</div>
						<!-- 영상 불러오기 -->
						<table class="v4">
							<tr>
								<td>
									<form id="cctv1">
										<video class='testcctv' src='./video/mudo.mp4' controls enctype=multipart/form-data></video>
										<input class="testcctv2" type="file" name="cctv1">
										<button class='testcctv2' type="button" id="uploadcctv1">CCTV1업로드</button>
									</form>
								</td>
								<td>
									<form id="cctv2">zzzz
										<video class='cctv' src='./video/mudo.mp4' controls></video>
										<input class="testcctv1" type="file" name="cctv2">
										<button class='testcctv1' type="button" id="uploadcctv2">CCTV2업로드</button>
									</form>
								</td>
							</tr>
							<tr>
								<td>
									<form id="cctv3">
										<video class='testcctv' src='./video/mudo.mp4' controls ></video>
										<input class="testcctv2" type="file" name="cctv3">
										<button class='testcctv2' type="button" id="uploadcctv3">CCTV3업로드</button>
									</form>
								</td>
								<td>
									<form id="cctv4">
										<video class='cctv' src='./video/mudo.mp4' controls></video>
										<input class="testcctv1" type="file" name="cctv4">
										<button class='testcctv1' type="button" id="uploadcctv4">CCTV4업로드</button>
									</form>
								</td>
							</tr>
						</table>

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
        $(function(){
            $('#uploadcctv1').on('click',function(){
            	
            	console.log($(this).parent());
            	
                var $parent = $(this).parent().parent();
                var form = $('#cctv1')[0];
	            var formData = new FormData(form);
	            var url = 'http://59.0.236.2:2000/cctv1Upload';
	            	                        
	            $.ajax({
	                url : url,
	                type : 'post',
	                data : formData,
	                contentType : false,
	                processData : false,
	                success : function(data){
	                	alert("전송성공");
	                    console.log(data);                   
	                    //$parent.empty();
	                    //$parent.html("<video class='testcctv' src='../video/"+data.fileName+"' controls/>");  
	                },
	                error : function(){
	                    alert("전송실패");
	                }
	            }); 
            
            });
        });

        $(function(){
            $('#uploadcctv2').on('click',function(){
            	
            	console.log($(this).parent());
            	
                var $parent = $(this).parent().parent();
                var form = $('#cctv2')[0];
	            var formData = new FormData(form);
	            var url = '../FileUpload';
	            	                        
	            $.ajax({
	                url : url,
	                type : 'post',
	                data : formData,
	                dataType : 'json',
	                contentType : false,
	                processData : false,
	                success : function(data){
	                	console.log(data);                   
	                    $parent.empty();
	                    $parent.html("<video class='cctv' src='../video/"+data.fileName+"' controls/>"); 
	                },
	                error : function(){
	                    alert("전송실패");
	                }
	            }); 
            
            });
        });
        
        $(function(){
            $('#uploadcctv3').on('click',function(){
            	
            	console.log($(this).parent());
            	
                var $parent = $(this).parent().parent();
                var form = $('#cctv3')[0];
	            var formData = new FormData(form);
	            var url = '../FileUpload';
	            	                        
	            $.ajax({
	                url : url,
	                type : 'post',
	                data : formData,
	                dataType : 'json',
	                contentType : false,
	                processData : false,
	                success : function(data){
	                    console.log(data);                   
	                    $parent.empty();
	                    $parent.html("<video class='testcctv' src='../video/"+data.fileName+"' controls/>"); 
	                },
	                error : function(){
	                    alert("전송실패");
	                }
	            }); 
            
            });
        });
        
        $(function(){
            $('#uploadcctv4').on('click',function(){
            	
            	console.log($(this).parent());
            	
                var $parent = $(this).parent().parent();
                var form = $('#cctv4')[0];
	            var formData = new FormData(form);
	            var url = '../FileUpload';
	            	                        
	            $.ajax({
	                url : url,
	                type : 'post',
	                data : formData,
	                dataType : 'json',
	                contentType : false,
	                processData : false,
	                success : function(data){
	                    console.log(data);                   
	                    $parent.empty();
	                    $parent.html("<video class='cctv' src='../video/"+data.fileName+"' controls/>"); 
	                },
	                error : function(){
	                    alert("전송실패");
	                }
	            }); 
            
            });
        });
    </script>
</html>