package org.hjc.util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class TimeUtil {
	public static String dateToString(Date date) {
		// �������ڹ����ַ���
		String rule = "yyyy-MM-dd HH:mm:ss";
		// ʹ������ת������,�������ڸ�ʽ�������
		DateFormat format = new SimpleDateFormat(rule);
		// ת��Date����ΪString�ַ���
		String sNow = format.format(date);
		// ��ӡ���
//		System.out.println(sNow);
//		System.out.println(date);
		return sNow;
	}
	
	public static Date stringToDate(String string) throws ParseException  {
		String rule = "yyyy年MM月dd日HH:mm:ss";
		//�������ڸ�ʽ�������
		DateFormat format = new SimpleDateFormat(rule);
		//ת������Date����
		Date dTime = format.parse(string);
		//��ӡDate����
//		System.out.println(dTime);
		return dTime;
	}
	
	public static String dateToStringChinese(Date date) {
		// �������ڹ����ַ���
		String rule = "yyyy年MM月dd日HH时mm分ss秒";
		// ʹ������ת������,�������ڸ�ʽ�������
		DateFormat format = new SimpleDateFormat(rule);
		// ת��Date����ΪString�ַ���
		String sNow = format.format(date);
		// ��ӡ���
//		System.out.println(sNow);
//		System.out.println(date);
		return sNow;
	}
	public static int getMin(Date date1,Date date2) {
		return (int) ((date1.getTime() - date2.getTime())/(1000*60));
	}
}
