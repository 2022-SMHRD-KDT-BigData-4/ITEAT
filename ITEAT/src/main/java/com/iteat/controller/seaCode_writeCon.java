package com.iteat.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.iteat.domain.SeaCode;
import com.iteat.domain.UserInfo;


@WebServlet("/seaCode_writeCon")
public class seaCode_writeCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		UserInfo uif = (UserInfo)session.getAttribute("loginUser");
		
		String sc_title = request.getParameter("sc_title");
		String sc_con = request.getParameter("sc_con");
		String sc_lang = request.getParameter("sc_lang");
		
		
		System.out.println(sc_lang);
		System.out.println(sc_title );
		System.out.println(sc_con);
		
		SeaCode sc = new SeaCode(sc_lang, sc_title, sc_con);
		
		
	}

}
