<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>값 받아오기</h1>
	${iVal } <br />
	${lVal } <br />
	${fVal } <br />
	${bVal } <br />
	${sVal } <br />
	
	<h1>객체 값 받아오기</h1>
	${vo.no } <br />
	${vo.name } <br />
	
	<h1>널 객체 받아오기</h1>
	--${obj}-- <br />
	
	<h1>산술 연산</h1>
	${3*10+5 } <br />
	${iVal*10+5 } <br />
	
	<h1>관계 연산</h1>
	${iVal == 10 } <br />
	${iVal < 5 } <br />
	${obj == null } <br />
	${obj != null } <br />
	<!-- null 로 비교하는 것보다 empty가 좋다 -->
	${empty obj } <br />
	${not empty obj } <br />
	
	<h1>논리 연산</h1>
	${iVal == 10 && lVal < 10000 } <br />
	${iVal < 5 || lVal - 10 == 0 } <br />
	
	<h1>요청 파라미터</h1>
	<!-- uri에 값이 들어있는 경우 (request.getParameter("a")를 el표기법으로) -->
	--${param.a }-- <br />
	--${param.a + 10 }-- <br />
	--${param.email } -- <br />
	
	
	<h1>Map으로 값 받아보기</h1>
	${map.ival } <br />
	${map.fval } <br />
	${map.sval } <br />
	${map.bval } <br />
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>