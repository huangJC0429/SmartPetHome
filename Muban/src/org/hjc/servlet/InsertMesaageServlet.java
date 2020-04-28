package org.hjc.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hjc.Dao.MessageInsertDao;
import org.hjc.entity.Message;
import org.hjc.util.TimeUtil;


public class InsertMesaageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String name = request.getParameter("Name");
		String email = request.getParameter("Email");
		String message = request.getParameter("textarea");
		Date date = new Date();
		TimeUtil util = new TimeUtil();
		String time = util.dateToString(date);
		Message m = new Message(name,email,message,time);
		int i = MessageInsertDao.MessageInsert(m);
		request.setAttribute(name, i);
		//request.getRequestDispatcher("index.jsp").forward(request, response);
		response.sendRedirect("index.jsp");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
