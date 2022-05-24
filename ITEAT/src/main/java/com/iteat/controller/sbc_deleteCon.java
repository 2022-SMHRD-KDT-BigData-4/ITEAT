package com.iteat.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.iteat.domain.SBCommentDAO;

@WebServlet("/sbc_deleteCon")
public class sbc_deleteCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		int num = Integer.parseInt(request.getParameter("num"));
		
		
		SBCommentDAO dao = new SBCommentDAO();
		int cnt = dao.deleteSBC(num);
		
		if(cnt>0) { 
			System.out.println("댓글 삭제 성공");
		}else { 
			System.out.println("댓글 삭제 실패");
		}
		response.sendRedirect("study_list.jsp");
	}

}
