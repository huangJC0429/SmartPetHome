package org.hjc.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hjc.entity.SensorTime;

public class TimeDao {
	private static final String URL = "jdbc:mysql://localhost:3306/hjc_mysql?useSSL=false";
	private static final String USERNAME = "root";
	private static final String PWD = "hjc290018";
	
	public static List<SensorTime> queryTime(String beginTime,String endTime) {
		PreparedStatement pstmt = null;
		Connection connection = null;
		ResultSet rs = null;
		List<SensorTime> sensors = new ArrayList<>(); 
		
		try {
		// a.������������������������
		Class.forName("com.mysql.jdbc.Driver");//���ؾ����������
		// b.�����ݿ�����
		   connection = DriverManager.getConnection(URL,USERNAME,PWD) ;
		  // c.����aqlִ��
		   String sql = "select * from temperture where time between ? and ?;";
		   pstmt = connection.prepareStatement(sql) ; //Ԥ����
		   pstmt.setString(1, beginTime);
		   pstmt.setString(2, endTime);
		  

		  rs = pstmt.executeQuery();
		  //��ѯ�᷵��һ��REsulSet��
		  while(rs.next()) {     //rsȡ���ݼ�ͼƬ ��������ɨ �ж��Ƿ�Ϊ��
			  String id = rs.getString("id");
			  String temp = rs.getString("temp");
			  String time = rs.getString("time");
			  SensorTime se = new SensorTime(id,temp,time);
			  sensors.add(se);
		  }
		  return sensors;
		  
		  
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
