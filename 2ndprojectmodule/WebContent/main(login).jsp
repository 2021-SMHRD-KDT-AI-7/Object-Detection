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
		<legend> �α��� </legend>
		<ul>
			<form action="LoginServiceCon" method="post">
				<li><input type="text" name="user_id" placeholder="ID�� �Է��ϼ���"></li>
				<li><input type="password" name="user_pw"
					placeholder="PW�� �Է��ϼ���"></li> <input type="submit" value="�α���"
					class="button fit">
					<a href="join.jsp">ȸ������</a>
			</form>
		</ul>
	</fieldset>
</body>
</html>