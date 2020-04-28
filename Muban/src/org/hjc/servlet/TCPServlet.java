package org.hjc.servlet;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.Socket;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class TCPServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Socket socket = new Socket("localhost", 3333);
		OutputStream out = socket.getOutputStream();
		out.write("11".getBytes());
		//读取服务器发回的数据，使用socket套接字对象中的字节输入流
        InputStream in=socket.getInputStream();
        byte[] data=new byte[1024];
        int len=in.read(data);
        System.out.println(new String(data,0,len));
//        
        //ajax返回数据
       
        socket.close();
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
