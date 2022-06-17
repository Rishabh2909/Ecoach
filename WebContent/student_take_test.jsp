<%@page import="java.util.Random"%>
<%@include file="db.jsp" %>
<%
int batch_id = Integer.parseInt(request.getParameter("batch_id"));
int test_id = Integer.parseInt(request.getParameter("test_id"));
int student_id = (int) session.getAttribute("student_id");
String semail = (String) session.getAttribute("student_email");
String[] arr = new String[5];

String qr = "select * from tests where batch_id = " + batch_id + " and test_id="+test_id+";";

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
  
  <style>
  body{
        background-image: url("https://images.pexels.com/photos/3807738/pexels-photo-3807738.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260");
        background-repeat: no-repeat;
        /* background-image: stretch;
         */
        
         background-size: cover;
    }</style>
  
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
            style=" border-bottom-left-radius: 95%; border-bottom-right-radius: 95%;" data-bs-toggle="list" href="#list-show" role="tab"
            aria-controls="list-home" disabled>Test</a>
        </div>
      </div>
      <div class="col-8" style="text-align: center; position: relative; margin: auto; align-self: center; ">
        <div class="tab-content" id="nav-tabContent">
          <div class="tab-pane fade show active" id="list-show" role="tabpanel" aria-labelledby="list-profile-list">
            <container>
              <container class="d-flex" style="text-align: center; margin: auto;">
                <div class="parallax container " style="margin-top: 10%;   ">
                  
                  <div class="card" style="width: 100%;">
                    <div class="card-body" style="text-align: left">
                      
                      
                      <form action="student_take_test_2.jsp">
                        <input type="hidden" value="<%= batch_id %>" name="batch_id">
                        <input type="hidden" value="<%= test_id %>" name="test_id">
                        
                        
                        
                        <%
                        while(rs.next())
                        {
                          
                          String q = rs.getString("question");
                          
                          arr = q.split("@@@");
                          
                          Random rand = new Random();
                          
                          
                          if(arr.length>1)
                          {
                            
                            String arr2[] = {arr[1], arr[2], arr[3], arr[4]};
                          
                            
                            
                            
                            for (int k = 0; k < arr2.length; k++) {
                              int randomIndexToSwap = rand.nextInt(arr2.length);
                              String temp = arr2[randomIndexToSwap];
                              arr2[randomIndexToSwap] = arr2[k];
                              arr2[k] = temp;
                            }
                            
                            
                            
                            %>
                            
                            <h3><%=arr[0] %></h3>
                            <br>
                            <input type="radio" name=<%=rs.getInt("question_id") %> value="<%= arr2[0] %>">
                            <%= arr2[0] %>
                            <br>
                            <input type="radio"  name=<%=rs.getInt("question_id") %> value="<%= arr2[1] %>">
                            <%= arr2[1] %>
                            <br>
                            <input type="radio"  name=<%=rs.getInt("question_id") %> value="<%= arr2[2] %>">
                            <%= arr2[2] %>
                            <br>
                            <input type="radio" name=<%=rs.getInt("question_id") %> value="<%= arr2[3] %>">
                            <%= arr2[3] %>
                            <br>
                        
                            
                            
                            <%
                            
                            
                          }
                          
                          else
                          {
                            %>
                            
                            <h3><%=arr[0] %></h3>
                            <textarea rows="2" cols="30" name="<%=rs.getInt("question_id") %>"></textarea>
                              
                            <%
                            
                            
                          }
                          
                        
                          %>
                            
                          <%
                          
                        
                        }
                        
                        
                        %>
                        <br>
                        <input type="submit" class="btn btn-outline-success" style="background-color: rgb(61, 222, 236);margin-right: 5%; position:relative; left:30rem;">
                        
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
</body>

</html>