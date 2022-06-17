<%@include file="db.jsp" %>
<%

int institute_id = Integer.parseInt( request.getParameter("institute_id"));

String qr = "select * from institutes where institute_id = "+institute_id+" ";

Statement s = con.createStatement();

Statement s2 = con.createStatement();

ResultSet rs = s.executeQuery(qr);

String qr2 = "select * from courses where institute_id = "+institute_id+" ";


ResultSet rs2 = s2.executeQuery(qr2);
rs.next();

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
    <br>
    <br>
    <br>
    <br>
    <div class="container d-flex" style="height: 40rem;">
      <div class="container" style="width: 40%;">
        <!-- Institute Id	|| Institute Name	||Institute Email	||Institute Phone||	Institute District	Institute State 
       1	A	a@a.in	1	a	a -->
        <div class="card" style="width: 100%; height: 18rem; opacity: 70%;background-color: black;color: white;">
          <div class="card-body">
            <h1 class="card-title"><%= rs.getString("institute_name") %>
            </h1>
            <h3 class="card-subtitle mb-2 text-muted"><%= rs.getString("institute_email") %>
            </h3>
            <h4><%= rs.getString("institute_area") %></h4>
            <div class="d-flex">
              <h6 style="margin: 5px;"><%= rs.getString("institute_state") %></h6>
              <h6 style="margin: 5px;"><%= rs.getString("institute_district") %></h6>
            </div>
            <h6><%= rs.getString("institute_phone") %></h6>
           


          </div>
        </div>
        <div class="card" style="width: 100%; height: 27rem; margin-top: 5px; opacity: 70%; background-color: black;color: white;">
          <div class="card-body" style="overflow: auto;height: 37rem;">
            <h1 class="card-title">About Us</h1>
            <p><%=rs.getString("description") %></p>
          </div>
        </div>
      </div>
      <div class="container" style="width: 60%; opacity: 70%;">
        
        <div class="card" style="width: 100%; background-color: black;color: white;"">
          <div class="card-body " >
            <h1 class="card-title" style="text-align: center;">Courses Offered</h1>
          </div>
        </div>
        <div class="card" style="width: 100%; background-color: black;color: white;"">

          <div class="card-body " style="overflow: auto;height: 39rem; color: white;">
            <table class="table table-responsive" style="color: white;">
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

                while(rs2.next())
                {
                
                  %>
                <tr>
                  <td style="word-wrap: break-word;min-width: 160px;max-width: 160px;"><%=rs2.getString("course_id")%></td>
	                <td style="word-wrap: break-word;min-width: 160px;max-width: 160px;"><%=rs2.getString("course_name")%></td>
	                <td style="word-wrap: break-word;min-width: 160px;max-width: 160px;"><%=rs2.getString("duration")%></td>
	                <td> 
                    <a href="show_batches.jsp?course_id=<%=rs2.getString("course_id") %>" ><button class="btn btn-outline-success" style="background-color: rgb(255, 255, 255);margin-right: 1rem; color: rgb(15, 15, 15);">Show Batches </button></a> </td>
                </tr>

                <% 

              }
              
              
              
              %>
                      

              </tbody>
            </table>

          </div>
        </div>
      </div>
    </div>
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