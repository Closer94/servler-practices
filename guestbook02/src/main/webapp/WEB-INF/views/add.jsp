<%@page import="com.bitacademy.mysite.vo.GuestbookVo"%>
<%@page import="com.bitacademy.mysite.dao.GuestbookDao"%>
<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String contents = request.getParameter("contents");
	
	GuestbookVo vo = new GuestbookVo();
	vo.setName(name);
	vo.setPassword(password);
	vo.setContents(contents);
	
	GuestbookDao dao = new GuestbookDao();
	dao.insert(vo);
	
	response.sendRedirect("/guestbook01/index.jsp");
%>