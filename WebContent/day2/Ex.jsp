<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ex01</title>
</head>
<body>
	<h1>

		<%
			for (int i = 1; i <= 9; i++) {
				for (int j = 1; j <= 9; j++) {

				out.print(String.format("%dX%d=%d<br>", i, j, i * j));

				}
				out.print("<br>");
			}
		
		for(int i =1; i<=9;i++){
			out.print("2X"+i+"="+2*i+"<br>");
			
		}
		%>
	</h1>

</body>
</html>