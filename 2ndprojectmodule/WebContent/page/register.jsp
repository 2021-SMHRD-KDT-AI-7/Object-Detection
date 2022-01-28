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
        <title>Register - SB Admin</title>
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <!-- 회원가입 페이지 핸들링 하는곳 --> <!-- -->
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">회원 가입</h3></div>
                                    <div class="card-body">
                                        <form action="../JoinServiceCon" method="post">
                                            <!-- 아이디 입력칸 -->
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="user_id" name="user_id" type="text" placeholder="아이디를 입력해주세요" />
                                                <label for="user_id">ID를 입력해주세요</label>
                                            </div>
                                            <!-- 비밀번호 입력칸 -->
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="user_pw" name="user_pw" type="password" placeholder="비밀번호를 입력해주세요" />
                                                        <label for="user_pw">Password를 입력해주세요</label>
                                                    </div>
                                                </div>
                                                <!-- 상점이름 입력칸 -->
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="user_shop" name="user_shop" type="text" placeholder="상점이름을 입력해주세요" />
                                                        <label for="user_shop">상점이름을 입력해주세요</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- 회원가입 완료 버튼 -->
                                            <div class="mt-4 mb-0">
                                                <div class="d-grid">
                                                <input class="btn btn-primary btn-block" type="submit" value="회원 가입 하기">
                                            </div>
                                        </form>
                                    </div>
                                    <!-- 로그인 이동 버튼 -->
                                    <div class="card-footer text-center py-3">
                                        <div class="small"><a href="login.jsp">로그인 하러 가기</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <!-- 하단 메뉴 -->
            <div id="layoutAuthentication_footer">
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
    </body>
</html>
