<%@page import="com.bitacademy.mysite.vo.UserVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	UserVo userVo = (UserVo)request.getAttribute("userVo");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="container">

		<jsp:include page="/WEB-INF/views/includes/header.jsp" />

		<div id="content">
			<div id="user">

				<form id="join-form" name="joinForm" method="post"
					action="<%=request.getContextPath()%>/user">
					<input type="hidden" name="a" value="update"> <label
						class="block-label" for="name" value="<%=userVo.getName()%>">이름</label> <input id="name"
						name="name" type="text" value=""> <label
						class="block-label" for="email" value="<%=userVo.getEmail() %>">이메일</label> <input id="email"
						name="email" type="text" value=""> <input type="button"
						value="id 중복체크"> <label class="block-label">패스워드</label> <input
						name="password" type="password" value="">

					<fieldset>
						<legend>성별</legend>
						
						<%
							if("female".equals(userVo.getGender())){
						%>
						<label>여</label> <input type="radio" name="gender" value="female" checked="checked">
						<label>남</label> <input type="radio" name="gender" value="male">
						<% } else {%>
						<label>여</label> <input type="radio" name="gender" value="female" >
						<label>남</label> <input type="radio" name="gender" value="male" checked="checked">
						<%} %>
					</fieldset>

					<input type="submit" value="수정">

				</form>
			</div>
		</div>

		<!-- navigation 공통임으로 별도의 파일로 만들고 include -->
		<jsp:include page="/WEB-INF/views/includes/navigation.jsp" />
		<!-- footer 공통임으로 별도의 파일로 만들고 include -->
		<jsp:include page="/WEB-INF/views/includes/footer.jsp" />

	</div>
</body>
</html>