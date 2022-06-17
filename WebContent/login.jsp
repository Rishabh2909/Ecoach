<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="login.css" rel="stylesheet">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    
    <title>E-Coach</title>
  </head>
  <body>
      <!-- navbar -->
      <container>
        <div class="containerx">

            <nav class="navbar navbar-expand-lg navbar-light bg-light " id="fix">

                <div class="container-fluid">
                    <img src="download.jpg"
                        style="border-radius: 90% ; margin-left: 1%; margin-right: 1%;  " height="3%" width="4%" alt="">
                    <a class="navbar-brand" href="index.html">E-Coach</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false"
                        aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="index.html"></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#"></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link disabled"></a>
                            </li>
                        </ul>
                        <form class="d-flex">
                            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                            <button class="btn btn-outline-success" style="background-color: rgb(61, 222, 236);margin-right: 5%; " 
                                type="submit">Search</button>
                        </form>
                    </div>
                </div>
            </nav>


        </div>
    </container>

<container>
    <h1>Login</h1>
    <div class="col" >
      <div class="row" style="height: 5rem; text-align: center; ">
        <div  class="list-group list-group-horizontal" id="list-tab" role="tablist" >
          <a class="list-group-item list-group-item-action active a" id="list-home-list " style=" border-bottom-left-radius: 95%;" data-bs-toggle="list" href="#list-home" role="tab" aria-controls="list-home">INSTITUTE</a>
          <a class="list-group-item list-group-item-action b" id="list-profile-list " data-bs-toggle="list" href="#list-profile" role="tab" aria-controls="list-profile">STUDENT</a>
          <a class="list-group-item list-group-item-action c" id="list-messages-list " style="border-bottom-right-radius: 95%;" data-bs-toggle="list" href="#list-messages" role="tab" aria-controls="list-messages">TRAINER</a>
        </div>
      </div>
      <div class="col-8" style="text-align: center; margin: auto; align-self: center; " >
        <div class="tab-content" id="nav-tabContent">
          <div class="tab-pane fade show active" id="list-home" role="tabpanel" aria-labelledby="list-home-list">
            <container class="d-flex" style="text-align: center;">
            <div class="parallax container loginForm" style="margin-top: 10%; border-right: 5px solid black; border-bottom-left-radius: 10%;">
              <h1>Login Institute</h1>
              <form action="institute_login.jsp" method="post">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Email address</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" name="institute_email" aria-describedby="emailHelp" placeholder="Enter email">
                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" class="form-control" name="institute_password" id="exampleInputPassword1" placeholder="Password">
                  </div>
                  
                  <button type="submit" class="btn btn-primary btn-outline-success"  style="margin-top: 5%; " id="buttonSlogin">Submit</button>
                </form>

          </div>
          <div class="parallax container loginForm1" style="margin-top: 10%;">
            <h1>Register Institute</h1>
            <form action="institute_register.jsp">
              <div class="form-group">
                <label for="InstituteName">Institute Name</label>
                <input type="text" class="form-control" name="institute_name" id="FirstName" placeholder="First Name">
              </div>
              
            
              <div class="form-group">
                <label for="exampleInputEmail1">Email address</label>
                <input type="email" class="form-control" name="institute_email" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
              </div>
              <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input type="password" class="form-control" name="institute_password" id="exampleInputPassword1" placeholder="Password">
              </div>
              <div class="form-group">
                <label for="PhoneNumber">Phone number</label>
                <input type="text" class="form-control" name="institute_phone" id="PhoneNumber" placeholder="Phone Number">
              </div>
              <div class="form-group">
                <label for="Area">Area</label>
                <input type="text" class="form-control" name="institute_area" id="Area" placeholder="Area">
              </div>
              
              <div class="d-flex" style="margin-top: 1%;">
                
                <div class="col-md-3 position-relative"  style="margin-right: 5px;">
                <label for="state" class="form-label">State</label>
                <select  id="state" class="form-select" name="institute_state" required>
                  
                </select>
                <div class="invalid-tooltip">
                  Please select a valid state.
                </div>
              </div>
                
                
              <div class="col-md-6 position-relative">
                <label for="district" class="form-label">District</label>
                <select id="district" class="form-select" name="institute_district" required>
                
                </select>
                <div class="invalid-tooltip">
                  Please provide a valid District.
                </div>
              </div>
              
            </div>
            
              <button type="submit" class="btn btn-primary btn-outline-success" id="buttonSlogin" style="margin-top: 5%;">Submit</button>
            </form>
              
        </div>
          </container>
          </div>
          
          <div class="tab-pane fade" id="list-profile" role="tabpanel" aria-labelledby="list-profile-list"><container>
            <container class="d-flex">
              <div class="parallax container loginForm" style="top: 5rem; border-right: 5px solid black;">
                <h1>Login Student</h1>
                <form  action="student_login.jsp">
                    <div class="form-group">
                      <label for="exampleInputEmail1">Email address</label>
                      <input type="email" class="form-control" id="exampleInputEmail1" name="student_email" aria-describedby="emailHelp" placeholder="Enter email">
                      <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword1">Password</label>
                      <input type="password" class="form-control" name="student_password" id="exampleInputPassword1" placeholder="Password">
                    </div>
                   
                    <button type="submit" class="btn btn-primary btn-outline-success"style="margin-top: 5%;" id="buttonSlogin">Submit</button>
                  </form>
  
            </div>
            <div class="parallax container loginForm1" style="top: 5rem;">
              <h1>Register Student</h1>
              <form action="student_register.jsp">
                <div class="d-flex">
                  <div class="form-group">
                    <label for="FirstName">First Name</label>
                    <input type="email" class="form-control" name="student_first_name" id="FirstName" placeholder="First Name">
                  </div>
                  <div class="form-group"left: 2%;>
                    <label for="LastName">Last Name</label>
                    <input type="email" class="form-control" name="student_last_name" id="LastName" placeholder="Last Name">
                  </div>
                </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Email address</label>
                    <input type="email" class="form-control" id="exampleInputEmail1"name="student_email" aria-describedby="emailHelp" placeholder="Enter email">
                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" class="form-control" name="student_password"id="exampleInputPassword1" placeholder="Password">
                  </div>
                  <div class="form-group">
                    <label for="PhoneNumber">Phone number</label>
                    <input type="text" class="form-control" name="student_phone" id="PhoneNumber" placeholder="Phone Number">
                  </div>
                  <div class="d-flex" style="margin-top: 1%;">
                
                <div class="col-md-3 position-relative"  style="margin-right: 5px;">
                <label for="state2" class="form-label">State</label>
                <select id="state2" class="form-select" name="student_state" required>
                  
                </select>
                <div class="invalid-tooltip">
                  Please select a valid state.
                </div>
              </div>
                
                
              <div class="col-md-6 position-relative">
                <label for="district2" class="form-label">District</label>
                <select id="district2" class="form-select" name="student_district" required>
                
                </select>
                <div class="invalid-tooltip">
                  Please provide a valid District.
                </div>
              </div>
              
            </div>
                  <button type="submit" class="btn btn-primary btn-outline-success" style="margin-top: 5%;"id="buttonSlogin">Submit</button>
                </form>
                
          </div>
            </container>

        </div>
          <div class="tab-pane fade" id="list-messages" role="tabpanel" aria-labelledby="list-messages-list"><container>
            <container class="d-flex">
              <div class="parallax container loginForm" style="margin-top: 10%; border-right: 5px solid black;">
                <h1>Login Trainer</h1>
                <form action="trainer_login.jsp">
                    <div class="form-group">
                      <label for="exampleInputEmail1">Email address</label>
                      <input type="email" class="form-control" id="exampleInputEmail1" name="trainer_email" aria-describedby="emailHelp" placeholder="Enter email">
                      <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword1">Password</label>
                      <input type="password" class="form-control" name="trainer_password" id="exampleInputPassword1" placeholder="Password">
                    </div>
                    
                    <button type="submit" class="btn btn-primary btn-outline-success"style="margin-top: 5%;" id="buttonSlogin">Submit</button>
                  </form>
  
            </div>
            <div class="parallax container loginForm1" style="margin-top: 10%;">
              <h1>Register Trainer</h1>
              <form action="trainer_register.jsp">
                <div class="d-flex">
                  <div class="form-group">
                    <label for="FirstName">First Name</label>
                    <input type="email" class="form-control" name="trainer_first_name" id="FirstName" placeholder="First Name">
                  </div>
                  <div class="form-group"left: 2%;>
                    <label for="LastName">Last Name</label>
                    <input type="email" class="form-control" name="trainer_last_name " id="LastName" placeholder="Last Name">
                  </div>
                </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Email address</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" name="trainer_email" aria-describedby="emailHelp" placeholder="Enter email">
                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" class="form-control" name="trainer_password" id="exampleInputPassword1" placeholder="Password">
                  </div>
                  <div class="form-group">
                    <label for="PhoneNumber">Phone number</label>
                    <input type="text" class="form-control" name="trainer_phone " id="PhoneNumber" placeholder="Phone Number">
                  </div>
                  
                   <div class="d-flex" style="margin-top: 1%;">
                
                <div class="col-md-3 position-relative"  style="margin-right: 5px;">
                <label for="state3" class="form-label">State</label>
                <select id="state3" class="form-select" name="trainer_state" required>
                  
                </select>
                <div class="invalid-tooltip">
                  Please select a valid state.
                </div>
              </div>
                
                
              <div class="col-md-6 position-relative">
                <label for="district3" class="form-label">District</label>
                <select id="district3" class="form-select" name="trainer_district" required>
                
                </select>
                <div class="invalid-tooltip">
                  Please provide a valid District.
                </div>
              </div>
              
            </div>
            
			<input type="hidden" name="institute_id" value="0"><br>
                  <button type="submit" class="btn btn-primary btn-outline-success" style="margin-top: 5%;"id="buttonSlogin">Submit</button>
                </form>
                
          </div>
            </container>
        </div>
        </div>
      </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
 
</container>
<!-- footer -->
<container class="footerhome2" style="left: 0;">

    <footer class="footerhome2">
        <footer class="py-3 my-4">

            <ul class="nav justify-content-center border-bottom pb-3 mb-3">
                <li class="nav-item"><a href="index.html" class="nav-link px-2 text-muted">Home</a></li>
                <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Features</a></li>
                <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Pricing</a></li>
                <li class="nav-item"><a href="faq.html" class="nav-link px-2 text-muted">FAQs</a></li>
                <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">About</a></li>
            </ul>
            <p class="text-center text-muted">© 2021 E-Coach, Inc</p>

        </footer>
    </footer>
</container>


<script>

$(document).ready(function(){
	
	
	$("#state").load("state.html");
	$("#state2").load("state2.html");
	$("#state3").load("state3.html");
	
	$('#state').change(function(){
		var st=$("#state").val();
		
		
		$.post("district.jsp",{
			sta : st,
			
		},
		function(data,status){
			
			 $('#district').html(data);
			 
		});
		
		
		
	});
	
	

	
	$('#state2').change(function(){
		var st=$("#state2").val();
		
		
		$.post("district.jsp",{
			sta : st,
			
		},
		function(data,status){
			
			 $('#district2').html(data);
			 
		});
		
		
		
	});
	
	
	$('#state3').change(function(){
		var st=$("#state3").val();
		
		
		$.post("district.jsp",{
			sta : st,
			
		},
		function(data,status){
			
			 $('#district3').html(data);
			 
		});
		
		
		
	});
	
	
	
	
});

	


  </script>
</body>
</html>