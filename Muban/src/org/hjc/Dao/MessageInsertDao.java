package org.hjc.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.hjc.entity.Message;

public class MessageInsertDao {
	
	private static final String URL = "jdbc:mysql://localhost:3306/hjc_mysql?useSSL=false";
	private static final String USERNAME = "root";
	private static final String PWD = "hjc290018";
	
	public static int MessageInsert(Message message) {
		Connection connection = null;
		PreparedStatement pstmt=null;
	    int count = -1;
		try {
		// a.������������������������
		Class.forName("com.mysql.jdbc.Driver");//���ؾ����������
		// b.�����ݿ�����
		   connection = DriverManager.getConnection(URL,USERNAME,PWD) ;
		   //PreparadStatement
		   String sql = "insert into message(uname,uemail,umessage,utime)values(?,?,?,?) ";
			 pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, message.getName());
			pstmt.setString(2, message.getEmail());
			pstmt.setString(3, message.getTextarea());
			pstmt.setString(4, message.getTime());
			count = pstmt.executeUpdate();
		    
		  if(count>0) {
			  System.out.print("插入成功!");
			  return count;
		  }return count;
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
			return count;
		}catch(SQLException e) {
			e.printStackTrace();
			return count;
		}catch(Exception e) {
			e.printStackTrace();
			return count;
		}
		
		finally{
			try {
		 if(connection != null) connection.close();
		 if(pstmt != null) pstmt.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
