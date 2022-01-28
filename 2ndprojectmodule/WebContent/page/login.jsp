<%@page import="Model.userDTO"%>
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
        <title>Login - SB Admin</title>
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="bg-primary">
    <%
	userDTO info = (userDTO)session.getAttribute("info");
	%>
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">로그인</h3></div>
                                    <div class="card-body">
                                        <form action="../LoginServiceCon" method="post"><!-- 로그인 페이지 핸들링 할곳 -->
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="user_id" name="user_id" type="text" placeholder="아이디를 입력해주세요" />
                                                <label for="user_id">ID를 입력해주세요</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="user_pw" type="password" name="user_pw" placeholder="비밀번호를 입력해주세요" />
                                                <label for="user_pw">Password를 입력해주세요</label>
                                            </div>
                                            <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                               <!-- <a class="small" href="password.html">Forgot Password?</a> -->
                                                <input class="btn btn-primary" type="submit" value="로그인">
                                            </div>
                                        </form>
                                    </div>
                                    <!-- 회원가입 페이지 이동 -->
                                    <div class="card-footer text-center py-3">
                                        <div class="small"><a href="register.jsp">회원가입 하러가기</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
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
