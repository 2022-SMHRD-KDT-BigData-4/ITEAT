package com.iteat.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.iteat.domain.SeaCode;
import com.iteat.domain.SeaCodeDAO;
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
		String sc_nick = uif.getUif_nick();
		
		SeaCode sc = new SeaCode(sc_title, sc_con, sc_lang, sc_nick);
		SeaCodeDAO sc_dao = new SeaCodeDAO();
		int cnt = sc_dao.insertSC(sc);
		
		System.out.println("cnt" + cnt);
		
		if(cnt>0) {
			System.out.println("코드작성 성공");
			response.sendRedirect("sea_list.jsp");
		}else {
			System.out.println("코드작성 실패");
			response.sendRedirect("sea_writer.jsp");
		}
		
		
	}

}
