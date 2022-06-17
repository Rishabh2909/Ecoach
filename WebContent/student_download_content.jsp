<%@include file="db.jsp" %>

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
                <a class="nav-link active" aria-current="page" href="#">Course Content</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Forum</a>
              </li>
            </ul>
            <h9 style="margin-right:1% ; color: brown;">piyush.nigaam@gmail.com</h9>
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
            style=" border-bottom-left-radius: 95%; border-bottom-right-radius: 95%;" data-bs-toggle="list" href="#list-show" role="tab"
            aria-controls="list-home" disabled>Test</a>
        </div>
      </div>
      <div class="col-8" style="text-align: center; position: relative; margin: auto; align-self: center; ">
        <div class="tab-content" id="nav-tabContent">
          <div class="tab-pane fade show active" id="list-show" role="tabpanel" aria-labelledby="list-profile-list">
            <container>
              <container class="d-flex" style="text-align: center; margin: auto;">
                <div class="parallax container  " style="margin-top: 10%;   ">
                  
                  <div class="card" style="width: 100%;">
                    <div class="card-body">
                      <h5 class="card-title">Course Content</h5>
                    </div>
                  </div>
                  <div class="card" style="width: 100%;">
                    <div class="card-body">
                      <table class="table" >
                        <thead >
                          <tr>
                        
                        <th scope="col">Content</th>
                      </tr>
                      </thead>
                        <%
                        
                        int batch_id = Integer.parseInt(request.getParameter("batch_id"));
                        
                        String qr = "select course_id from batches where batch_id="+batch_id;
                        
                        Statement st= con.createStatement();
                        ResultSet rs = st.executeQuery(qr);
                        int course_id=0;
                        
                        if(rs.next())
                        {
                          course_id = rs.getInt("course_id");
                        }
                        
                        String qr2 = "select * from files where course_id = "+course_id;
                        Statement st2= con.createStatement();
                        ResultSet rs2 = st2.executeQuery(qr2);
                        %> 
                        <tbody>
                        <%
                        while(rs2.next())
                        {
                          %>
                          <tr>
                          <!-- <td><%=rs2.getString("topic") %>  </td> -->
                          
                          <td>
                          <a href=<%=rs2.getString("location") %> download><button  class="btn btn-outline-success" style="background-color: rgb(61, 222, 236);margin-right: 1rem; "><%=rs2.getString("location") %></button></a>
                          </td>
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
        </div>
      </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"></script>

  </container>
</body>

</html>