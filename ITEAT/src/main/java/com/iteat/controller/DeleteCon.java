package com.iteat.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.iteat.domain.UserInfoDAO;

@WebServlet("/DeleteCon")
public class DeleteCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String uif_id = request.getParameter("uif_id");
		
		UserInfoDAO dao = new UserInfoDAO();
		int cnt = dao.deleteUserInfo(uif_id);
		
		if(cnt>0) { 
			System.out.println("회원삭제 성공");
		}else { 
			System.out.println("회원삭제 실패");
		}
		response.sendRedirect("userList.jsp");
	}

}
