<%@page import="Model.t_detectionDTO"%>
<%@page import="Model.t_objectDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.userDTO"%>
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
		userDTO info = (userDTO) session.getAttribute("info");
	ArrayList<t_objectDTO> o_list = new ArrayList<>();
	ArrayList<t_detectionDTO> f_list = new ArrayList<>();
	%>
	<fieldset>
		<h2>���� �� ����������</h2>
		<%
			if (info != null) {
		%>
		<a href="LogoutServiceCon"> �α׾ƿ� </a>
		<%
			} else {
		%>
		<%
			}
		%>
	</fieldset>
	<fieldset>
		<!-- ���� �� cctv�ʵ� -->
		<form action="cctvServicecon" method="post"
			enctype="multipart/form-data">
			<section class="main">
				<h2>���� �� ����������</h2>
				<fieldset>
					<input type="file" placeholder="ī�޶�1"> <input type="submit"
						value="cctv��ȭ�� ����">
				</fieldset>
			</section>
		</form>
	</fieldset>
	<fieldset>
		<!-- �������� �̹��� ĸó�����ִ� �ʵ� -->
		<h2>�����̹���</h2>
		<%
			for (int i = 0; i < f_list.size(); i++) {
		%>
			<%=f_list.get(i).getSituation_img()%>
		<%
			}
		%>
	</fieldset>
	<fieldset>
		<!-- ��������% �� ��ģ��ǰ �����ִ� �ʵ� -->
		<h2>��ģ��ǰ ����Ʈ</h2>
		<table border="1">
			<tr>
				<th><b>Ž������</b></th>
				<th><b>��ǰ��</b></th>
				<th><b>��ǰ ����</b></th>
			</tr>
			<%
				for (int i = 0; i < o_list.size(); i++) {
			%>
			<tr>
				<td><%=i + 1%></td>
				<td><%=o_list.get(i).getItem_name()%></td>
				<td><%=o_list.get(i).getItem_cnt()%></td>
			</tr>
			<%
				}
			%>
		</table>
	</fieldset>
	<fieldset>
		<!-- ������ �� �̹��� -->
		<h2>������ ���̹���</h2>
		<%
			for (int i = 0; i < f_list.size(); i++) {
		%>
			<%=f_list.get(i).getFace_img()%>
		<%
			}
		%>
	</fieldset>


</body>
</html>