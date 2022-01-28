<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
		String user_id = (String)request.getParameter("user_id");
	%>

	<ul class="actions vertical">
		<li><h1>환영합니다!</h1></li>
		<li>회원가입을 축하합니다.</li>
		<li>아이디는 <%=user_id%>입니다.
		<li><button onclick='location.href="main(login).jsp"'>로그인 하러가기</button></li>
	</ul>

</body>
</html>