<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<fieldset>
		<legend> 로그인 </legend>
		<ul>
			<form action="LoginServiceCon" method="post">
				<li><input type="text" name="user_id" placeholder="ID를 입력하세요"></li>
				<li><input type="password" name="user_pw"
					placeholder="PW를 입력하세요"></li> <input type="submit" value="로그인"
					class="button fit">
					<a href="join.jsp">회원가입</a>
			</form>
		</ul>
	</fieldset>
</body>
</html>