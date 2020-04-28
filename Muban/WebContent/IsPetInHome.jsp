<%@page import="org.hjc.Dao.PetHomeDao"%>
<%@page import="org.hjc.entity.PetAtHome"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>查看宠物是否在屋内</title>

<style type="text/css">
	body {
	background-image: url(PetImage/petback3.jpeg);
	background-size: cover;
   }
   img{
   	position:absolute;  
  	left:750px;
  	top:200px;
  	border-radius: 26px;
   }

</style>
</head>
<body>
	<% PetAtHome pet = new PetAtHome(); 
		pet = PetHomeDao.IsPetAtHome();
		int a = pet.getIsinhome();
		if(a == 1){
	%>
	<div style="left: 800px; top:150px; position: absolute; color:#0000FF;font-size:30px;">
	你的爱宠乖乖地呆在屋内哦！
	</div>

<img border="0" src="PetImage/petIndoor.jpg" alt="图片无法显示，点此有效"  width="355" height="300" style="margin: 15px 20px 25px 30px;">
	<%
		}else{
			
	%>
	<div style="left: 800px; top:150px; position: absolute; color:#0000FF;font-size:30px;">
	你的爱宠出去玩耍啦！
	</div>
	<img border="0" src="PetImage/petoutdoor.jpg" alt="图片无法显示，点此有效2"  width="355" height="300" style="margin: 15px 20px 25px 30px;">
	<%} %>
</body>
</html>