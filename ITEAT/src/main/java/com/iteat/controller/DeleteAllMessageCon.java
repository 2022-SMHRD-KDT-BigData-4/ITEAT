package com.iteat.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.iteat.domain.MessageDAO;
import com.iteat.domain.UserInfo;

@WebServlet("/DeleteAllMessageCon")
public class DeleteAllMessageCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		UserInfo uif = (UserInfo)session.getAttribute("loginUser");
		MessageDAO dao = new MessageDAO();
		int cnt = dao.deleteAllMessage(uif.getUif_id());
		
		if(cnt>0) { 
			System.out.println("메세지삭제 성공");
		}else { 
			System.out.println("메세지삭제 실패");
		}
		response.sendRedirect("message_receivelist.jsp");
	}

}
