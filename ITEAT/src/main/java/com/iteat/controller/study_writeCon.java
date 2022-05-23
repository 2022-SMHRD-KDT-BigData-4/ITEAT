package com.iteat.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.iteat.domain.StudyBoard;
import com.iteat.domain.StudyBoardDAO;
import com.iteat.domain.UserInfo;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


@WebServlet("/study_writeCon")
public class study_writeCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		UserInfo uif = (UserInfo)session.getAttribute("loginUser");
		
		String sb_title = request.getParameter("sb_title");
		String sb_id = uif.getUif_id();
		String[] sb_stacks = request.getParameterValues("sb_stack");
		String sb_region = request.getParameter("sb_region");
		String sb_recruit = request.getParameter("sb_recruit");
		String sb_content = request.getParameter("sb_content");
		
		String sb_stack = "";
		
		for(int i=0; i<sb_stacks.length; i++) {
			sb_stack += sb_stacks[i]+" / ";
		}
		
		StudyBoard sb = new StudyBoard(sb_title,sb_id,sb_content,sb_recruit,sb_region,sb_stack);
		StudyBoardDAO dao = new StudyBoardDAO();
		int cnt = dao.insertSB(sb);
		
		if(cnt>0) {
			System.out.println("글쓰기 성공");
			response.sendRedirect("study_list.jsp");
		}else {
			System.out.println("글쓰기 실패");
			response.sendRedirect("study_write.jsp");
		}
		
	}

}
