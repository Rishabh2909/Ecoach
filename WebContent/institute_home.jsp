<%@include file="db.jsp" %>

<!doctype html>
<%
String insemail=(String)session.getAttribute("institute_email");
int insid = (int) session.getAttribute("institute_id");
%>

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
                                <a class="nav-link" href="Addescription.jsp">Add/Edit description to your profile</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link disabled"></a>
                            </li>
                        </ul>
                        <h9 style="margin-right:1% ; color: brown;"><%= insemail%></h9> 
                        <div class="d-flex">
                            <a href="logout"><button class="btn btn-outline-success"  style="background-color: rgb(61, 222, 236);margin-right: 1rem; " 
                                >Logout</button></a>
                                 </div>
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
          <a class="list-group-item list-group-item-action active a" id="list-home-list " style=" border-bottom-left-radius: 95%;" data-bs-toggle="list" href="#list-edit" role="tab" aria-controls="list-home">Edit Institute Details</a>
          <a class="list-group-item list-group-item-action b" id="list-profile-list " data-bs-toggle="list" href="#list-add" role="tab" aria-controls="list-profile">Add Course</a>
          <a class="list-group-item list-group-item-action b" id="list-profile-list " data-bs-toggle="list" href="#list-assign" role="tab" aria-controls="list-profile">Assign Trainer to Institute</a>
          <a class="list-group-item list-group-item-action b" id="list-profile-list " data-bs-toggle="list" href="#list-manage" role="tab" aria-controls="list-profile">Manage Trainer</a>
          <a class="list-group-item list-group-item-action c" id="list-messages-list " style="border-bottom-right-radius: 95%;" data-bs-toggle="list" href="#list-show" role="tab" aria-controls="list-messages">Show Courses</a>
        </div>
      </div>
      <div class="col-8" style="text-align: center; position: relative; margin: auto; align-self: center; " >
        <div class="tab-content" id="nav-tabContent">
          <div class="tab-pane fade show active" id="list-edit" role="tabpanel" aria-labelledby="list-home-list">
            <container class="d-flex" style="text-align: center; margin: auto;">
            <div class="parallax container  " style="margin-top: 10%;   ">
              
              <div class="card" style="width: 60rem;  ">
                <h1 class="card-title">Edit Institute Details</h1>
                <div class="card-body" style="justify-content: center;">
                  <% 
                  String  qr4="select * from institutes where institute_id="+insid+";";
                  Statement st4 = con.createStatement();
                  ResultSet rs4=st4.executeQuery(qr4);
                  rs4.next();
                  %>
                    <form action="institute_edit_details.jsp">
                      <div class="d-flex" style="justify-content: center;">
                        <div class="form-group" style="margin-left: 1rem; ">
                        <label for="Password">New Password</label>
                        <input type="password" class="form-control" id="Password" name="institute_password" value=<%=rs4.getString("institute_password")%> placeholder="Password">
                      </div>
                      </div>
                      <div class="d-flex" style="justify-content: center;">
                      <div class="form-group">
                        <label for="Name">Name</label>
                        <input type="text" class="form-control" value=<%=rs4.getString("institute_name")%> name="institute_name" id="Name" placeholder="Name">
                      </div>
                      <div class="form-group" style="margin-left: 1rem; ">
                        <label for="Area">Area</label>
                        <input type="text" class="form-control" value=<%=rs4.getString("institute_area")%> name="institute_area" id="Area" placeholder="Area">
                      </div>
                      </div>
                      <div class="d-flex" style="margin-left: 1rem; justify-content: center; ">
                      <div class="form-group " >
                        <label for="District">District</label>
                        <input type="text" class="form-control" value=<%=rs4.getString("institute_district")%> name="institute_district" id="District" placeholder="District">
                      </div>
                      <div class="form-group" style="margin-left: 1rem;">
                        <label for="State">State</label>
                        <input type="text" class="form-control" value=<%=rs4.getString("institute_state")%> name="institute_state" id="State" placeholder="State">
                      </div>
                      <div class="form-group"style="margin-left: 1rem; ">
                        <label for="Phone">Phone</label>
                        <input type="text" class="form-control" value=<%=rs4.getString("institute_phone")%> name="institute_phone" id="Phone" placeholder="Phone">
                      </div>
                    </div>
                      
                  
                  <input type="Submit" class="btn btn-outline-success" style="background-color: rgb(61, 222, 236);margin-right: 1rem; width: 15%;" value="Edit" style="margin-top: 2%;"></input>
                </form>
                </div>
              </div>
            
          </div>
         
          </container>
          </div>
          <div class="tab-pane fade" id="list-add" role="tabpanel" aria-labelledby="list-profile-list"><container>
            <container class="d-flex" style="text-align: center; margin: auto;">
              <div class="parallax container  " style="margin-top: 10%;   ">
                
                <div class="card" style="width: 60rem; ">
                  <h1 class="card-title">Add Courses</h1>
                  <div class="card-body">
                      <form action="institute_add_course.jsp">
                      <div class="form-group">
                          <label for="CourseName">Course Name</label>
                          <input type="text" name="course_name" class="form-control" id="CourseName" placeholder="Course Name">
                        </div>
                        <div class="form-group">
                          <label for="Duration">Duration</label>
                          <input type="text" name="duration" class="form-control" id="Duration" placeholder="Duration in months">
                        </div>
                        <div class="form-group">
                          <label for="numclass">Number of Classes</label>
                          <input type="number" name="num_class" min="1" class="form-control" id="numclass" placeholder="Number of classes">
                        </div>
                   
                    
                    <input class="btn btn-outline-success" style="background-color: rgb(61, 222, 236);margin-right: 1rem; " type="submit"  value="Add"  style="margin-top: 2%;">

                    
                  </form>
                  </div>
                </div>
              
            </div>
           
            </container>

        </div>
        <div class="tab-pane fade" id="list-assign" role="tabpanel" aria-labelledby="list-profile-list"><container>
          <container class="d-flex" style="text-align: center; margin: auto;">
            <div class="parallax container  " style="margin-top: 10%;   ">
              
              <div class="card" style="width: 60rem; ">
                <h1 class="card-title">Assign Trainer</h1>
                <div class="card-body">
                   
                    <div class="form-group">
                        <label for="TrainerName">Trainer Id</label>
                        <input type="text" class="form-control" name="trainer_id" id="search_trainer"  placeholder="Course Name">
                      </div>
                     
                  <button id="get_trainer" class="btn btn-outline-success" style="background-color: rgb(61, 222, 236);margin-right: 1rem; ">Search</button>
                  
                 <!-- <input type="button"  value="Search" style="margin-top: 2%;">  --> 
                 
                 <table class="table">
                      <thead>
                        <tr>
                          
                          <th scope="col">Trainer Id</th>
                          <th scope="col">Trainer First Name</th>
                          <th scope="col">Trainer Last Name</th>
                          <th scope="col">Trainer Email</th>
                          <th scope="col">Trainer Phone</th>
                        </tr>
                      </thead>
                      <tbody id="trainer_details">
                        
                      </tbody>
                    </table>
                 
                 
                 
                </div>
              </div>
            
          </div>
         
          </container>

      </div>
      
      
      
      
      
      
      <div class="tab-pane fade" id="list-manage" role="tabpanel" aria-labelledby="list-profile-list"><container>
        <container class="d-flex" style="text-align: center; margin: auto;">
          <div class="parallax container  " style="margin-top: 10%;   ">
            
            <div class="card" style="width: 60rem; ">
              <h1 class="card-title">Manage Trainers</h1>
              <div class="card-body">
                  <form action="">
                    <table class="table">
                      <thead>
                        <tr>
                          
                          <th scope="col">Trainer Id</th>
                          <th scope="col">Trainer First Name</th>
                          <th scope="col">Trainer Last Name</th>
                          <th scope="col">Trainer Email</th>
                          <th scope="col">Trainer Phone</th>
                          <th scope="col">Trainer District</th>
                          <th scope="col">Trainer State</th>
                          <th scope="col">Manage</th>
                        </tr>
                      </thead>
                      <tbody>
                        <%
int institute_id= (int) session.getAttribute("institute_id");
String qr= "select * from trainers where institute_id="+institute_id+";";
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(qr);
if(rs.next()){
do{
%>
<tr>
<td><%=rs.getString("trainer_id") %></td>
<td><%=rs.getString("trainer_first_name") %></td>
<td><%=rs.getString("trainer_last_name") %></td>
<td><%=rs.getString("trainer_email") %></td>
<td><%=rs.getString("trainer_phone") %></td>
<td><%=rs.getString("trainer_district") %></td>
<td><%=rs.getString("trainer_state") %></td>
<td><a href="institute_delete_trainer.jsp?trainer_id=<%=rs.getString("trainer_id") %>">Delete Trainer</a></td>


</tr>
<%
}while(rs.next());
}


else
{
%>
<p> no data found in table </p>
<%
}


%>
                        
                      </tbody>
                    </table>
              </form>
              </div>
            </div>
          
        </div>
       
        </container>

    </div>
    
    
    
    
    <div class="tab-pane fade" id="list-show" role="tabpanel" aria-labelledby="list-profile-list"><container>
      <container class="d-flex" style="text-align: center; margin: auto;">
        <div class="parallax container  " style="margin-top: 10%;   ">
          <div class="card" style="width: 60rem; ">
            <h1 class="card-title">Manage Courses</h1>
              </div>
          <div class="card" style="width: 60rem; overflow:auto; height:27rem; position:absolute">
            <div class="card-body">
                <form action="">
                
                  <table class="table" >
                    <thead>
                      <tr>
                        
                        <th scope="col">Course Id</th>
                        <th scope="col">Course Name</th>
                        <th scope="col">Course Duration</th>
                        <th scope="col">Operation</th>
                      </tr>
                    </thead>
                    <tbody >
                    
                      <%
// int institute_id = (int) session.getAttribute("institute_id");


String qr1= "select * from courses where institute_id="+institute_id+";";


Statement st1 = con.createStatement();
ResultSet rs1 = st1.executeQuery(qr1);
if(rs1.next()){
do{
%>
<tr>
<td><%=rs1.getString("course_id") %></td>
<td><%=rs1.getString("course_name") %></td>
<td><%=rs1.getString("duration") %></td>


<td><a class="btn btn-primary btn btn-outline-success" id="buttonSlogin" href="institute_create_batch.jsp?course_id=<%=rs1.getString("course_id") %>">Create Batch</a></td>

<td><a class="btn btn-primary btn btn-outline-success" id="buttonSlogin" href="institute_show_batches.jsp?course_id=<%=rs1.getString("course_id") %>">Show Batches</a></td>


<td><a class="btn btn-primary btn btn-outline-success" id="buttonSlogin" href="institute_upload_session.jsp?course_id=<%=rs1.getString("course_id") %>">session upload</a></td>
</tr>
<%
}while(rs1.next());
}


else
{
%>
<p> no data found in table </p>
<%
}


%>
                    
                    </tbody>
                  </table>
                 
            </form>
            </div>
          </div>
        
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




$("#get_trainer").click(function(){
	
var pt= document.getElementById("search_trainer").value;



$.post('institute_assign_trainer_2.jsp',{

	trainer_id: pt
	
},

function(data,status){

$('#trainer_details').html(data);

});


});

});


</script>
</body>
</html>