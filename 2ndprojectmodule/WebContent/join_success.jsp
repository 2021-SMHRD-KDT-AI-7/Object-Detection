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
		<li><h1>ȯ���մϴ�!</h1></li>
		<li>ȸ�������� �����մϴ�.</li>
		<li>���̵�� <%=user_id%>�Դϴ�.
		<li><button onclick='location.href="main(login).jsp"'>�α��� �Ϸ�����</button></li>
	</ul>

</body>
</html>