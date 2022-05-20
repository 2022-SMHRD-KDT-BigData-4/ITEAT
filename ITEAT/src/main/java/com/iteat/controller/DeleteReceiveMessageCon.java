package com.iteat.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.iteat.domain.MessageDAO;

@WebServlet("/DeleteReceiveMessageCon")
public class DeleteReceiveMessageCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int msg_seq = Integer.parseInt(request.getParameter("msg_seq"));
		
		MessageDAO dao = new MessageDAO();
		
		int cnt = dao.deleteReceiveMessage(msg_seq);
		
		if(cnt>0) { 
			System.out.println("메세지삭제 성공");
		}else { 
			System.out.println("메세지삭제 실패");
		}
		response.sendRedirect("message_sendlist.jsp");
	}
	

}
