<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>宠物喂食系统</title>
<script type="text/javascript">
	function register(){
		//alert("post");
		//var mobile = document.getElementById("mobile").value;
		//通过Ajax请求服务器
		//1 建立一个XmlHttpRequest对象
		xmlHttpRequest = new XMLHttpRequest();//不加 var就是全局变量 
		
		xmlHttpRequest.onreadystatechange = callBack ;//回调函数 写在最后也一样 
		
		xmlHttpRequest.open("post","SocketServlet",true);//2 建立连接 到MoblieServlet服务器 处理，true代表异步刷新  
		//3.设置post 头消息 
		xmlHttpRequest.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
		//4.发送k=v,***注意要写成k=v***
		xmlHttpRequest.send("m");
	}
	function callBack(){
		if(xmlHttpRequest.readyState == 4 && xmlHttpRequest.status == 200){
			//接收服务端返回数据
			var data = xmlHttpRequest.responseText;//返回时文本形式，如果是xml  就用responseXml
			if(data == "true"){
				alert("喂食器开始工作!"); //由于改成TCP有点问题故全部显示开始工作！ 
			}else{
				alert("数据发送失败! "); 
			}
		}
	}
	</script>
<style>
	body {
	background-image: url(PetImage/petback1.jpg);
	background-size: cover;
   }
   .rotate {
    width: 255px;
    height: 300px;
    -webkit-transition: width 2s, height 2s, -webkit-transform 2s; /* For Safari 3.1 to 6.0 */
    transition: width 2s, height 2s, transform 2s;
}
   
   .rotate:hover {
    width: 400px;
    height: 500px;
    -webkit-transform: rotate(180deg); /* Chrome, Safari, Opera */
    transform: rotate(180deg);
}
</style>
	<link rel="icon" href="images/headpic1.jpg" >
</head>
<body>
			<h2 style="margin: 15px 20px 25px 30px;">点击图片实时喂食哟！</h2>
			<div class="rotate">
			<img border="0" src="PetImage/food.jpg" alt="图片无法显示，点此有效" onclick=" register() "  width="255" height="300" style="margin: 15px 20px 25px 30px;">
			<!--  javascript:location.href='SocketServlet';alert('喂食器开始工作 ') --> 
			</div>
			
</body>
</html>