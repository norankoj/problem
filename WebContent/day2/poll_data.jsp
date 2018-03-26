<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>투표 </title>
<style type="text/css">

.per{
text-align: right;
}

</style>
</head>
<body>
<%!

int []votes = new int[5];
int sum=0;
public void jspInit(){
System.out.println("jsp instance create");
}
public void jspDestroy(){
	System.out.println("jsp instance destory");
	
	votes=null;
}

%>
<%

String value = request.getParameter("r1");
if(value.equals("0")){
	votes[0]++;	
} else if (value.equals("1")){
	votes[1]++;	
}else if (value.equals("2")){
	votes[2]++;	
}else if (value.equals("3")){
	votes[3]++;	
}else if (value.equals("4")){
	votes[4]++;	
}

sum=votes[0]+votes[1]+votes[2]+votes[3]+votes[4];
String[] percentages = {"","","","",""};
for(int i=0;i<5;i++){
	float f =0;
	if(votes[i]!=0){
		f=(votes[i]/(float)sum)*100;
percentages[i] = String.format("%.2f", f);
	}
}
%>
<table>
<tr>
<td>&</td>
<td>아이돌 그룹 투표&</td>
<td></td><td></td></tr>

<tr>
<td>1.</td>
<td>레드벨벳</td>
<td><%=votes[0] %></td>
<td class=per><%=percentages[0]%>%</td>
</tr>

<tr>
<td>2.</td>
<td>트와이스</td>
<td><%=votes[1] %></td>
<td class=per><%=percentages[1] %>%</td>
</tr>

<tr>
<td>3.</td>
<td>빅뱅</td>
<td><%=votes[2] %></td>
<td class=per><%=percentages[2] %>%</td>

</tr>

<tr>
<td>4.</td>
<td>워너원</td>
<td><%=votes[3] %></td>
<td class=per><%=percentages[3] %>%</td>
</tr>

<tr>
<td>5.</td>
<td>BTS</td>
<td><%=votes[4] %></td>
<td class=per><%=percentages[4] %>%</td>
</tr>


</table>

<a href="../day3/logout.jsp">로그아웃</a>
</body>
</html>