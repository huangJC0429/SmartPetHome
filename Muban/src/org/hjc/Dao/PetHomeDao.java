package org.hjc.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.hjc.entity.PetAtHome;

public class PetHomeDao {
	private static final String URL = "jdbc:mysql://localhost:3306/hjc_mysql?useSSL=false";
	private static final String USERNAME = "root";
	private static final String PWD = "hjc290018";
	
	public static  PetAtHome IsPetAtHome() {
		PreparedStatement pstmt = null;
		Connection connection = null;
		ResultSet rs = null;
		
		try {
		// a.������������������������
		Class.forName("com.mysql.jdbc.Driver");//���ؾ����������
		// b.�����ݿ�����
		   connection = DriverManager.getConnection(URL,USERNAME,PWD) ;
		  // c.����aqlִ��
		   String sql = "select   *   from   pet   order   by  Time  desc   limit   1;";
		   pstmt = connection.prepareStatement(sql) ; //Ԥ����

		  rs = pstmt.executeQuery();
		  //��ѯ�᷵��һ��REsulSet��
		  if(rs.next()) {     //rsȡ���ݼ�ͼƬ ��������ɨ �ж��Ƿ�Ϊ��
			  int inhome = rs.getInt("IsInHome");
			  String time = rs.getString("Time");
			  PetAtHome pet = new PetAtHome(inhome, time);
			  return pet;
		  }else {
			  return null;
		  }
		 
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
