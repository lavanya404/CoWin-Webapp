<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Co-WIN</title>
    <link rel="icon" href="hospital.png" type="image/x-icon">
    <link rel="stylesheet" href="stylehome.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
    <style>
    body{
        background-size: 1650px 1000px;
        font-family: Verdana, sans-serif;
        }
        #pid{
        text-transform:uppercase;
        display:hidden;
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
  bottom: 0;
  min-width: 100%;
  min-height: 100%;
  z-index:-1;
}

#align{
     display:flex;
     justify-content:center; 
     margin-top:20px;
    

}
#myForm{
   border:2px solid #fff;
   border-radius:20px;
   padding-left:100px;
   padding-right:100px;
   padding-bottom:20px;
  

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
 <body>
 
 <video autoplay muted loop id="myVideo">
  <source src="animation.mp4" type="video/mp4">
</video>
<%String mobile=(String)session.getAttribute("mobile_num");
/* if(mobile==null)
{
	response.sendRedirect("error1.jsp");
}
else{ */
%>


<!----------------Header NavBar -->
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
    
    <div class="member">
    <h3 style="padding-left:500px;color:#fff;font-weight:bold;margin-top:40px;">Member Details</h3>
    <div id="align">
    <form action="insertdetails.jsp" id="myForm" method="post">
   
    <br>
    <label><b>ID Proof</b></label>
    <br>
    <select class="select" placeholder="Select" name="Select"  id="Select" required>
    	<option >Select </option>
        <option value="Aadaar_Card">Aadaar Card</option>
        <option  value="Pan_Card">Pan Card</option>
        <option  value="Driving_License">Driving License</option>
        <option  value="Voter_ID">Voter ID</option>
    </select>
    <br>
    <br>
    <label ><b>ID Number</b></label>
    <br>
    <input  type="text" placeholder="Enter ID Number" name="pid"  class="inp"  id="pid"  required>
 
    <br>
    <br>
    <label><b>Name</b></label>
    <br>
    <input placeholder="Enter Name" type="text" class="inp" name="uname"  id="uname" required>
    <br>
    <br>
    <label><b>Gender</b></label>
    <br>
    <input class="rad" type="radio" name="gender" id="gender" value="male" required>
    <label class="gender">Male</label>
    <input class="rad" type="radio" name="gender" id="gender" value="female" required>
    <label class="gender">Female</label>
    <input class="rad" type="radio" name="gender" id="gender" value="other" required>
    <label class="gender">Others</label>
    
    <br>
    <br>
    <label><b>Year or Birth</b></label>
    <br>
    <!-- <input placeholder="Enter year of Birth" required type="text" class="inp" name="dob" id="dob"> -->
    <select required type="text" class="inp" name="dob" id="dob" name="birth-year">
    <option value="2002">2002</option>
    <option value="2001">2001</option>
    <option value="2000">2000</option>
    <option value="1999">1999</option>
    <option value="1998">1998</option>
    <option value="1997">1997</option>
    <option value="1996">1996</option>
    <option value="1995">1995</option>
    <option value="1994">1994</option>
    <option value="1993">1993</option>
    <option value="1992">1992</option>
    <option value="1991">1991</option>
    <option value="1990">1990</option>
    <option value="1989">1989</option>
    <option value="1988">1988</option>
    <option value="1987">1987</option>
    <option value="1986">1986</option>
    <option value="1985">1985</option>
    <option value="1984">1984</option>
    <option value="1983">1983</option>
    <option value="1982">1982</option>
    <option value="1981">1981</option>
    <option value="1980">1980</option>
    <option value="1979">1979</option>
    <option value="1978">1978</option>
    <option value="1977">1977</option>
    <option value="1976">1976</option>
    <option value="1975">1975</option>
    <option value="1974">1974</option>
    <option value="1973">1973</option>
    <option value="1972">1972</option>
    <option value="1971">1971</option>
    <option value="1970">1970</option>
    <option value="1969">1969</option>
    <option value="1968">1968</option>
    <option value="1967">1967</option>
    <option value="1966">1966</option>
    <option value="1965">1965</option>
    <option value="1964">1964</option>
    <option value="1963">1963</option>
    <option value="1962">1962</option>
    <option value="1961">1961</option>
    <option value="1960">1960</option>
</select>
    <br>
    <br>
    <hr class="htext">
    <br>
    <input type="submit" class="sbtn" name="Add member" id="go" style="color:#fff;margin-right:60px;background-color:#a517ba;" value="+Add Member">
    </form>
     </div>
   
    </div>
    <script>
    var btn = document.getElementById("go");
    var form=document.getElementById("myForm");
    btn.addEventListener("click",function(e){
       e.preventDefault();
       var res1=validate();
       if(res1){
    	   form.submit();
       }
       else{
    	   alert("Invalid ID number");  
       }
       
    	   
    	
    });
    
    
    function validate()
    {
    	var res=document.getElementById("Select").value;
    	console.log(res);
    	var num=document.getElementById("pid").value;
    	console.log(num);
    	if(res=="Aadaar_Card")
    		{
    		
    		
    		var reg=/^[2-9]{1}[0-9]{11}$/;
    		var result=reg.test(num)
    		if(!result)
    			{
    			//window.alert("Invalid Aadhar Number");
    			return 0;
    			}
    		else{
    			//window.location.href="insertdetails.jsp";
    			return true;
    		}
    		}
    		 
    		/*  else if(!regexp.text(pan))
    			{
    			$("pan").val("");
    			$("pan").parent().append('<span >Invalid pancard</span>');
    			}
    		else{
    			$("pan").parent().find(".error").remove();
    			
    		} */
    	
    	else if(res=="Pan_Card")
    		{
    		var regexp=/^([A-Z]){5}([0-9]){4}([A-Z]){1}$/;
    		var result=regexp.test(num);
    		if(!result)
    			{
    			
    			//window.alert("Invalid Pan card number");
    			return 0;
    			}
    		else{
    			//window.location.href="success.jsp";
    			return 1;
    		}
    		}
    	else if(res=="Driving_License")
    		{
    		var regexp=/^[A-Z][A-Z]\d{13}$/;
    		var result=regexp.test(num);
    		if(!result)
    			{
    			//alert("Invalid Driving License");
    			return 0;
    			}
    		else{
    			return 1;
    		}
    		}
    	else if(res=="Voter_ID")
    		{
    		var regexp=/^([A-Z]){3}([0-9]){7}$/;
    		var result=regexp.test(num);
    		if(!result)
    			{
    			//alert("Invalid Driving License");
    			return 0;
    			}
    		else{
    			return 1;
    		}
    		}
    }
    	
    </script>
    <% %>
    
</body>
</html>