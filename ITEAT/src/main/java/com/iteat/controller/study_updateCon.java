package com.iteat.controller;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.iteat.domain.StudyBoard;
import com.iteat.domain.StudyBoardDAO;

@WebServlet("/study_updateCon")
public class study_updateCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[sbUpdateCon]");
		request.setCharacterEncoding("UTF-8");
		
		BigDecimal num = new BigDecimal(request.getParameter("num"));
		String title = request.getParameter("sb_title");
		String content = request.getParameter("sb_content");
		String recruit = request.getParameter("sb_recruit");
		String region = request.getParameter("sb_region");
		String[] stacks = request.getParameterValues("sb_stack");
		
		String stack = "";
		
		for(int i=0; i<stacks.length; i++) {
			stack += stacks[i]+" / ";
		}
		
		StudyBoard sb = new StudyBoard(num, title, content, recruit, region, stack);
		
		StudyBoardDAO dao = new StudyBoardDAO();
		int cnt = dao.updateSB(sb);
		
		if(cnt>0) { 
			System.out.println("글 수정 성공");
		}else {
			System.out.println("글 수정 실패");
		}
		response.sendRedirect("study_list.jsp");
	}

}
