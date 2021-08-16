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
String num=(String)session.getAttribute("mobile_num");
out.println(num);

String id_proof=(String)request.getParameter("Select");
String id_number=(String)request.getParameter("pid");
String Name=(String)request.getParameter("uname");
String gender=(String)request.getParameter("gender");
String year=(String)request.getParameter("dob");



/* session.setAttribute("name",Name); 
session.setAttribute("proof",id_proof);
session.setAttribute("number",id_number);
session.setAttribute("year",year); */


Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cowin","root","Lavanya_Kumar@123");
Statement st=con.createStatement();
int j = st.executeUpdate("INSERT INTO cowin.userdata(mobile_number,id_proof,id_number,name,gender,year) VALUES('"+num+"','"+id_proof+"','"+id_number+"','"+Name+"','"+gender+"','"+year+"')");

response.sendRedirect("validateuser.jsp?mobile="+num);
%>


</body>
</html>