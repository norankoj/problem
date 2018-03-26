<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>두번째 페이지</title>
</head>
<body>
<%

String v = request.getParameter("select");
String url= "error.jsp";
if(v.equals("0")){
	String id =(String)session.getAttribute("member");
	if(id!=null){
		url="../day2/poll.jsp";
	}else{
		url="./login.jsp";
	}
	
	
}else if(v.equals("1")){
	url="./request_calendar.jsp";
	
}else if (v.equals("2")){
	url="./login.jsp";
}

RequestDispatcher rd = request.getRequestDispatcher(url);
rd.forward(request, response);


%>

</body>
</html>