package com.iteat.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.iteat.domain.UserInfo;
import com.iteat.domain.UserInfoDAO;

@WebServlet("/JoinCon")
public class JoinCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String uif_id = request.getParameter("uif_id");
		String uif_pw = request.getParameter("uif_pw");
		String uif_nick = request.getParameter("uif_nick");
		String[] uif_stacks = request.getParameterValues("uif_stack");
		String uif_blog = request.getParameter("uif_blog");
		String uif_edu = request.getParameter("uif_edu");
		String uif_etc = request.getParameter("uif_etc");
		
		String uif_stack = "";
		
		for(int i=0; i<uif_stacks.length; i++) {
			uif_stack += uif_stacks[i]+" / ";
		}
		
		UserInfo uif = new UserInfo(uif_id,uif_pw,uif_nick,uif_stack,uif_blog,uif_edu,uif_etc);
		
		UserInfoDAO dao = new UserInfoDAO();
		int cnt = dao.insertUif(uif);
		
		if(cnt>0) {
			System.out.println("회원가입 성공");
			RequestDispatcher rd = request.getRequestDispatcher("joinSuccess.jsp");
			request.setAttribute("joinId", uif_id);
			rd.forward(request, response);
		}else {
			System.out.println("회원가입 실패");
			response.sendRedirect("main.jsp");
		}
	}

}
