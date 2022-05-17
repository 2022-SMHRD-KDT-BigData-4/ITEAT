package com.iteat.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.iteat.domain.UserInfo;
import com.iteat.domain.UserInfoDAO;

@WebServlet("/LoginCon")
public class LoginCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[LoginCon]");
		request.setCharacterEncoding("UTF-8");
		
		String uif_id = request.getParameter("uif_id");
		String uif_pw = request.getParameter("uif_pw");
		
		UserInfo uif = new UserInfo(uif_id,uif_pw);
	
		UserInfoDAO dao = new UserInfoDAO();
		UserInfo loginUser = dao.selectUif(uif);
		
		if(loginUser==null) {
			System.out.println("로그인 실패");
			response.sendRedirect("loginFail.jsp");
		}else {
			System.out.println("로그인 성공");
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", loginUser);
			response.sendRedirect("main.jsp");
		}
	}

}
