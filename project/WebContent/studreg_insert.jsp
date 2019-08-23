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
  background: url(temple19.jpg) no-repeat center fixed; 
  background-size: cover;
  }
  body{
margin:0px;
padding:0px;
font-family:helvetica;
}
blink{
animation:blinker-two 0.6s linear infinite;
color:#1c87c9;
}
@keyframes blinker{
50%{opacity:0;}
}
.blink-one{
animation:blinker-two 1s linear infinite;

}
@keyframes blinker-two{
0%{opacity:0;}
}
.blink-two{
animation:blinker-two 1.4s linear infinite;

}
@keyframes blinker-two{
100%{opacity:0;}
}
#wrapper{
text-align:center;
margin:0 auto;
padding:0px;
width:995px;
}

</style>
<body>
<center><h3><i><font color="orange" size="20">TEMPLE MANAGEMENT</font></i></h3></center>
  <marquee direction="left"><font color="orange">Om Shri Manjunathaya Namaha</font></marquee>
<%
String eid=request.getParameter("cn");
String ename=request.getParameter("cp");
String eaddress=request.getParameter("cq");
String ephone=request.getParameter("cr");

String gender=request.getParameter("gender");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/temple52","root","abhiak");
PreparedStatement ps=con.prepareStatement("insert into employee values(?,?,?,?,?)");
ps.setString(1,eid);
ps.setString(2,ename);
ps.setString(3,eaddress);
ps.setString(4,ephone);
ps.setString(5,gender);
int i=ps.executeUpdate();
if(i>0)
{
	
	out.print("<h1>"+"<center>"+"<br><br><br><br>"+"<font color='yellow'>"+"<p class='blink-one'>You are successfully registered....</p>"+"</font></center>"+"<h1>");
	out.print("<center><a href='reg1.html'><font color='white'>BACK</font></a></center>");
}
else
	out.print("You are NOT registered....");

%>
</body>
</html>
