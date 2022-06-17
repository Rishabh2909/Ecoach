<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="db.jsp" %>
<%
int batch_id = Integer.parseInt(request.getParameter("batch_id"));
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
                        >Hello, Trainer!</h3>
                </div>
            </div>
            <div class="col-8" style="text-align: center; position: relative; margin: auto; align-self: center; ">
                <div class="tab-content" id="nav-tabContent">
                    <div class="tab-pane fade show active">
                        <container class="d-flex" style="text-align: center; margin: auto;">
                            <div class="parallax container  " style="margin-top: 10%;   ">

                                <div class="card" style="width: 60rem; ">
                                    
                                    <div class="card-body">
                                    
                                    <h1>Enter Test questions</h1>

Enter no. of MCQ questions: <input type="number" id="mcq" onkeyup="mcq1()"  >
Enter no. of descriptive questions: <input type="number" id="des" onkeyup="des1()">
                                       
                                       
                                       
                                       <div class="form-group">
                                        <form action="trainer_schedule_test_2.jsp">
                                           
                                          <br>

<div id="mcq_ques"></div>

<div id="des_ques"></div>

<input type="hidden" value=<%=batch_id %> name="batch_id">

<input type="submit"></input>
                                    </form>
                                    
                                    </div>
                                    
                                    </div>
                                  </div>

                            </div>

                        </container>
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


<script type="text/javascript">

function mcq1() 

	{
		
		const m = document.getElementById("mcq").value;
		let str = " ";
		
			for( let i=1; i<=m; i++)
			{
				str = str + "Enter question: <input placeholder='question' name='question'>  </input> <br>  1<input name='opt1'> </input> <br> 2<input name='opt2'> </input> <br> 3<input name='opt3'> </input> <br> 4<input name='opt4'> </input> <br> <br>";	
			}
		
			document.getElementById("mcq_ques").innerHTML = str;
		
		
		
		
	}
	
function des1() 

{
	
	const m = document.getElementById("des").value;
	let str = " ";
	
		for( let i=1; i<=m; i++)
		{
			str = str + "Descriptive Question: <input name='question'>  </input> <br>";	
		}
	
		document.getElementById("des_ques").innerHTML = str;
	
	
	
	
}
	

</script>

</body>
</html>