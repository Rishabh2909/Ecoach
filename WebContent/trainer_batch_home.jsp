<%@include file="db.jsp" %>
<%

int batch_id = Integer.parseInt(request.getParameter("batch_id"));
int trainer_id = (int) session.getAttribute("trainer_id");
String trainer_email = (String) session.getAttribute("trainer_email");
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
                <a class="nav-link active" aria-current="page" href="trainer_schedule_test.jsp?batch_id=<%= batch_id %>">Schedule a test</a>
              </li>
            </ul>
            <h9 style="margin-right:1% ; color: brown;"><%=trainer_email%></h9>
            <a href="logout"><button class="btn btn-outline-success" style="background-color: rgb(61, 222, 236);margin-right: 1rem; "
              >Logout</button></a>

          </div>
        </div>
      </nav>


    </div>
  </container>

  <container>
    
    <div class="col">
    <h1>Login</h1>
      <div class="row" style="height: 5rem; text-align: center; ">
        <div class="list-group list-group-horizontal" id="list-tab" role="tablist">
          <a class="list-group-item list-group-item-action active a" id="list-home-list "
            style=" border-bottom-left-radius: 95%;" data-bs-toggle="list" href="#list-show" role="tab"
            aria-controls="list-home">Schedule Class</a>
          <a class="list-group-item list-group-item-action b" id="list-profile-list " data-bs-toggle="list"
            href="#list-assign" role="tab" aria-controls="list-profile">Evaluate Tests</a>
          <a class="list-group-item list-group-item-action b" id="list-profile-list " data-bs-toggle="list"
            href="#list-manage" style="border-bottom-right-radius: 95%;" role="tab" aria-controls="list-profile">Forum</a>
          
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
<%
String qr = "select distinct(test_id), test_title from tests where batch_id="+batch_id+";";
Statement s = con.createStatement();
ResultSet rs = s.executeQuery(qr);
%>
  
                  <div class="card" style="width: 60rem; ">
                    <h1 class="card-title">Evaluate Test</h1>
                    <div class="card-body">

                      <table class="table">
                        <thead>
                          <tr>
                            <th scope="col">Test Title</th>
                            <th scope="col">Test Id</th>
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
<td><%=rs.getString("test_id")%></td>
<td> <a href="trainer_evaluate_answers.jsp?batch_id=<%= batch_id %>&&test_id=<%=rs.getString("test_id") %>">View Answers</a> </td>
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
                <div class="parallax container" style="margin-top: 10%;   ">
                  <div class="overflow-auto" id="con" style="width: 100%; height: 500px;">
                    <div  id="dcard">
                      <%


String qr1 = "select * from forum where batch_id = "+batch_id+" and trainer_id = 0" ;

Statement s1 = con.createStatement();

ResultSet rs1 = s1.executeQuery(qr1);


%>


<table class="table">
<thead>
<tr>
<td>Message</td>
<td>Answer the Query</td>
<td>Action</td>
</tr>
</thead>
<tbody>
<%
while(rs1.next())
{
	int message_id = rs1.getInt("message_id");
	String message = rs1.getString("message");
	int student_id = rs1.getInt("student_id");	
	%>
<tr>
<td><%=rs1.getString("message") %></td>

<form action="trainer_forum_2.jsp">
<td> 
<input type="text" name="answer" >
<input type="hidden" name="message_id" value=<%= message_id %> >
<input type="hidden" name="batch_id" value=<%= batch_id %> >
</td>
<td>
<input type="submit" class="btn btn-outline-success" style="background-color: rgb(61, 222, 236);margin-right: 1rem; ">
</td>
</form>
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
          <div class="tab-pane fade show active" id="list-show" role="tabpanel" aria-labelledby="list-profile-list">
            <container>
              <container class="d-flex" style="text-align: center; margin: auto;">
                <div class="parallax container  " style="margin-top: 10%;   ">

                  <div class="card" style="width: 60rem; ">
                    <h1 class="card-title">Schedule Class</h1>
                    <div class="card-body">
                      <form action="trainer_schedule_class_2.jsp">
                        <div class="form-group">
                        <label for="Date">Date:</label>
                        <input type="date" name="class_date"  placeholder="date"></div>
                        <br>
                        <div class="form-group">
                        <label for="time">Class Time</label>
                        <input type="time" id="time" name="class_time" placeholder="time"></div>
                        <br>
                        <div class="form-group"></div>
                        <label for="link">Link</label>
                        <input type="text" id="link" name="class_link" placeholder="link"></div>
                        <br>
                        <input type="hidden" value=<%= batch_id %>  name="batch_id" >
                        <br>
                        <input class="btn btn-outline-success" style="background-color: rgb(61, 222, 236);margin-right: 1rem; width: 100%;" type="submit" value="Schedule">
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
</body>

</html>