<%@page import="java.sql.*" %>
<html>
<body>
<%
String studentId=request.getParameter("sid");
// JDBC code to insert above data into students table
 Class.forName("com.mysql.cj.jdbc.Driver");
 Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp2?createDatabaseIfNotExist=true", "root", "@Abhi1122");
 PreparedStatement ps= cn.prepareStatement("delete from students where sid=?");
ps.setString(1, studentId);
int num=ps.executeUpdate();
if(num>=1)
{%>
   <h2 style='color: green'>Student record with id <%=studentId%> has been deleted</h2>
<% }
else
{%>
<h2 style='color: red'>Student record with id <%=studentId%> does not exist</h2>
<%}
%>
</body>
</html>