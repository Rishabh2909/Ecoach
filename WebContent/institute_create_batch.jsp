<%@include file="db.jsp" %>
<%


int course_id= Integer.parseInt(request.getParameter("course_id"));
int institute_id= (int) session.getAttribute("institute_id");



%>
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
                       
                    </div>
                </div>
            </nav>


        </div>
    </container>

<container >
    <h1>Login</h1>
        <div class="col">
            <div class="row" style="height: 5rem; text-align: center; ">
                <div class="list-group list-group-horizontal" id="list-tab" role="tablist">
                    <h3 class="list-group-item  active a" 
                        style=" border-bottom-left-radius: 95%; border-bottom-right-radius: 95%; width: 50%; left: 27%;" 
                        >Create Batch</h3>
                </div>
            </div>
            
            
    <div class="container" style="margin-top: 10rem; margin-left: 22rem ;">
        <div class="card" style="width: 60%;">
            <div class="card-body"  style="justify-content: center;">
             <form action="institute_create_batch_2.jsp">
              <label for="">Start Date </label>
              <input type="date" name="batch_start_date">
              <label for=""> batch timing -> Start</label>
              <input type="time" name="batch_start_timing">
              <label for=""> End</label>
              <input type="time" name="batch_end_timing"> <br>
              <br><label for="show_trainer">Trainer Id</label>
    
              <select name="trainer_id" id="show_trainer"> </select>

              <input type="hidden" value="<%=course_id %>" name="course_id">

				<input type="submit" placeholder="create batch">
				
				</form>
     
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
<script>
		


$(document).ready(function(){

	$("#show_trainer").load("institute_trainer_to_batch.jsp");



});


</script>
</body>
</html>