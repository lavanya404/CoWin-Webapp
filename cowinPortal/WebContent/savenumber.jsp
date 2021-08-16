<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String number=request.getParameter("num");

session.setAttribute("number",number); 

Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/cowin","root","Lavanya_Kumar@123");
Statement st=conn.createStatement();
int j = st.executeUpdate("INSERT INTO cowin.mdetails(number) VALUES('"+number+"')");

response.sendRedirect("addmember.html");
%>


</body>
</html>