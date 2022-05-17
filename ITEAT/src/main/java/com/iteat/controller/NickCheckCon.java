package com.iteat.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.iteat.domain.UserInfoDAO;

@WebServlet("/NickCheckCon")
public class NickCheckCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		
		String uif_nick = request.getParameter("uif_nick");
		
		UserInfoDAO dao = new UserInfoDAO();
		boolean check = dao.nickCheck(uif_nick);
		
		PrintWriter out = response.getWriter();
		out.print(check);
		
	}

}
