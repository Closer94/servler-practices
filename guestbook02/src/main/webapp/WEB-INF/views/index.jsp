<%@page import="java.util.List"%>
<%@page import="com.bitacademy.mysite.dao.GuestbookDao"%>
<%@page import="com.bitacademy.mysite.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<GuestbookVo> list = (List<GuestbookVo>)(request.getAttribute("list"));


%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form action="<%= request.getContextPath()%>/gb?a=add" method="post">
	<table border=1 width=500>
		<tr>
			<td>이름</td><td><input type="text" name="name"></td>
			<td>비밀번호</td><td><input type="password" name="password"></td>
		</tr>
		<tr>
			<td colspan=4><textarea name="contents" cols=60 rows=5></textarea></td>
		</tr>
		<tr>
			<td colspan=4 align=right><input type="submit" VALUE=" 확인 "></td>
		</tr>
	</table>
	</form>
	
	<% 
		for(GuestbookVo vo : list) { 
	%>
	<br>
	<table width=510 border=1>
		<tr>
			<td><%=vo.getNo() %></td>
			<td><%=vo.getName() %></td>
			<td><%=vo.getReg_date() %></td>
			<!-- request에 no값이 담겨진다. -->
			<td><a href="<%=request.getContextPath() %>/gb?a=deleteform&no=<%=vo.getNo()%>">삭제</a></td>
		</tr>
		<tr>
			<td colspan=4><%=vo.getContents() %></td>
		</tr>
	</table>
	
	<% } %>
</body>
</html>