<%@page import="java.sql.*" %>
<html>
<body>
<%
String studentId=request.getParameter("sid");
String studentName=request.getParameter("name");
String studentEmail=request.getParameter("email");
String studentAge=request.getParameter("age");

// JDBC code to insert above data into students table
 Class.forName("com.mysql.cj.jdbc.Driver");
 Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp2?createDatabaseIfNotExist=true", "root", "@Abhi1122");
 PreparedStatement ps= cn.prepareStatement("update students set name=?,email=?,age=? where sid=?");
ps.setString(1, studentName);
ps.setString(2, studentEmail);
ps.setString(3, studentAge);
ps.setString(4, studentId);
ps.executeUpdate();
%>
<h2 style='color:green'>Student record has been updated successfully</h2>
</body>
</html>