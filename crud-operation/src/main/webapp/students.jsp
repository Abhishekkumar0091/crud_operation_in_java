<%@page import="java.sql.*" %>
<html>
<body> 
<%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp2?createDatabaseIfNotExist=true", "root", "@Abhi1122");
Statement st = cn.createStatement();
ResultSet rst=st.executeQuery("select * from students");
%>
<table style='margin:auto;border-collapse:collapse;45%' border='1'>
<tr>
<th>Student Id</th>
<th>Student Name</th>
<th>Student Email</th>
<th>Student Age</th>
</tr>
<%
while(rst.next())
{%>
   <tr>
   <td><%=rst.getString(1) %></td>
   <td><%=rst.getString(2) %></td>
   <td><%=rst.getString(3) %></td>
   <td><%=rst.getString(4) %></td>
   </tr>
<%}
%>
</table>
</body>
</html>