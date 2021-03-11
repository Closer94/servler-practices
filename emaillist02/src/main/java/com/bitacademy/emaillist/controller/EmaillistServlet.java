package com.bitacademy.emaillist.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitacademy.emaillist.dao.EmaillistDao;
import com.bitacademy.emaillist.vo.EmaillistVo;
import com.bitacademy.web.mvc.WebUtil;

public class EmaillistServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String action = request.getParameter("a");
		
		System.out.println(action);
		if("form".equals(action)) {
			WebUtil.forword("/WEB-INF/views/form.jsp", request, response);
		}else if("add".equals(action)) {

			String firstName = request.getParameter("firstname");
			String lastName = request.getParameter("lastname");
			String email = request.getParameter("email");

			EmaillistVo vo = new EmaillistVo();
			vo.setFirstName(firstName);
			vo.setLastName(lastName);
			vo.setEmail(email);
			
			new EmaillistDao().insert(vo);
			WebUtil.redirect(request.getContextPath() + "/el", request, response);
		}else {
			//디폴트 페이지를 else로 설정(action을 가지고 장난 칠때 index페이지를 보여주기 위함)
			List<EmaillistVo> list = new EmaillistDao().findAll();
			
			//view로 넘길때 Controller에서 가져온 VoList를 request에 넣어서 view(index.jsp)에 보낸다. 
			request.setAttribute("list", list);//(저장 객체가 담길 이름, 저장 객체)
			
			/*
			//forwarding = request dispatch = request extension	
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/index.jsp"); //어디로 보낼지 기록
			rd.forward(request, response);
			*/
			//forward 일때는 내부에서 움직이는 것임으로 경로를 써주고 
			//redirect 할때는 uri를 넘겨줘야한다.
			WebUtil.forword("/WEB-INF/views/index.jsp", request, response);
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
