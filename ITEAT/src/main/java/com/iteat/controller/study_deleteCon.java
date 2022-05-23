package com.iteat.controller;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.iteat.domain.StudyBoardDAO;

@WebServlet("/study_deleteCon")
public class study_deleteCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int num = Integer.parseInt(request.getParameter("num"));

		StudyBoardDAO dao = new StudyBoardDAO();
		int cnt = dao.deleteSB(num);
		
		if(cnt>0) { 
			System.out.println("글 삭제 성공");
		}else { 
			System.out.println("글 삭제 실패");
		}
		response.sendRedirect("study_list.jsp");
	}

}
