<%@include file="db.jsp" %>

<%
String email=(String)session.getAttribute("student_email");
int student_id = (int) session.getAttribute("student_id");

String student_first_name = (String) session.getAttribute("student_first_name");


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
                              <a class="nav-link active" aria-current="page" href="search_institute.jsp">Search Institute/Courses</a>
                            </li>
                            <li class="nav-item">
                              <a class="nav-link active" aria-current="page" href="edit_student_details.jsp">Edit</a>
                            </li>
                           
                          </ul>
                        <h9 style="margin-right:1% ; color: brown;"><%=email %></h9>
                        <form class="d-flex">
                           <a href="logout"> <button class="btn btn-outline-success"
                                style="background-color: rgb(61, 222, 236);margin-right: 1rem; "
                                >Logout</button></a>
                        </form>
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
                        >Hello, <%=student_first_name%>!</h3>
                </div>
            </div>
            <div class="col-8" style="text-align: center; position: relative; margin: auto; align-self: center; ">
                <div class="tab-content" id="nav-tabContent">
                    <div class="tab-pane fade show active">
                        <container class="d-flex" style="text-align: center; margin: auto;">
                            <div class="parallax container  " style="margin-top: 10%;   ">

                                <div class="card" style="width: 60rem; overflow:auto; height:35rem ;position: absolute">
                                    
                                    <div class="card-body">
                                        
                                           
                                          <table class="table">
                                            <thead>
                                              <tr>
                                                
                                                <th scope="col">Course Name</th>
                                                <th scope="col">Batch Timing</th>
                                                <th scope="col">BAtch Start Date</th>
                                                <th scope="col">Operation</th>
                                              </tr>
                                            </thead>
                                            <tbody>
                                              <% 

//String qr = "select batch_id, course_id, institute_id, trainer_id, batch_timing, batch_start_date  from batches where batch_id = any(select batch_id from studentbatches where student_id = " + student_id + " );";

//String qr = "select batch_id, course_id, institute_id, trainer_id, batch_timing, batch_start_date, course_name  from batches inner join courses where batches.batch_id = courses.batch_id ";

String qr = "select batch_id, batches.course_id, batches.institute_id, trainer_id, batch_timing, batch_start_date, course_name  from batches inner join courses on batches.course_id = courses.course_id where batches.batch_id = any(select batch_id from studentbatches where student_id = " + student_id + " );";
String qr3= "select max(num_class) as mx,batch_id from scheduled_classes group by batch_id;";
Statement s3 = con.createStatement();

ResultSet rs3 = s3.executeQuery(qr3);
Statement s = con.createStatement();

ResultSet rs = s.executeQuery(qr);
int max_class=0;

while(rs.next())
{
	
	%>
	
	<tr>
	<td><%=rs.getString("course_name") %></td>
	<td><%=rs.getString("batch_timing") %></td>
	<td><%=rs.getString("batch_start_date") %></td>
	<td>
	
	</td>
	<td><a href="student_home_course.jsp?batch_id=<%=rs.getString("batch_id") %>"><button class="btn btn-outline-success"  style="background-color: rgb(61, 222, 236);margin-right: 1rem; " 
                                >View Course</button> </a></td>
	<td>
	<% 
	while(rs3.next()){
	if(rs.getInt("batch_id")==(rs3.getInt("batch_id"))){
		String qr4= "select num_class from courses where course_id = any(select course_id from batches where batch_id="+rs3.getInt("batch_id")+");";
		Statement s4 = con.createStatement();

		ResultSet rs4 = s4.executeQuery(qr4);
		
		if(rs4.next()){
	max_class=rs3.getInt("mx");}
	int percentage= max_class*100/rs4.getInt("num_class");
	%>
	
	<div class="box">
  <div class="percent">
    <svg>
      <circle cx="70" cy="70" r="70" style="stroke-dashoffset:0;stroke:#f3f3f3;"></circle>
      <circle style="stroke-dashoffset:calc(440 - (440 * <%=percentage%>) / 100); stroke: rgb(243, 79, 107);"cx="70" cy="70" r="70" ></circle>
    </svg>
    <div class="num">
      <h2><%=percentage%><span>%</span></h2>
    </div>
  </div>
  <h2 class="text">Progress</h2>
</div>
	<%
	}
	else{
	max_class=0;
	%>
	
	<%
	}
	%>
	<%} %>
	</td>
	</tr>
	
	<%
	rs3.beforeFirst();
}



%>
                                              
                                            </tbody>
                                          </table>
                                    
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