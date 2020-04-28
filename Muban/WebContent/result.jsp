<%@page import="java.util.ArrayList"%>
<%@page import="org.hjc.entity.SensorTime"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>宠物小屋-历史温度</title>
<meta charset="utf-8"><link rel="icon" href="https://jscdn.com.cn/highcharts/images/favicon.ico">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            /* css 代码  */body{
            background-image: url(images/back11.jpg);
           
            background-color: #CCCCCC;
            }
            h1{
            text-align:center;
   			 color:#00ff00;
            }
            
        </style>
        <script src="highcharts.js"></script>
        <link rel="icon" href="images/headpic1.jpg" >
</head>
<body>

<div align="center">

		<h1>宠物小家历史温度</h1>
		<table border="1">
			<tr>
					<th>小屋编号</th>
					<th>小屋温度</th>
					<th>收集温度时间</th>
				</tr>
		<%
			int[] s1 = new int[10000];
			int i = 0;
			int[] s2 = new int[100];
			int n = 0;
			int[] s3 = new int[100];
			int m = 0;
		    List<SensorTime> sensorTimes = new ArrayList<>();
		    sensorTimes = (ArrayList)request.getAttribute("sensorTimes");
		    
		    for(SensorTime sensortime : sensorTimes){
		    	if(sensortime.getId().equals("1")){
		    		s1[i] = Integer.parseInt(sensortime.getTemp().trim());
		    		i++;
		    	}
		    	if(sensortime.getId().equals("2")){
		    		s2[n] = Integer.parseInt(sensortime.getTemp().trim());
		    		n++;
		    	}
		    	if(sensortime.getId().equals("3")){
		    		s3[m] = Integer.parseInt(sensortime.getTemp().trim());
		    		m++;
		    	}
		%>
		<tr>
		<td><%= sensortime.getId() %></td>
		<td><%= sensortime.getTemp() %></td>
		<td><%= sensortime.getTime() %><td>
		</tr>
		<%
		    }
		%>
		</table>
		</div>
		 <div align="center" id="container" style="max-width:800px;height:400px"></div>
        <script>
        var sensor1=new Array();
        var sensor2=new Array();
        var sensor3=new Array();
        
        <%
        	for(int x=0;x<s1.length ;x++){
        %>
        sensor1[<%=x%>] = <%=s1[x]%>;
        <%
        	}
        %>
        
        <%
    	for(int x=0;x<s2.length ;x++){
    	%>
    	sensor2[<%=x%>] = <%=s2[x]%>;
    	<%
    		}
    	%>
    	
    	<%
    	for(int x=0;x<s3.length ;x++){
    	%>
    	sensor3[<%=x%>] = <%=s3[x]%>;
    	<%
    		}
    	%>
       
        var chart = Highcharts.chart('container', {
    		title: {
    				text: '室内各点温度分布状况'
    		},
    		subtitle: {
    				text: '数据来源：智能小屋'
    		},
    		yAxis: {
    				title: {
    						text: '摄氏度 ℃  '
    				}
    		},
    		legend: {
    				layout: 'vertical',
    				align: 'right',
    				verticalAlign: 'middle'
    		},
    		plotOptions: {
    				series: {
    						label: {
    								connectorAllowed: false
    						},
    						pointStart: 0
    				} 
    		},
    		series: [{
    				name: '1号小屋  ',
    				data: [<%for(int x=0; x<s1.length;x++){
    					if(s1[x]==0){
    						break;
    					}
    					%>
    					sensor1[<%=x%>],
    					<%
    				}
    				
    				%>]
    		}, {
    				name: '2号小屋  ',
    				data: [<%for(int x=0; x<s2.length;x++){
    					if(s2[x]==0){
    						break;
    					}
    					%>
    					sensor2[<%=x%>],
    					<%
    				}
    				
    				%>]
    		}, {
    				name: '3号小屋  ',
    				data: [<%for(int x=0; x<s3.length;x++){
    					if(s3[x]==0){
    						break;
    					}
    					%>
    					sensor3[<%=x%>],
    					<%
    				}
    				
    				%>]
    		}],
    		responsive: {
    				rules: [{
    						condition: {
    								maxWidth: 500
    						},
    						chartOptions: {
    								legend: {
    										layout: 'horizontal',
    										align: 'center',
    										verticalAlign: 'bottom'
    								}
    						}
    				}]
    		}
    });
        </script>
        </br>
        </br>
        <div  align="center" >
        <a href="index.jsp">
               <button onclick="index.jsp" >返回主页</button>
        </a>
          </div>
</body>
        
</html>