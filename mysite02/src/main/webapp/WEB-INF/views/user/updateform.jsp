<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@page import="com.bitacademy.mysite.vo.UserVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath }/assets/css/user.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="container">

		<c:import url="/WEB-INF/views/includes/header.jsp" />

		<div id="content">
			<div id="user">

				<form id="join-form" name="joinForm" method="post"
					action="${pageContext.request.contextPath }/user">
					<input type="hidden" name="a" value="update"> <label
						class="block-label" for="name" >이름</label> 
						<input id="name" name="name" type="text" value="${userVo.name }"> 
						<label class="block-label" for="email" >이메일</label> 
						<input id="email" name="email" type="text" value="${userVo.email }"> 
						<input type="button" value="id 중복체크"> 
						<label class="block-label">패스워드</label> 
						<input name="password" type="password" value="">

					<fieldset>
						<legend>성별</legend>
						<c:choose>
							<c:when test="${userVo.gender == 'female' }">
								<label>여</label> <input type="radio" name="gender" value="female" checked="checked">
								<label>남</label> <input type="radio" name="gender" value="male">
							</c:when>
							<c:otherwise>
								<label>여</label> <input type="radio" name="gender" value="female" >
								<label>남</label> <input type="radio" name="gender" value="male" checked="checked">
							</c:otherwise>
						</c:choose>
					</fieldset>

					<input type="submit" value="수정">

				</form>
			</div>
		</div>

		<!-- navigation 공통임으로 별도의 파일로 만들고 include -->
		<c:import url="/WEB-INF/views/includes/navigation.jsp" />
		<!-- footer 공통임으로 별도의 파일로 만들고 include -->
		<c:import url="/WEB-INF/views/includes/footer.jsp" />

	</div>
</body>
</html>