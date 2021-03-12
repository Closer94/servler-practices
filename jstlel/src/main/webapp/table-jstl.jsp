<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="row" value="${param.r }" />
	<c:set var="col" value="${param.c }" />
	
	<c:if test="${empty row }">
		<c:set var="row" value="3" />
	</c:if>	
	
	<c:if test="${empty col }">
		<c:set var="col" value="3" />
	</c:if>
	
	
	<table border="1" cellspacing="0">
		<!-- begin: 시작 / end: 끝 / var: 변수 / step: 몇씩 증가  -->
		<c:forEach begin="0" end="${row-1 }" var="i" step="1">
		<tr>
			<c:forEach begin="0" end="${col-1 }" var="j" step="1">
				<td>cell(${i }, ${j })</td>
			</c:forEach>
		</tr>
		</c:forEach>
	</table>
</body>
</html>