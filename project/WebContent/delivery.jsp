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
  background: url(temple27.jpg) no-repeat center fixed; 
  background-size: cover;
  }
    .blink-one{
animation:blinker-two 1s linear infinite;

}
@keyframes blinker-two{
0%{opacity:0;}
}
</style>
<body>
<center><h3><i><font color="orange" size="20">TEMPLE MANAGEMENT</font></i></h3></center>
  <marquee direction="left"><font color="orange">Om Shri Manjunathaya Namaha</font></marquee>
<%
String pid=request.getParameter("cn");
String pname=request.getParameter("cp");
String item=request.getParameter("cq");
String qty=request.getParameter("cr");
int qt=Integer.parseInt(qty);
String date=request.getParameter("cs");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/temple52","root","abhiak");
PreparedStatement ps=con.prepareStatement("insert into delivery values(?,?,?,?,?)");
ps.setString(1,pid);
ps.setString(2,pname);
ps.setString(3,item);
ps.setInt(4,qt);
ps.setString(5,date);
int i=ps.executeUpdate();
if(i>0)
{
	out.print("<h1>"+"<center>"+"<br><br><br><br>"+"<font color='yellow'>"+"<p class='blink-one'>You are successfully registered....</p>"+"</font></center>"+"<h1>");
	out.print("<center><a href='reg1.html'><font color='white'>BACK</font></a></center>");
}
else
	out.print("You are NOT successfully registered....");

%>
</body>
</html>