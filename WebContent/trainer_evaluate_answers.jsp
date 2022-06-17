<%@include file="db.jsp" %>
<%

int batch_id = Integer.parseInt(request.getParameter("batch_id"));
int trainer_id = (int) session.getAttribute("trainer_id");
int test_id = Integer.parseInt(request.getParameter("test_id"));

String temail = (String) session.getAttribute("trainer_email");

String qr = "select student_answers.student_id as id, student_first_name as name from student_answers INNER JOIN students on  students.student_id=student_answers.student_id where test_id="+test_id+" and batch_id = "+batch_id+"  group by student_answers.student_id;";

Statement s = con.createStatement();

ResultSet rs = s.executeQuery(qr);
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
                    <img src="download.jpg" style="border-radius: 90% ; margin-left: 1%; margin-right: 1%;  "
                        height="3%" width="4%" alt="">
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
                        <h9 style="margin-right:1% ; color: brown;"><%=temail%> </h9>
                        
                            <a href="logout"><button class="btn btn-outline-success"
                                style="background-color: rgb(61, 222, 236);margin-right: 1rem;"
                                >Logout</button> </a>
                       
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
                    <h3 class="list-group-item  active a" 
                        style=" border-bottom-left-radius: 95%; border-bottom-right-radius: 95%; width: 50%; left: 27%;" 
                        >Evaluate Student</h3>
                </div>
            </div>
            <div class="col-8" style="text-align: center; position: relative; margin: auto; align-self: center; ">
                <div class="tab-content" id="nav-tabContent">
                    <div class="tab-pane fade show active">
                        <container class="d-flex" style="text-align: center; margin: auto;">
                            <div class="parallax container  " style="margin-top: 10%;   ">

                                <div class="card" style="width: 60rem; ">
                                    
                                    <div class="card-body">
                                        <form action="">
                                          <table class="table">
                                            <thead>
                                              <tr>
                                                
                                                <th scope="col">Student Id</th>
                                                <th scope="col">Name</th>
                                                <th scope="col">Operation</th>
                                              </tr>
                                            </thead>
                                            <tbody>
                                              <tr>
                                                <%

while(rs.next())
{

	%>
	
	<tr>
<td><%=rs.getString("id") %></td>
<td><%=rs.getString("name")%></td>
<td> <a class="btn btn-primary btn btn-outline-success" id="buttonSlogin" style="left: 0;" href="trainer_evaluate_answers_2.jsp?batch_id=<%= batch_id%>&&test_id=<%= test_id%>&&student_id=<%=rs.getString("id")%>">Evaluate this student</a> </td>
</tr>
	
	
	<% 

}

%>
                                                

                                              </tr>
                                              
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

    </container>
    </div>
    </div>
    </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

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