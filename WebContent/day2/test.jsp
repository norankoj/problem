<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>문제 출제 페이지</title>
<style type="text/css">
input{ 
text-align: center;
}
#result{
color : green;
}

</style>
</head>
<body>

<%

  String result= request.getParameter("result");
String num1="";
String num2="";
String num3="";
 
if(result==null){
	result="";
	} else{
		num3 =request.getParameter("num3");
		num1 =request.getParameter("num1");
		num2 =request.getParameter("num2");
}

%>

<form action="data_service.jsp" >
<input type="text" name="num1" size="5" value="<%=num1%>"> 
<input type="text" name="num3" size="1" value="<%=num3%>">
<input type="text" name="num2" size="5" value="<%=num2%>">
= <input type="text" name="result" size="5" id ="result" value="<%=result%>">
 
<input type="submit" value="계산">

</form>

</body>
</html>