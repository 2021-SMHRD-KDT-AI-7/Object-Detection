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
		<legend> 회원가입 </legend>
		<ul>
			<form action="JoinServiceCon" method="post">
				<li><input type="text" name="user_id" placeholder="ID를 입력하세요"></li>
				<li><input type="text" name="user_pw" placeholder="PW를 입력하세요"></li>
				<li><input type="text" name="user_shop" placeholder="마트이름을 입력하세요"></li>
				<li><input type="submit" value="회원가입" class="button fit"></li>
			</form>
		</ul>
	</fieldset>
	

</body>
</html>