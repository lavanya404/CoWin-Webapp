<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page  import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs//jquery/3.5.1/jquery.min.js"></script>

<style>
	.division1{
		font-family: Arial, Helvetica, sans-serif;
		padding-left: 20px;
	}
	.division2{
		font-family: Arial, Helvetica, sans-serif;
		padding-left: 200px;
		margin-top: 20px;
		padding-top: 20px;
	}
	#myTabContent{
		border-style: groove;
		border-radius:6px;
		margin-top: 20px;
		padding-bottom:-70px;
		padding-top: 20px;
	}
	.submit{
		margin-left: 45%;
		margin-top: 2%;
		margin-bottom: 2%;
		background-color: white;
		color: black;
		padding: 7px;
		font-size: 14px;
		border-color: black;
		border-radius: 6px;
		font-family: Arial, Helvetica, sans-serif;
	}
	.submitit{
		margin-left: 45%;
		margin-top: 2%;
		margin-bottom: 2%;
		background-color: white;
		color: black;
		padding: 7px;
		font-size: 14px;
		border-color: black;
		border-radius: 6px;
		font-family: Arial, Helvetica, sans-serif;
	}
	.contentTab{
		margin-top: 20px;
		padding-bottom:-70px;
		padding-top: 20px;
		
	}
</style>

</head>
<body background="pure.jpg">
<ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item " role="presentation">
    <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">Schedule Vaccination</button>
  </li>
  <li class="nav-item " role="presentation">
    <button class="nav-link" id="question-tab" data-bs-toggle="tab" data-bs-target="#question" type="button" role="tab" aria-controls="profile" aria-selected="true">Q&A</button>
  </li>
  <li class="nav-item " role="presentation">
    <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false">Tab 3</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="about-tab" data-bs-toggle="tab" data-bs-target="#about" type="button" role="tab" aria-controls="about" aria-selected="false">Tab 4</button>
  </li>
</ul>

<div class="tab-content content" id="myTabContent">
 <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">


<div class="contentTab">
<div class="addmember">
<%
String phone =(String)session.getAttribute("mobile_num");
String id =(String)session.getAttribute("id_num");
String state = request.getParameter("stateform");
String district = request.getParameter("districtform");
String hospital = request.getParameter("hosform");
String date = request.getParameter("dateform");
String time = request.getParameter("timeform");

out.println(state);
out.println(district);
out.println(hospital);
out.println(date);



Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/cowin","root","Lavanya_Kumar@123");
Statement st=conn.createStatement();
String query = "select * from scheduledata where id='"+id+"'";
ResultSet rs = st.executeQuery(query);
if(rs.next())
{
	String count = rs.getString("count");
	int num=Integer.parseInt(count);
	Statement str = conn.createStatement();
	str.executeUpdate("delete from scheduledata where id='"+id+"'");
	int j = st.executeUpdate("insert into cowin.scheduledata (id,state,district,hospital,dos,timeslot,count) values('"+id+"','"+state+"','"+district+"','"+hospital+"','"+date+"','"+time+"','"+ ++num +"')");
	response.sendRedirect("validateuser.jsp?mobile="+phone);
}
else{
	int j = st.executeUpdate("insert into cowin.scheduledata (id,state,district,hospital,dos,timeslot) values('"+id+"','"+state+"','"+district+"','"+hospital+"','"+date+"','"+time+"')");
	response.sendRedirect("validateuser.jsp?mobile="+phone);
}



%>
 
 </body>
</html>