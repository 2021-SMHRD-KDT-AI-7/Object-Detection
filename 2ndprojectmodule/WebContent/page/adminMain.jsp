<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Charts - SB Admin</title>
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- 메인 메뉴바-->
            <a class="navbar-brand ps-3" href="index.html">모델 이름 적는곳</a>
            <!-- 사이드 메뉴바-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- 회원 정보 메뉴-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <!-- 회원 세팅 -->
                        <li><a class="dropdown-item" href="#!">Settings</a></li>
                        <!-- 로그? 뭔지모름 -->
                        <li><a class="dropdown-item" href="#!">Activity Log</a></li>
                        <!-- 줄나누기 -->
                        <li><hr class="dropdown-divider" /></li>
                        <!-- 로그아웃 -->
                        <li><a class="dropdown-item" href="../LogoutServiceCon">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <!-- 사이드바 메뉴-->
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <!-- core 1번 사이드 -->
                            <div class="sb-sidenav-menu-heading">core</div>
                            <a class="nav-link" href="Main.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                어드민 페이지 이동
                            </a>
                            <!-- interface 1번 사이드 -->
                            <div class="sb-sidenav-menu-heading">interface</div>
                            <a class="nav-link" href="imgcap.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                절도 이미지 보기
                            </a>
                            <!-- interface 2번 사이드 -->
                            <a class="nav-link" href="tables.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                절도 물품 확인
                            </a>
                            <!-- interface 3번 사이드 -->
                            <a class="nav-link" href="cctv.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                CCVT보기
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
            <div id="layoutSidenav_content">
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">어드민 페이지</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="Main.jsp">메인 페이지</a></li>
                            <li class="breadcrumb-item active">어드민 페이지</li>
                        </ol>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                	어드민 페이지
                            </div>
                            
                        </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2021</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <!--<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script> -->
        <script src="js/datatables-simple-demo.js"></script>
        <script src="./js/dataset.js"></script>
    </body>
</html>
