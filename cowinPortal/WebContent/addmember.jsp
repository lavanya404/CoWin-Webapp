<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

<style>
	.btn{
		margin-left: 40%;
		margin-top: 15%;
		margin-bottom: 25%;
		background-color: white;
		color: #a517ba;
		padding: 7px;
		font-size: 14px;
		border-color:black;
		border-radius: 6px;
		font-family: Arial, Helvetica, sans-serif;
	}
	
	.addmember{
	    color:white;
		border-style: groove;
		margin: 100px;
	}	
</style>
</head>
<body>
 
<ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item " role="presentation">
    <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">Schedule Vaccination</button>
  </li>
</ul>

<div class="tab-content" id="myTabContent">
  <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
  <form action="temporary.jsp" method="post">
		<input type="submit" value="+Add Member" class="btn" name="btn" id="btn" style="background-image: linear-gradient(to right,#a517ba, #5f1762);color:white">

	</form>
  </div>
</div>
 <form action="addmemberdetails.jsp" method="post">
		<input type="submit" value="+Add Member" class="btn" name="btn" id="btn" style="background-image: linear-gradient(to right,#a517ba, #5f1762);color:white">

 </form>
<%
//String phone;
String mobile_num = request.getParameter("mobile");
//out.println(mobile_num);
session.setAttribute("mobile_number", mobile_num );

%>
</body>
</html>