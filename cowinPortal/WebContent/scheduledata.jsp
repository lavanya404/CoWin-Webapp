<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String state=request.getParameter("stateform");
String district=request.getParameter("districtform");
String hos=request.getParameter("hosform");
String dat=request.getParameter("dateform");
String slot=request.getParameter("timeform");

Class.forName("com.mysql.jdbc.Driver");

Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/cowin","root","Lavanya_Kumar@123");

Statement st=conn.createStatement();

int j=st.executeUpdate("INSERT INTO cowin.schedule0(state,district,hospital,dos,timeslot) values('"+state+"','"+district+"','"+hos+"','"+dat+"','"+slot+"')");

response.sendRedirect("successscheduled.jsp");
%>
</body>
</html>