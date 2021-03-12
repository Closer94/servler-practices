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
	<h1>JSTL(forEach Tag) Test</h1>
	
	<!-- list 객체의 길이를 구하는 함수 -->
	<strong>${fn:length(list) }</strong> <br />
	
	<!-- pageContext에 저장하기 count 라는 이름에 list의 length를 저장 -->
	<c:set var="count" value= "${fn:length(list) }"/>
	
	<!-- list에 하나씩 뽑아서 vo에 담아준다. | 반복의 상태값을 status에 저장한다. -->
	<c:forEach items='${list }' var='vo' varStatus='status'>		
		 (${count-status.index }) -> [${status.index }: ${status.count }] [${vo.no } : ${vo.name }] <br />
	</c:forEach>
	
	<!-- for(int i = 0; i < 10; i++){ ... } 방식은 어떻게 표현할까? -->
	
	
</body>
</html>