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
  background: url(temple16.jpg) no-repeat center fixed; 
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
<div>
<h2><font color="white">Trigger</font></h2></div>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr bgcolor="red">
<th>Executed Time </th>

</tr>

<%

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/temple52","root","abhiak");
CallableStatement ps1=con.prepareCall("{call increased_salary_of_sections(?,?)}");
ps1.setString(1,"s1");
ps1.setInt(2,20000);
ps1.execute();

%>
</table><br><br><br><br><br><br>
<center><a href="ays1.html"><font color="White">Back</font></a></center>
	


</body>
</html>