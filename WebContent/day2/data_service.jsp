<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>데이터 처리 페이지</title>
</head>
<body>
<%
//String value = request.getParameter("data"); //data 키값
//String user = request.getParameter("id"); //id 키값

//out.print(value+"="+user);

int temp1 =Integer.parseInt(request.getParameter("num1"));
int temp2= Integer.parseInt(request.getParameter("num2"));
String a= request.getParameter("num3");
int result=0;
if("+".equals(a)){
result = temp1+temp2;
} else if("-".equals(a)){
	result = temp1-temp2;
}else if("*".equals(a)){
	result = temp1*temp2;
}else if("/".equals(a)){
	result = temp1/temp2;
}
	//
	
	//out.print(temp1+a+temp2+"=");
	//String data = String.format("&%s=%s&%s=%s&%s=%s", "num3",a,"num1",temp1,"num2",temp2);
	
	response.sendRedirect("test.jsp?result="+result+"&num3="+a+"&num1="+temp1+"&num2="+temp2);



%>

</body>
</html>