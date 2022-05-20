package com.iteat.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.iteat.domain.UserInfo;
import com.iteat.domain.Message;
import com.iteat.domain.MessageDAO;

@WebServlet("/SendMessageCon")
public class SendMessageCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		UserInfo uif = (UserInfo)session.getAttribute("loginUser");
		
		String msg_sender = uif.getUif_id();
		String msg_receiver = request.getParameter("msg_receiver");
		String msg_title = request.getParameter("msg_title");
		String msg_content = request.getParameter("msg_content");
		
		Message ms_vo = new Message(msg_sender, msg_receiver, msg_title, msg_content, msg_sender, msg_receiver);
		
		MessageDAO dao = new MessageDAO();
		int cnt = dao.insertMessage(ms_vo);
		
		if(cnt>0) {
			System.out.println("메세지 전송 성공!");
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('메세지 전송 성공!'); location='message_sendlist.jsp';</script>");
			writer.close();
					
		}else {
			System.out.println("메세지 전송 실패!");
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('보내는 사람을 확인해주세요!'); location='message_form.jsp';</script>");
			writer.close();
		}
	}

}
