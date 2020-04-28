<%@page import="org.hjc.util.TimeUtil"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>小屋温度查询页</title>
<style>
body {
	background-image: url(images/img22.jpg);
   }
	h1{
            text-align:center;
   			 color:red;
            }
    a{
            text-align:center;
   			 color:green;
            }
	
</style>

	<link rel="icon" href="images/headpic1.jpg" >

<script>
function validateForm() {
    var x = document.forms["MyForm"]["beginTime"].value;
    var y = document.forms["MyForm"]["endTime"].value;
    if (x == y) {
        alert("请输入一段正确的时间！ ");
        return false;
    }
    else if (x.length == 0 || y.length == 0){  //判断datetime类型的数据是否为空不能用null,要用长度为0来判断 
    	alert("时间不能为空 ,请正确填写 ! ");
    	return false;
    }
}
</script>
</head>
<body>
		<h1>宠物小家温度查询</h1>
		<div align="center">
	<form action="QueryServlet" name="MyForm" onsubmit="return validateForm()" method="post">
		开始时间：<input type="datetime-local" name="beginTime" style="width:545px;height:35px"><br>
		截止时间：<input type="datetime-local" name="endTime" style="width:545px;height:35px"><br>
		
		<!--  	开始时间：<input type="text" name="beginTime"><br/>
		截止时间：<input type="text" name="endTime"><br/>
		测试<input type="datetime-local" name="time11"><br/>
		-->
		
		<input type="submit" value="查询" style="width:100px;height:35px">
	</form>
	
	<%Date date = new Date();
	//TimeUtil t = new TimeUtil();
		String a =  TimeUtil.dateToStringChinese(date);
	%>
	<font size="6" color="#00FF00"><%=a %></font>
	
	</div>
</body>
</html>