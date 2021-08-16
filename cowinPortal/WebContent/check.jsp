<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,java.util.*" %>
<%
String mobile_num=request.getParameter("mobile");


Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/cowin","root","Lavanya_Kumar@123");
Statement st=conn.createStatement();
ResultSet rs;
String querymob = "select count(mobile_num) from data where mobile_num='"+mobile_num+"'";
rs = st.executeQuery(querymob);
String stQuery="";
while(rs.next()){
stQuery=rs.getString(1);
}
int var=Integer.parseInt(stQuery);
	
if(var!=0)
	{
		response.sendRedirect("validateuser.jsp");
	}
	else{
		response.sendRedirect("addmember.jsp");
	}


%>