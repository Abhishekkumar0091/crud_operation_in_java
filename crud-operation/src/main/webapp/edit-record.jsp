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
   <form action="update-record.jsp" method="post">
   <table border='1'>
   <tr>
   <td>Student Id</td>
   <td style='color:blue'><input type='text' value='<%=rst.getString(1)%>' name='sid' readonly></td>
   </tr>
    <tr>
   <td>Edit Student Name</td>
   <td><input type='text' value='<%=rst.getString(2)%>' name='name'></td>
   </tr>
    <tr>
   <td>Edit Student Email</td>
   <td><input type='text' value='<%=rst.getString(3)%>' name='email'></td>
   </tr>
    <tr>
   <td>Edit Student Age</td>
   <td><input type='text' value='<%=rst.getString(4)%>' name='age'></td>
   </tr>
   <tr>
   <td colspan="2" align="right"><button>Update Record</button></td>
   </tr>
   </table>
   </form>
<% }
else
{%>
<h2 style='color: red'>Student record with id <%=studentId%> not found</h2>
<%}
%>
</body>
</html>