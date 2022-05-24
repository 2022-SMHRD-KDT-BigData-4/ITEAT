package com.iteat.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.iteat.domain.SBComment;
import com.iteat.domain.SBCommentDAO;
import com.iteat.domain.UserInfo;

@WebServlet("/insertSBCommentCon")
public class insertSBCommentCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		UserInfo uif = (UserInfo)session.getAttribute("loginUser");
		BigDecimal sbnum = new BigDecimal(request.getParameter("num"));
		String content = request.getParameter("content");
		String nick = uif.getUif_nick();
		
		SBComment sbc = new SBComment(sbnum,content,nick);
		SBCommentDAO sbcdao = new SBCommentDAO();
		int cnt = sbcdao.insertSBComm(sbc);
		
		if(cnt>0) {
			response.sendRedirect("study_list.jsp");	
		}else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('댓글 작성 실패!');location='study_list.jsp';</script>");
			writer.close();
		}
	}

}
