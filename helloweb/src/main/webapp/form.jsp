<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/helloweb/join" method="POST">
		이메일: <input type="text" name="email" value=""/>
		<br><br>
		비밀번호: <input type="password" name="password" value=""/>
		<br><br>
		생년: 
		<select name="birthYear">
			<option value="1994">1994</option>
			<option value="1995">1995</option>
			<option value="1996">1996</option>
		</select>
		<br><br>
		성별:
		<input type="radio" name="gender" value="female">여자
		<input type="radio" name="gender" value="male">남자
		<br><br>
		취미:
		<input type="checkbox" name="hobbies" value="coding">코딩
		<input type="checkbox" name="hobbies" value="swimming">수영
		<input type="checkbox" name="hobbies" value="fishing">낚시
		<input type="checkbox" name="hobbies" value="cooking">요리
		<br><br>
		자기소개:
		<textarea name="desc">
		
		</textarea>		
		
		<input type="submit" value="회원가입" />
	</form>
</body>
</html>