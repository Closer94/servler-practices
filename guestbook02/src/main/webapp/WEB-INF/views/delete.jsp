
<%@page import="com.bitacademy.mysite.dao.GuestbookDao"%>
<%

	String no = request.getParameter("no");
	String password = request.getParameter("password");
	
	GuestbookDao dao = new GuestbookDao();
	dao.delete(no, password);
	
	response.sendRedirect("/guestbook01/index.jsp");
%>