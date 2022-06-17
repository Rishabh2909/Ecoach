<%@include file="db.jsp" %>
    <%
    
    String temail = (String) session.getAttribute("trainer_email");
    
    
    int batch_id=Integer.parseInt(request.getParameter("batch_id")); int trainer_id=(int)
        session.getAttribute("trainer_id"); int test_id=Integer.parseInt(request.getParameter("test_id")); int
        student_id=Integer.parseInt(request.getParameter("student_id")); String
        qr="select student_id, student_answers.question_id as qid, question,  answer, submission_id from student_answers inner join tests on (student_answers.test_id = tests.test_id and student_answers.question_id=tests.question_id)  where student_answers.test_id="
        +test_id+" and student_answers.batch_id="+batch_id+" and student_id="+student_id+" ; ";
Statement s = con.createStatement();
ResultSet rs = s.executeQuery(qr);
%>
<!doctype html>
<html lang=" en">

        <head>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
                crossorigin="anonymous">
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
                                data-bs-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02"
                                aria-expanded="false" aria-label="Toggle navigation">
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
                                <h9 style="margin-right:1% ; color: brown;"><%=temail%></h9>
                                
                                    <a href="logout"> <button class="btn btn-outline-success"
                                        style="background-color: rgb(61, 222, 236);margin-right: 1rem;"
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
                
                
                    <h3 class="list-group-item  active a" 
                        style=" border-bottom-left-radius: 95%; border-bottom-right-radius: 95%; width: 50%; left: 27%;" 
                        >Evaluate Test</h3>
                </div>
            </div>
            
            
                <div class="col-8" style="text-align: center; position: relative; margin: auto; align-self: center; ">
                    <div class="tab-content" id="nav-tabContent">
                        <div class="tab-pane fade show active">
                            <container class="d-flex" style="text-align: center; margin: auto;">
                            
                                <div class="parallax container  " style="margin-top: 5%;   ">


                                    <% int flag=1; while(rs.next()) {
                                    	
                                    	
                                    	
                                    	String qt= rs.getString("question");
                                    	 String[] question = qt.split("@@@");
                                    	
                                    	
                                    	if(rs.getInt("submission_id")==1) { 
                                    		
                                    		if(flag==1) {
                                        %>
                                        <button class="btn btn-outline-success"
                                        style="background-color: #6c757d;margin: 2rem; color: white;"
                                         disabled><h3>
                                            Submission <%=rs.getInt("submission_id") %>
                                        </h3></button>
                                        
                                        <% flag=2; } %>
                                            <div class="card" style="width: 60rem; ">

                                                <div class="card-body">
                                                    <table class="table">
                                                    <thead>
                                                        <tr>
                                                            
                                                            <td>QID</td>
                                                            <td>Question</td>
                                                            <td>answer</td>
                                                        </tr>
                                                        </thead>

                                                        <tr>
                                                            
                                                            <td>
                                                                <%=rs.getString("qid")%>
                                                            </td>
                                                            <td>
                                                                <%=question[0] %>
                                                            </td>
                                                            <td>
                                                                <%=rs.getString("answer")%>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </div>
                                            <% } else if(rs.getInt("submission_id")==2) { if(flag==2) { %>
                                                 <button class="btn btn-outline-success"
                                        style="background-color: #6c757d;margin: 2rem; color: white;"
                                         disabled><h3>
                                            Submission <%=rs.getInt("submission_id") %>
                                        </h3></button>
                                                <% flag=3; } %>
                                                    <div class="card" style="width: 60rem; ">

                                                        <div class="card-body">
                                                            <table class="table">
                                                                 <thead>
                                                        <tr>
                                                            
                                                            <td>QID</td>
                                                            <td>Question</td>
                                                            <td>answer</td>
                                                        </tr>
                                                        </thead>

                                                                <tr>
                                                                    
                                                                    <td>
                                                                        <%=rs.getString("qid")%>
                                                                    </td>
                                                                    <td>
                                                                        <%=question[0] %>
                                                                    </td>
                                                                    <td>
                                                                        <%=rs.getString("answer")%>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>
                                                    </div>
                                                    <% } else if(rs.getInt("submission_id")==3) { if(flag==3) { %>
                                                         <button class="btn btn-outline-success"
                                        style="background-color: #6c757d;margin: 2rem; color: white;"
                                         disabled><h3>
                                            Submission <%=rs.getInt("submission_id") %>
                                        </h3></button>
                                                        <% flag=4; } %>
                                                            <div class="card" style="width: 60rem; ">

                                                                <div class="card-body">
                                                                    <table class="table">
                                                                         <thead>
                                                        <tr>
                                                            
                                                            <td>QID</td>
                                                            <td>Question</td>
                                                            <td>answer</td>
                                                        </tr>
                                                        </thead>

                                                                        <tr>
                                                                            
                                                                            <td>
                                                                                <%=rs.getString("qid")%>
                                                                            </td>
                                                                            <td>
                                                                                <%=question[0] %>
                                                                            </td>
                                                                            <td>
                                                                                <%=rs.getString("answer")%>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                            <% } else if(rs.getInt("submission_id")==4) { if(flag==4) {
                                                                %>
                                                                 <button class="btn btn-outline-success"
                                        style="background-color: #6c757d;margin: 2rem; color: white;"
                                         disables><h3>
                                            Submission <%=rs.getInt("submission_id") %>
                                        </h3></button>
                                                                <% flag=5; } %>
                                                                    <div class="card" style="width: 60rem; ">

                                                                        <div class="card-body">
                                                                            <table class="table">
                                                                                 <thead>
                                                        <tr>
                                                            
                                                            <td>QID</td>
                                                            <td>Question</td>
                                                            <td>answer</td>
                                                        </tr>
                                                        </thead>

                                                                                <tr>
                                                                                    
                                                                                    <td>
                                                                                        <%=rs.getString("qid")%>
                                                                                    </td>
                                                                                    <td>
                                                                                        <%=question[0] %>
                                                                                    </td>
                                                                                    <td>
                                                                                        <%=rs.getString("answer")%>
                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                        </div>
                                                                    </div>
                                                                    <% } else if(rs.getInt("submission_id")==5) {
                                                                        if(flag==5) { %>
                                                                         <button class="btn btn-outline-success"
                                        style="background-color: #6c757d;margin: 2rem; color: white;"
                                         disables><h3>
                                            Submission <%=rs.getInt("submission_id") %>
                                        </h3></button>
                                                                        <% flag=6; } %>
                                                                            <div class="card" style="width: 60rem; ">

                                                                                <div class="card-body">
                                                                                    <table class="table">
                                                                                         <thead>
                                                        <tr>
                                                            
                                                            <td>QID</td>
                                                            <td>Question</td>
                                                            <td>answer</td>
                                                        </tr>
                                                        </thead>

                                                                                        <tr>
                                                                                            
                                                                                            <td>
                                                                                                <%=rs.getString("qid")%>
                                                                                            </td>
                                                                                            <td>
                                                                                                <%=question[0] %>
                                                                                            </td>
                                                                                            <td>
                                                                                                <%=rs.getString("answer")%>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </div>
                                                                            </div>
                                                                            <%
	}
	
	else
	{
		%>
		
		<h3>submission limit exceeded</h3>
		
		<%
	}
	
	
	}
	%>
    <div class="card" style="width: 60rem; ">

        <div class="card-body">
            <h2 style="color:red">Evaluate Result on basis of latest submission</h2>
	<form action="trainer_evaluate_answers_3.jsp">
	<input type="hidden" name="batch_id" value=<%= batch_id %>>
	<input type="hidden" name="test_id" value=<%= test_id %>>
	<input type="hidden" name="student_id" value=<%= student_id %>>
	
    <input type="number" name="marks_obtained" placeholder="Marks Obtained">
	
    <input type="number" name="total_marks" placeholder="Total Marks">
	
    <input class="btn btn-outline-success"
                                        style="background-color: rgb(61, 222, 236);margin-right: 1rem; " type="submit">
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

         
        </body>

        </html>