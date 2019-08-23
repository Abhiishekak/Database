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
  background: url(nature8.jpg) no-repeat center fixed; 
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
  <h2><center><font color="white"> SALES INFORMATION AFTER UPDATION</font></center></h2>
<div>


</div>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr bgcolor="red">
<th>Product Id Id </th>
<th>Cost</th>
<th>Total Sale</th>
<th>Amount Received</th>
<th>Date</th>
</tr>

<%
String sal=request.getParameter("cn");
String amt=request.getParameter("cp");
String prid=request.getParameter("cq");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/temple52","root","abhiak");
PreparedStatement ps=con.prepareStatement("update sales set total_sale=?,amt=? where prid=?");
ps.setString(1,sal);
ps.setString(2,amt);
ps.setString(3,prid);
ps.executeUpdate();
int i=ps.executeUpdate();
if(i>0)
{%>
  <% out.print("<h1>"+"<center>"+"<font color='yellow'>"+"<p class='blink-one'>values successfully updated</p>"+"</font></center>"+"<h1>");
   Statement st=con.createStatement();

   ResultSet rs=st.executeQuery("select * from sales");
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
<%}
else
{ %>
  out.print("<h1>"+"<center>"+"<font color='yellow'>"+"<p class='blink-one'>Updation failed</p>"+"</font></center>"+"<h1>");
 <%}%>


<h2><center><a href="ays1.html"><font color="white"> Back</font></a></center></h2>

</body>
</html>