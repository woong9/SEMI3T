package com.sm.qna;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/QnaRegC")
public class QnaRegC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setAttribute("contentPage", "jsp/qna/qnareg.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		DAO_QnA.regQna(request);
		
		DAO_QnA.getAllqna(request);
		DAO_QnA.qnaPaging(1, request);
		request.setAttribute("contentPage", "jsp/qna/qna.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

}
