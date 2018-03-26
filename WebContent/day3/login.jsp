<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 페이지</title>
</head>
<body>
<%

String code= request.getParameter("code");
if(code==null){
	code="";
} else{
	code = code.equals("1")?"해당하는 회원이 없습니다.":"";
}

%>
<form action="../day3/login_check.jsp" method=get>
ID: <input type="text" name="id"> 
password: <input type="text" name="password"> 

<input type="submit" value="로그인"> <br>
<%=code %>
</form>
</body>
</html>