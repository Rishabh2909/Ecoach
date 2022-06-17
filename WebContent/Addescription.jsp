<%@include file="db.jsp" %>
<% 
int institute_id = (int)session.getAttribute("institute_id");
%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="login.css" rel="stylesheet">
    
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
    
             <div class="tab-pane show active" id="list-assign" role="tabpanel" aria-labelledby="list-profile-list">
            
              <container class="d-flex" style="text-align: center; margin: auto;">
                <div class="parallax container  " style="margin-top: 10%;   ">

                  <div class="card" style="width: 100%; ">
                    <h1 class="card-title">Forum</h1>
                    <div class="card-body">
<% 
                  String  qr4="select * from institutes where institute_id="+institute_id+";";
                  Statement st4 = con.createStatement();
                  ResultSet rs4=st4.executeQuery(qr4);
                  rs4.next();
                  %>
                      <form action="Adddescription2.jsp">
                      <div class="d-flex" style="justify-content: center;">
                        <div class="form-group">
                        
                          <h3>Add/Update Description</h3>
                          
                            <textarea name="description" rows="5" cols="100"><%=rs4.getString("description") %></textarea>

                        </div>
</div>
<br>
                      <input class="btn btn-outline-success" style="background-color: rgb(61, 222, 236);margin-right: 5%; " type="Submit" value="submit" >
                    </form>
                      
                      
                      

                    </div>
                  </div>

                </div>

              </container>

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