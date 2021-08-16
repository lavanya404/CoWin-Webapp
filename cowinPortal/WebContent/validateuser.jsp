<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page  import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Co-WIN Member Slot Details</title>
<link rel="stylesheet" href="stylehome.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs//jquery/3.5.1/jquery.min.js"></script>

<style>

      .box{
            height: 300px;
            color: black;
            border: 5px solid #fff;
            position: relative;
            border-radius:5px;
            padding-block:10px;
            margin-left: 300px;
            margin-bottom:20px;
            grid-gap:50px;
            width:50%;
        }
	.division1{
		font-family: Arial, Helvetica, sans-serif;
		padding-left: 200px;
		margin-top: 20px;
		padding-top: 20px;
		background-image:red;
		border-radius:20px;	
	}
	.division2{
		font-family: Arial, Helvetica, sans-serif;
		padding-left: 200px;
		margin-top: 20px;
		padding-top: 20px;
		background-image:#fff;
		border-radius:20px;
	}
	#myTabContent{
		border-style: groove;
		border-radius:200px;
		margin-top: 20px;
		padding-bottom:-70px;
		padding-top: 20px;
		border-color:black;
		background: #FFCCFC;
		padding-left:20px;
		padding-right:20px;
	}
	.submit{
		margin-left: 45%;
		margin-top: 2%;
		margin-bottom: 2%;
		color: #fff;
		padding: 7px;
		font-size: 14px;
		border-color: black;
		border-radius: 6px;
		font-family: Arial, Helvetica, sans-serif;
		background-image: linear-gradient(to right,#a517ba, #5f1762);
	}
	.submitit{
		margin-left: 45%;
		margin-top: 2%;
		margin-bottom: 2%;
		color: #fff;
		padding: 7px;
		font-size: 14px;
		border-color: #346751;
		border-radius: 6px;
		font-family: Arial, Helvetica, sans-serif;
	}
	.contentTab{
		margin-top: 20px;
		padding-bottom:-70px;
		padding-top: 20px;
		border-color: red;	
	}
	 #outer{
          background: #FDFDFD;
          width: 100%;
          height: 100vh;

        }
        #inner {
          background: #FFCCFC;
          width: 80%;
          height: 15vh;

        }
        .field_set{
        width:30%;
        height:50%;
        margin-top:80px;
        margin-bottom:200px;
        border:3px;
       
  		border-color: #a517ba ;
  		border-style: solid;
		}
		.dark-mode {
			background-color: black;
  			color: white;
  			filter: invert(1) hue-rotate(180deg);
		}
		.invert {
  			filter: invert(1) hue-rotate(180deg);
		}
		.modeBtn{
			margin-left: 1050px;
			background-color: #a517ba;
			color: black;
		}
		
		
		
		#myVideo {
  position: absolute;
  right: 0;
  min-width: 100%;
  min-height: 100%;
  z-index:-1;
}

.content {
  position: relative;
  bottom: 0;
  background: rgba(0, 0, 0, 0.5);
  color: #f1f1f1;
  width: 100%;
  padding: 20px;
}		
		
		
		.field_set{
		margin-top: 10px;
		}
		
        </style>
</head>
 <body id="myVideo">
 
 <video autoplay muted loop id="myVideo">
  <source src="animation.mp4" type="video/mp4">
</video>
<!-- --------------Header NavBar -->
<section id="nav-bar">
        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container-fluid">
                <h2 class="logo" style="padding-right:1050px;"><i>COWIN</i></h2>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="index.html">LOGOUT</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </section>
<div><br><br><br>
 <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
 
<%
String mobile_num = request.getParameter("mobile");
//out.println(mobile_num);
session.setAttribute("mobile_num", mobile_num);


Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/cowin","root","Lavanya_Kumar@123");
Statement st=conn.createStatement();
ResultSet rs;
String query="select count(mobile_number) from userdata where mobile_number='"+mobile_num+"'";
rs=st.executeQuery(query);
String stQuery="";
while(rs.next()){
	stQuery=rs.getString(1);
}
int var=Integer.parseInt(stQuery);

if(var<5)
{	
String query1 = "select * from userdata where mobile_number='"+mobile_num+"'";
ResultSet rs1= st.executeQuery(query1);
//if(rs.next()){
	int i=0;
out.println("<h3 style=\"font-family: Arial, Helvetica, sans-serif;color:#fff;padding-left:55px;font-weight:bold;\">Account Details</h3>");
out.print("<label style=\"font-weight:bold;padding-left:55px;color:#fff;font-size:1.3em;\" id=\"add\">Registered Mobile Number:  "+mobile_num+"</label>");
out.println("<p style=\"font-size:1.2em;color:red;text-align:center\">Re-Schedule can be done only Twice</p>");
//out.print(mobile_num);
if(var!=4){
	out.println("<form action=\"addmemberdetails.jsp\">");
	out.println("<input type=\"submit\" value=\"+Add Member\" class=\"submitit\" id=\"submitit\" style=\"background:#a517ba;color:#fff\"name=\"submitit\">");
	out.println("</form>");
	}
	else{
		out.println("<p style=\"color:red;text-align:center;font-size:1.5em\">Can't Add more than 4 members</p>");
	}
while(rs1.next()){
	
	out.println("<div class=\"box\">");
	//out.println("<div id=\"myTabContent\">");
	out.println("<form action=\"schedulepage.jsp \">");
	out.println("<label style=\"font-weight:bold;font-size:30px;color:#fff;margin-left:20px;\">" + rs1.getString("name") + "</label>");
	//out.println(rs1.getString("name"));
	out.println("<br>");
	//out.println("<br>");
	out.println("<label  style=\"font-weight: bold;margin-left:134px;\">Photo ID:</label>");
	out.println(rs1.getString("id_proof"));
	out.println("<br>");
	out.println("<br>");
	out.println("<label  style=\"font-weight: bold;margin-left:134px;\">Year of Birth:</label>");
	out.println(rs1.getString("year"));
	out.println("<br>");
	out.println("<br>");
	out.println("<label  style=\"font-weight: bold;margin-left:134px;padding-right:45px;\">ID Number:</label>");
	//out.println(rs1.getString("id_number"));
	out.println("<input type=\"text\" id=\"name" + i + "\" name=\"name" + i + "\" value=\"" + rs1.getString("id_number")+"\" style=\"margin-right:50px;\"readonly/>");
	out.println("<input type=\"hidden\" id=\"hidden\" name=\"hidden\" value=\"" + i +"\" />");
	out.println("<br>");
	
	
		
	String id=rs1.getString("id_number");
	Statement str=conn.createStatement();
	ResultSet rs2;
	String status="select * from cowin.scheduledata where id='"+id+"'";
	rs2=str.executeQuery(status);
	if(rs2.next())
	{
		String count=rs2.getString("count");
		int num=Integer.parseInt(count);
	    out.println("<br>");
		out.println("<label  style=\"font-weight: bold;margin-left:134px;\">Date of Schedule:</label>");
		out.println("<input type=\"text\" id=\"status"+ i +"\" name=\"status"+ i +"\" value=\"" +rs2.getString("dos") + "\" readonly />");
		out.println("<br>");
		out.println("<label  style=\"margin-left:134px;font-weight: bold\">Time of Schedule:</label>");
		out.println("<input type=\"text\" id=\"statustime"+ i +"\" name=\"statustime"+ i +"\" value=\"" +rs2.getString("timeslot") + "\" readonly />");
		if(num==2){
			out.println("<input disabled = \"disabled\" type=\"submit\" style=\"margin-left:100px;background-color:#C70D3A\" value=\"Re-Schedule\" class=\"submit\" name=\"submitit\" id=\"submit\">");

		}
		else{
			out.println("<input  type=\"submit\" style=\"margin-left:100px;background-color:#C70D3A\" value=\"Re-Schedule\" class=\"submit\" name=\"submitit\" id=\"submit\">");

		}
					
	}
	else{
		
		out.println("<br>");
		out.println("<label style=\"margin-left:134px;font-weight: bold\">Status of Schedule:</label>");
		out.println("<input type=\"text\"  id=\"nodata"+ i +"\" name=\"nodata"+ i +"\" value=\"" +"Not Scheduled" + "\" readonly />");
		out.println("<input  type=\"submit\" style=\"margin-left:100px;background-color:#346751\"  value=\"Schedule\" class=\"submitit\" name=\"submit\" id=\"submit\">");
	}
	out.println("</div>");
	out.println("</form>");
	out.println("</div>");
	out.println("</div>");
	
  }
out.println("</div>");
}

/* if(var!=4){
out.println("<form action=\"addmemberdetails.jsp\">");
out.println("<input type=\"submit\" value=\"+Add Member\" class=\"submitit\" id=\"submitit\" style=\"background:#a517ba;color:#fff\"name=\"submitit\">");
out.println("</form>");
}
else{
	out.println("<p style=\"color:red;text-align:center;font-size:1.5em\">Can't Add more than 4 members</p>");
} */
out.println("</div>");
out.println("</div>");
out.println("</div>");

%>
<br>
<br>
<br>
<br>
</div>
</div>

<br><br><br><br><br><br><br><br><br>
<script>
function change();
{
	document.getElementbyId(".submit").value="Re-Schedule";
	}
    $(document).ready(function(){
    $("#submitit").on('click', function(){
   		window.href.location="member.html";
    	$(".contentTab").show();
    	$(".contentTab").append( );
    	
    
    });
    $("input").click(function() {
        $(".submit").prop("value", "Re-Schedule");
    });
    $("#submit").on('click', function(){
    	window.href.location="schedulepage.html";
    });
    });
}
    function deleted()
    {
    <%
    String hidden=request.getParameter("hidden");
    String id_number=request.getParameter("name"+hidden);
    //console.log("id_number");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/cowin","root","Lavanya_Kumar@123");
    Statement st2=conn.createStatement();
    int i=st.executeUpdate("delete from userdata where id_number='"+id_number+"'");
    out.println(i);
    %>	
    window.location.reload();
    }

    var btn=document.getElementById("btn");
    btn.addEventListener("click",function(e){
    	e.preventDefault();
    	deleted();
    });

    var add=$('#add');
    $(document).ready(function(){
    	var mobile=$('#mobile').val();
    	console.log(mobile);
    	var num=mobile%10000;
    	add.append("XXX-XXX-"+num);
    });
    </script>
    </body>
    </html>