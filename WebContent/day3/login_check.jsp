<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 체크</title>
</head>
<body>
<%
String id = request.getParameter("id");
String pa = request.getParameter("password");

if(id.equals("admin") && pa.equals("1234")){
  out.print("[반갑습니다]");
  response.sendRedirect("../day2/poll.jsp");
  
  session.setAttribute("member", id);//member라는 키값을 정함 
} else {
	response.sendRedirect("login.jsp?code=1"); 
	
}


%>
</body>
</html>