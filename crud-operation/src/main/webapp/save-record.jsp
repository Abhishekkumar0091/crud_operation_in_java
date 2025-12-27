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
 PreparedStatement ps= cn.prepareStatement("insert into students values(?,?,?,?)");
ps.setString(1, studentId);
ps.setString(2, studentName);
ps.setString(3, studentEmail);
ps.setString(4, studentAge);
ps.executeUpdate();
%>
<h2>Product record has been saved successfully</h2>
</body>
</html>