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
		<h2>보고서 및 관리페이지</h2>
		<%
			if (info != null) {
		%>
		<a href="LogoutServiceCon"> 로그아웃 </a>
		<%
			} else {
		%>
		<%
			}
		%>
	</fieldset>
	<fieldset>
		<!-- 보고서 및 cctv필드 -->
		<form action="cctvServicecon" method="post"
			enctype="multipart/form-data">
			<section class="main">
				<h2>보고서 및 관리페이지</h2>
				<fieldset>
					<input type="file" placeholder="카메라1"> <input type="submit"
						value="cctv녹화본 보기">
				</fieldset>
			</section>
		</form>
	</fieldset>
	<fieldset>
		<!-- 절도순간 이미지 캡처보여주는 필드 -->
		<h2>절도이미지</h2>
		<%
			for (int i = 0; i < f_list.size(); i++) {
		%>
			<%=f_list.get(i).getSituation_img()%>
		<%
			}
		%>
	</fieldset>
	<fieldset>
		<!-- 절도행위% 및 훔친물품 보여주는 필드 -->
		<h2>훔친물품 리스트</h2>
		<table border="1">
			<tr>
				<th><b>탐지순번</b></th>
				<th><b>물품명</b></th>
				<th><b>물품 수량</b></th>
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
		<!-- 점도범 얼굴 이미지 -->
		<h2>절도범 얼굴이미지</h2>
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