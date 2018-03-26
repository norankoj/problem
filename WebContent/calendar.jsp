<%@page import="java.util.Calendar"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>4월 달력</title>

<style type="text/css">

.sun{
color: red;
}

.sat{
color:blue;
}

table{

width:200px;
border-collapse:collapse;
border:1px solid black;
text-align: :center;
}

td{
border:1px solid black;
}



</style>
</head>
<body>

<%
int y = Integer.parseInt(request.getParameter("year"));
int m = Integer.parseInt(request.getParameter("month"));

Calendar cal = Calendar.getInstance();
cal.set(y, m-1,1);
int day = 1;
int lastday=cal.getActualMaximum(Calendar.DAY_OF_MONTH);
int Space=cal.get(Calendar.DAY_OF_WEEK)-1;
%>

<h2><%=y+"년"+m+"월"%> </h2>

<table>

<tr>
<td class="sun">일</td>
<td>월</td>
<td>화</td>
<td>수</td>
<td>목</td>
<td>금</td>
<td class="sat">토</td>
</tr>
<tr>
<% for (int i = 0; i < Space; i++) { %>
<td></td>
<% } 
for (int i = 0; i < lastday; i++) {
	if ((Space + day) % 7 == 0) {
%> 
<td class="sat"><%=day %></td>
</tr>
<tr>
<%} else if((Space + day) % 7 == 1){
%>
<td class="sun"><%=day %> </td>
<%} else{
%>
<td><%=day %> </td>
<%
}day++;
}


%>
</tr>
<!-- </tr>
<tr>
<td class="sun">1</td>
<td>2</td>
<td>3</td>
<td>4</td>
<td>5</td>
<td>6</td>
<td class="sat">7</td>
</tr>

<tr>
<td class="sun">8</td>
<td>9</td>
<td>10</td>
<td>11</td>
<td>12</td>
<td>13</td>
<td class="sat">14</td>
</tr>

<tr>
<td class="sun">15</td>
<td>16</td>
<td>17</td>
<td>18</td>
<td>19</td>
<td>20</td>
<td class="sat">21</td>
</tr>


<tr>
<td class="sun">22</td>
<td>23</td>
<td>24</td>
<td>25</td>
<td>26</td>
<td>27</td>
<td class="sat">28</td>
</tr>

<tr>
<td class="sun">29</td>
<td>30</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr> -->



</table>












</body>
</html>