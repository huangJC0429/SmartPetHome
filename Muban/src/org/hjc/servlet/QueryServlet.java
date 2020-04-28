package org.hjc.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hjc.Dao.TimeDao;
import org.hjc.entity.SensorTime;


public class QueryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
			List<SensorTime> sensorTimes = new ArrayList<>();
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			String beginTime = request.getParameter("beginTime");
			String endTime = request.getParameter("endTime");
			sensorTimes = TimeDao.queryTime(beginTime, endTime);
			request.setAttribute("sensorTimes",sensorTimes);
			request.getRequestDispatcher("result.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
