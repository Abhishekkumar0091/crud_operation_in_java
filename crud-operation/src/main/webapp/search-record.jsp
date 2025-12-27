<%@page import="java.sql.*" %>
<html>
<body>
<%
String studentId=request.getParameter("sid");
// JDBC code to insert above data into students table
 Class.forName("com.mysql.cj.jdbc.Driver");
 Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp2?createDatabaseIfNotExist=true", "root", "@Abhi1122");
 PreparedStatement ps= cn.prepareStatement("select * from students where sid=?");
ps.setString(1, studentId);
ResultSet rst=ps.executeQuery();
if(rst.next())
{%>
   <table border='1'>
   <tr>
   <td>Student Id</td>
   <td style='color:blue'><%=rst.getString(1) %></td>
   </tr>
    <tr>
   <td>Student Name</td>
   <td style='color:blue'><%=rst.getString(2) %></td>
   </tr>
    <tr>
   <td>Student Email</td>
   <td style='color:blue'><%=rst.getString(3) %></td>
   </tr>
    <tr>
   <td>Student Age</td>
   <td style='color:blue'><%=rst.getString(4) %></td>
   </tr>
   
   </table>
	
<% }
else
{%>
<h2 style='color: red'>Student record with id <%=studentId%> not found</h2>
<%}
%>
</body>
</html>