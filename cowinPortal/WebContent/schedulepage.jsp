<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Co-WIN Schedule</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs//jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="stylehome.css">
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
   margin-top:50px;
  

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

<!-- -----------main------ -->
<div id="myForm">
<div style="margin-left:60px;margin-right:60px;">
<form action="successscheduled.jsp" method="post">
    <div style="margin-top:100px;">
    <div class="row">
    <div class="form-group col-sm-5 ">
        <label class=" fw-bold" for="stateDropdown" style="color:#fff;">Select State *</label>
        <div >
        <select class="form-select" name="stateform" id="stateDropdown">
            <option selected>Select</option>
          </select>
          </div>
      </div>
      <div class="form-group col-sm-5 ">
            <label class="fw-bold"  for="districtDropdown" style="color:#fff;">Select District *</label>
            <div >
            <select class="form-select" name="districtform" id="districtDropdown">
                <option selected>Select</option>
              </select>
            </div>
      </div>
      <div class="form-group col-sm-1" >
      </div>
    </div>
    <div class="row mt-5">
        <div class="form-group col-sm-3 ">
            <label class=" fw-bold" for="hosDropdown" style="color:#fff;">Select Hospital *</label>
            <div class="col-md-8">
            <select class="form-select" name="hosform" id="hosDropdown">
                <option selected>Select</option>
              </select>
              </div>
          </div>
          <div class="form-group col-sm-3 ">
            <label class=" fw-bold"  for="dateDropdown" style="color:#fff;">Select Date *</label>
            <div class="col-md-8">
            <input type="date" name="dateform" id="dateDropdown" required>
            </div>
          </div>
          <div class="form-group col-sm-3" >
            <label class="fw-bold"  for="timeDropdown" style="color:#fff;">Select Time Slots *</label>
            <div class="col-md-6">
            <select class="form-select" name="timeform" id="timeDropdown">
                <option selected>Select</option>
              </select>
            </div>
          </div>
    </div>
    </div><br><br>
    <input class="btn btn  pr-3" type="submit"  value="Schedule" name="schedule" id="btn" style="color:#fff;margin-right:60px;background-color:#a517ba;">
    </form>
    </div>
    </div>
    <%
    String mobile_num = (String)session.getAttribute("mobile_num");
    session.setAttribute("mobile_num",mobile_num);
    String hidden = request.getParameter("hidden");
    String id_number = request.getParameter("name"+hidden);
    //out.println(id_number);
    //out.println(hidden);
    session.setAttribute("id_num", id_number);
    %>
    <script>
    $(document).ready(function()
    		{
    		    console.log("loaded");
    		    var state =$("#stateDropdown");
    		    var district=$("#districtDropdown");
    		    var btn=$('#btn');
    		    var i=0;
    		    var hos=$('#hosDropdown');
    		    var dat=$('#dateDropdown');
    		    var slot=$('#timeDropdown');

    		    //call API

    		    $.ajax({
    		        url:"https://cdn-api.co-vin.in/api/v2/admin/location/states",
    		        success:function(results){
    		            console.log(results.states);
    		            $.each(results.states, function(key,value){
    		                state.append('<option value=' + value.state_id + '>' +value.state_name+ '</option>');   
    						       
    		            });
    		        }
    		    });

    		    $('#stateDropdown').change(function(){
    		         var stateId=$(this).val();
    		        console.log("stateId: "+ stateId);
    				stateval=$('#stateDropdown').find(":selected").text();
    				$.post(stateval);
    				console.log(stateval);
    		       

    		    $.ajax({
    		        url:"https://cdn-api.co-vin.in/api/v2/admin/location/districts/" + stateId,
    		        success: function(results)
    		        {
    		            console.log(results.districts);
    		            district.empty();
    		            $.each(results.districts, function(key,value){
    		                district.append('<option value=' + value.district_id + '>' +value.district_name+ '</option>');
    		         })
    		        
    		        }
    		    });
    		});
    		  $('#districtDropdown').change(function(){
    		      var districtId=$(this).val();
    		      console.log("district:"+districtId);
    				districtval=$('#districtDropdown').find(":selected").text();
    				console.log(districtval);
    		      var d=new Date();
    		    var today_date=d.getDate();
    		    $.ajax({
    		        url:"https://cdn-api.co-vin.in/api/v2/appointment/sessions/public/findByDistrict?district_id="+districtId+"&date="+today_date,
    		        success: function(results)
    		        {
    		            console.log(results.sessions);
    		            hos.empty();
    		            $.each(results.sessions,function(key,value){
    		                hos.append('<option value='+value.name+'>'+value.name+'</option>');
    		            });
    		        }
    		    });

    		  });
    		  $('#dateDropdown').change(function(){
    		    var district=$('#districtDropdown').val();
    		    var dis=$(this).val();
    			hospital=$('#hosDropdown').find(":selected").text();
    			console.log(hospital);
    			
    		    var today=dis.split("-").reverse().join("-");
    		    console.log(today);
    		    $.ajax({
    		        url:"https://cdn-api.co-vin.in/api/v2/appointment/sessions/public/calendarByDistrict?district_id="+district+"&date="+today,
    		        success: function(results)
    		        {
    		            slot.empty();
    		            $.each(results.centers,function(key,value)
    		            {
    		                $.each(value.sessions,function(key,value){
    		                	while(i<value.slots.length){
    		                    slot.append('<option>'+value.slots[i]+'</option>');
    		                    i++;}
    		            });
    		        });
    				timeslot=$('#timeDropdown').find(":selected").text();
    			console.log(timeslot);
    				
    		        }
    		    
    		    });
    		});

    		});
    
    </script>

  </body>

</html>