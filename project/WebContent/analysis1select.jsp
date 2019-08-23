<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
html { 
margin:0;
  background: url(temple15.jpg) no-repeat center fixed; 
  background-size: cover;
}
div{
width:200px;
margin:50px 0 0 200px;
padding:5px;
height:20px;
background-color:glass;
color:white;}

</style>
<body>
<center><h3><i><font color="orange" size="20">TEMPLE MANAGEMENT</font></i></h3></center>
  <marquee direction="left"><font color="orange">Om Shri Manjunathaya Namaha</font></marquee>
  <h2><center><font color="red"> EMPLOYEE INFORMATION </font></center></h2>
  


<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr bgcolor="red">
<th>Employee Id </th>
<th>Employee Name</th>
<th>Address</th>
<th>Phone</th>
<th>Gender</th>
</tr>
<%

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/temple52","root","abhiak");
Statement ps=con.createStatement();

ResultSet rs=ps.executeQuery("select * from employee");
while(rs.next())
{
%>
<tr bgcolor="yellow">
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
</tr>
<%}%>
</table>
<h2><center><a href="ays1.html"><font color="white"> Back</font></a></center></h2>
</body>
</html>