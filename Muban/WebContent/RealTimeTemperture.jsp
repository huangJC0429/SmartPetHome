<%@page import="org.hjc.entity.SensorTime"%>
<%@page import="java.util.Calendar"%>
<%@page import="org.hjc.util.TimeUtil"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="org.hjc.Dao.TimeDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>实时温度显示</title>
<meta charset="utf-8"><link rel="icon" href="https://jscdn.com.cn/highcharts/images/favicon.ico">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <script src="highcharts.js"></script>
        <link rel="icon" href="images/headpic1.jpg" >
</head>
<body>
		
		
		<%     // 设置每隔5秒刷新一次
		   response.setIntHeader("Refresh", 5);
		
		  // TimeDao time = new TimeDao();
		   List<SensorTime> sensorTime = new ArrayList<>();
		   Date date = new Date();
		   
		   //获取20秒前的时间 
		   Calendar beforetime = Calendar.getInstance();
		   beforetime.add(Calendar.SECOND, -20);
		   Date date2 = beforetime.getTime();
		   
		   
		  //TimeUtil t = new TimeUtil();
		   String endTime = TimeUtil.dateToString(date);
		   String beginTime = TimeUtil.dateToString(date2);
		   sensorTime = TimeDao.queryTime(beginTime, endTime);
		   
		   
		   int[] s1 = new int[100];
			int i = 0;
			int[] s2 = new int[100];
			int n = 0;
			int[] s3 = new int[100];
			int m = 0;
		   for(SensorTime sen : sensorTime){
		    	if(sen.getId().equals("1")){
		    		s1[i] = Integer.parseInt(sen.getTemp().trim());
		    		i++;
		    	}
		   
		
		%>
		<table border="1">
		<tr>
		<td><%= sen.getId() %></td>
		<td><%= sen.getTemp() %></td>
		<td><%= sen.getTime() %><td>
		</tr>
		
		<%}
		   
		   %>
		</table>
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