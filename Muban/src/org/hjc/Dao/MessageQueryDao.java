package org.hjc.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hjc.entity.Message;

public class MessageQueryDao {
	private static final String URL = "jdbc:mysql://localhost:3306/hjc_mysql?useSSL=false";
	private static final String USERNAME = "root";
	private static final String PWD = "hjc290018";
	
	public static  List<Message> Mmessagequery() {
		PreparedStatement pstmt = null;
		Connection connection = null;
		ResultSet rs = null;
		List<Message> message = new ArrayList<>();
		
		try {
		// a.������������������������
		Class.forName("com.mysql.jdbc.Driver");//���ؾ����������
		// b.�����ݿ�����
		   connection = DriverManager.getConnection(URL,USERNAME,PWD) ;
		  // c.����aqlִ��
		   String sql = "select   *   from   message   order   by  utime  desc   limit   8;";
		   pstmt = connection.prepareStatement(sql) ; //Ԥ����
		

		  rs = pstmt.executeQuery();
		  //��ѯ�᷵��һ��REsulSet��
		  while(rs.next()) {     //rsȡ���ݼ�ͼƬ ��������ɨ �ж��Ƿ�Ϊ��
			  String name = rs.getString("uname");
			  String email = rs.getString("uemail");
			  String umessage = rs.getString("umessage");
			  String time = rs.getString("utime");
			  Message uumessage = new Message(name, email, umessage, time);
			  message.add(uumessage);
		  }
		  return message;
		  
		  
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
			return null;
		}catch(SQLException e) {
			e.printStackTrace();
			return null;
		}catch(Exception e) {
			e.printStackTrace();
			return null;
		}
		
		finally{
			try {
				//�ȿ��ĺ��
		 if(rs !=null) rs.close();
		 if(connection != null) connection.close();
		 if(pstmt != null) pstmt.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
	}

}
