<!--

Course Completion
Class Records - class schedule dynamically when trainer schedules a class in table(join class btn , attendance)
course content - topic, images, pdf, word file
forum for batch
assignment/test
analysis for student
 -->
 <%@include file="db.jsp" %>
 <%
 
 int batch_id = Integer.parseInt(request.getParameter("batch_id"));
 String semail = (String) session.getAttribute("student_email");
 %>

<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link href="login.css" rel="stylesheet">
  <title>E-Coach</title>
  <style>
.box
{
  

}
/* .box:hover
{
 transform:scale(1.2);
} */
.box .percent
{
  width:150px;
  height:150px;
  position:relative;
}
.box .percent svg
{
  width:150px;
  height:150px;
  position:relative;
}
.box .percent svg circle
{
  width:150px;
  height:150px;
  fill:none;
  stroke-width:10;
  stroke:#000;
  transform:translate(5px,5px);
  stroke-dasharray:440;
  stroke-dashoffset:440;
  stroke-linecap:round;
}
/*.box .percent svg circle:nth-child(1)
{
  stroke-dashoffset:0;
  stroke:#f3f3f3;
}*/
/*.box .percent svg circle:nth-child(2)
{
  stroke-dashoffset:calc(440 - (440 * 11) / 100);
  stroke: rgb(243, 79, 107);
}*/
.box .percent .num
{
  top:0;
  left:0;
  width:100%;
  height:100%;
  display:flex;
  justify-content:center;
  align-items:center;
  position:absolute;
  color:#111;
}
.box .percent .num h2
{
  font-size:48px;
}
.box .percent .num h2 span
{
  font-size:24px;
}
.box .text
{
  padding: 10px 0 0;
  color:#999;
  font-weight:700;
  letter-spacing:1px;
}


</style>
</head>

<body>
  <!-- navbar -->
  <container>
    <div class="containerx">

      <nav class="navbar navbar-expand-lg navbar-light bg-light " id="fix">

        <div class="container-fluid">
          <img src="download.jpg" style="border-radius: 90% ; margin-left: 1%; margin-right: 1%;  " height="3%"
            width="4%" alt="">
          <a class="navbar-brand" href="index.html">E-Coach</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo02"
            aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="student_download_content.jsp?batch_id=<%= batch_id %>">Course Content</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="student_forum.jsp?batch_id=<%= batch_id %>">Forum</a>
              </li>
            </ul>
            <h9 style="margin-right:1% ; color: brown;"><%=semail%></h9>
            <a href="logout"><button class="btn btn-outline-success" style="background-color: rgb(61, 222, 236);margin-right: 1rem; "
              >Logout</button></a>

          </div>
        </div>
      </nav>


    </div>
  </container>

  <container>
    <h1>Login</h1>
    <div class="col">
      <div class="row" style="height: 5rem; text-align: center; ">
        <div class="list-group list-group-horizontal" id="list-tab" role="tablist">
          <a class="list-group-item list-group-item-action active a" id="list-home-list "
            style=" border-bottom-left-radius: 95%;" data-bs-toggle="list" href="#list-show" role="tab"
            aria-controls="list-home">Class Records</a>
          <a class="list-group-item list-group-item-action b" id="list-profile-list " data-bs-toggle="list"
            href="#list-assign" role="tab" aria-controls="list-profile">View Tests</a>
          <a class="list-group-item list-group-item-action b" id="list-profile-list " data-bs-toggle="list"
            href="#list-manage" role="tab" aria-controls="list-profile" 
            style="border-bottom-right-radius: 95%;">View Test Result</a>
         
        </div>
      </div>
      <div class="col-8" style="text-align: center; position: relative; margin: auto; align-self: center; ">
        <div class="tab-content" id="nav-tabContent">
          <div class="tab-pane fade" id="list-edit" role="tabpanel" aria-labelledby="list-home-list">
            <container class="d-flex" style="text-align: center; margin: auto;">
              <div class="parallax container  " style="margin-top: 10%;   ">

                <div class="card" style="width: 60rem;  ">
                  <h1 class="card-title">Edit Personal Details</h1>
                  <div class="card-body" style="justify-content: center;">
                    <form action="">
                      <div class="d-flex" style="justify-content: center;">
                        <div class="form-group">
                          <label for="Password">Password</label>
                          <input type="password" class="form-control" name="student_password " id="Password"
                            placeholder="Password">

                        </div>
                        <div class="form-group" style="margin-left: 1rem; ">
                          <label for="Password">New Password</label>
                          <input type="password" class="form-control" id="Password" placeholder="Password">
                        </div>
                      </div>
                      <div class="d-flex" style="justify-content: center;">
                        <div class="form-group">
                          <label for="Name">Name</label>
                          <input type="text" class="form-control" id="Name" placeholder="Name">
                        </div>
                        <div class="form-group" style="margin-left: 1rem; ">
                          <label for="Area">Area</label>
                          <input type="text" class="form-control" id="Area" placeholder="Area">
                        </div>
                      </div>
                      <div class="d-flex" style="margin-left: 1rem; justify-content: center; ">
                        <div class="form-group ">
                          <label for="District">District</label>
                          <input type="text" class="form-control" id="District" placeholder="District">
                        </div>
                        <div class="form-group" style="margin-left: 1rem;">
                          <label for="State">State</label>
                          <input type="text" class="form-control" id="State" placeholder="State">
                        </div>
                        <div class="form-group" style="margin-left: 1rem; ">
                          <label for="Phone">Phone</label>
                          <input type="text" class="form-control" id="Phone" placeholder="Phone">
                        </div>
                      </div>


                      <input type="Submit" value="Edit" style="margin-top: 2%;">
                    </form>
                  </div>
                </div>

              </div>

            </container>
          </div>
          
          <div class="tab-pane fade" id="list-assign" role="tabpanel" aria-labelledby="list-profile-list">
            <container>
              <container class="d-flex" style="text-align: center; margin: auto;">
                <div class="parallax container  " style="margin-top: 10%;   ">

                  <div class="card" style="width: 60rem; ">
                    <h1 class="card-title">View Test</h1>
                    <div class="card-body">
                    <%



//String qr = "select * from tests where batch_id = any(select distinct (" + batch_id +") from tests) ";

String qr = " select distinct(test_id), test_title from tests where batch_id = any(select distinct ("+batch_id+") from tests);";

Statement s = con.createStatement();

ResultSet rs = s.executeQuery(qr);

%>

                      <table class="table">
                        <thead>
                          <tr>
                            <th scope="col">Topic</th>
                            <th scope="col">Action</th>
                          </tr>
                        </thead>
                        <tbody>
<%

while(rs.next())
{

	%>
	
	<tr>
<td><%=rs.getString("test_title") %></td>

<td> <a href="student_take_test.jsp?test_id=<%=rs.getString("test_id")%>&&batch_id=<%=batch_id%>">Take Test</a> </td>
</tr>
	
	
	<% 

}

%>
                        </tbody>
                      </table>

                    </div>
                  </div>

                </div>

              </container>

          </div>
          
          
          
          
          <div class="tab-pane fade" id="list-manage" role="tabpanel" aria-labelledby="list-profile-list">
            
              <container class="d-flex" style="text-align: center; margin: auto;">
                <div class="parallax container" style="margin-top: 10%;margin-bottom: 2%   ">
                <div  id="ycard" style="height: 39%">
                      
                    </div>
                  <div class="overflow-auto" id="con" style="width: 100%; height: 320px;">
                    
                    <div  id="dcard">
                      
                    </div>
                  </div>
                </div>

              </container>

          </div>
          
          
          
          <div class="tab-pane fade show active" id="list-show" role="tabpanel" aria-labelledby="list-profile-list">
            <container>
              <container class="d-flex" style="text-align: center; margin: auto;">
                <div class="parallax container  " style="margin-top: 10%;   ">

                  <div class="card" style="width: 60rem; ">
                    <h1 class="card-title">Class Records</h1>
                    <div class="card-body">
                      <form action="">
                        <table class="table">
                          <thead>
                            <tr>
                              <th scope="col">Class Date</th>
                              <th scope="col">Class Time</th>
                              <th scope="col">Class Link</th>
                            </tr>
                          </thead>
                          <tbody>
                            <%



String qr1= "select * from scheduled_classes where batch_id="+batch_id+";";


Statement st1 = con.createStatement();
ResultSet rs1 = st1.executeQuery(qr1);
if(rs1.next()){
do{
%>
<tr>
<td><%=rs1.getString("class_date") %></td>
<td><%=rs1.getString("class_time") %></td>
<td><a href="<%=rs1.getString("class_link") %>"> JOIN CLASS </a></td>

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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"></script>

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

  <script type="text/javascript">
    var c = "";
  </script>

<%

int student_id = (int) session.getAttribute("student_id");


String qr2 = "select * from test_results where student_id = "+student_id+" group by result_id having max(result_id);";

Statement st2 = con.createStatement();
ResultSet rs2= st2.executeQuery(qr2);
%>


	
	
	
<%
int total_obtain=0;
int grand_total=0;
while(rs2.next())
{
	
	int test_id = rs2.getInt("test_id");
	
	String qr3 = "select test_title from tests where test_id="+test_id;
	

Statement st3 = con.createStatement();
ResultSet rs3= st3.executeQuery(qr3);
	rs3.next();
	
	
	%>


  <script type="text/javascript">
    c = c +
      `<div class="card testcards">
               <h1 class="card-title">Test Title: <%=rs3.getString("test_title")%></h1>
                <div class="card-body">
                <div class="d-flex">
                <div style="width:50%">
                  <h1>Your got <%=rs2.getInt("marks_obtained")%></h1>
                  <h2>Out of <%=rs2.getInt("total_marks")%></h2>
                  <%
                   grand_total= grand_total+rs2.getInt("total_marks");
                   total_obtain= total_obtain+rs2.getInt("marks_obtained");
                  int total=rs2.getInt("marks_obtained")*100/rs2.getInt("total_marks");
                  %></div>
                  <div  style="width:50%">
                  <center>
                  <div class="box">
                  <div class="percent">
                    <svg>
                      <circle cx="70" cy="70" r="70" style="stroke-dashoffset:0;stroke:#f3f3f3;"></circle>
                      <circle style="stroke-dashoffset:calc(440 - (440 * <%=total%>) / 100); stroke: rgb(243, 79, 107);"cx="70" cy="70" r="70" ></circle>
                    </svg>
                    <div class="num">
                      <h2><%=total%><span>%</span></h2>
                    </div>
                  </div>
                  </center>
                  </div>
                  </div>
                </div>
               </div>
             </div>
             
  
             
             
            

             `;
    document.getElementById("dcard").innerHTML = c;
  </script>

<% } 
int overall= total_obtain*100/grand_total;
%>

<script type="text/javascript">
d =
  `<div class="card testcards">
           <h1 class="card-title">Overall Accuracy</h1>
            <div class="card-body">
            <center>
            <div class="box">
            <div class="percent">
              <svg>
                <circle cx="70" cy="70" r="70" style="stroke-dashoffset:0;stroke:#f3f3f3;"></circle>
                <circle style="stroke-dashoffset:calc(440 - (440 * <%=overall%>) / 100); stroke: rgb(243, 79, 107);"cx="70" cy="70" r="70" ></circle>
              </svg>
              <div class="num">
                <h2><%=overall%><span>%</span></h2>
              </div>
            </div>
            </center>
            </div>
           </div>
           `;
 document.getElementById("ycard").innerHTML = d;

</script>
</body>

</html>
  