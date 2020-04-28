package org.hjc.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SocketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		DatagramSocket ds = new DatagramSocket();
		String s = "open";    //要发送的数据
		byte[] bys = s.getBytes();  //将数据放在字节数组中
		int length = bys.length;    //字节数组的长度
		InetAddress address = InetAddress.getByName("192.168.31.70"); //目的地址
		int port = 5000;  //设置端口号
 
		//打包
		DatagramPacket dp = new DatagramPacket(bys,length,address,port);
		
		//ajax返回流数据
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.write("true");
		
		out.close();
 
		//发送数据
		ds.send(dp);
 
		//释放资源
		ds.close();
		//request.getRequestDispatcher("rr.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
