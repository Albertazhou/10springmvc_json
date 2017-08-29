<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page isELIgnored="false" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js">
	

</script>

<title>Insert title here</title>
</head>
<body>
<input id="btn" value="get data" type="button">
<table width="80%" align="center">
	<tr>
		<td>编号</td>
		<td>姓名</td>
		<td>性别</td>
	</tr>
	<tbody id="content">
		
	</tbody>
</table>

<script type="text/javascript">



	$(function() {
		$("#btn").click(function() {
			
			$.post("json.do",function(data){
				var html="";
				for(var i=0;i<data.length;i++){
					html+="<tr><td>"+data[i].id+"</td><td>"+data[i].name+"</td><td>"
							+data[i].sex+"<td></tr>"
				}
				$("#content").html(html);
			});
			 
		});
	});
</script>
</body>
</html>