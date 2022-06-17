<% 

int batch_id = Integer.parseInt(request.getParameter("batch_id"));

%>

<!DOCTYPE html>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@include file="db.jsp" %>

<html lang="en">

<head>

  <meta charset="UTF-8">

  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>Show Courses</title>

</head>

<body>
<center><h1>Class Schedule</h1></center>
<table border="1 px solid black">
<thead>
<th>Class Date</th>
<th>Class Time</th>
<th>Class Link</th>
</thead>

<tbody>
<%



String qr= "select * from scheduled_classes where batch_id="+batch_id+";";


Statement st = con.createStatement();
ResultSet rs = st.executeQuery(qr);
if(rs.next()){
do{
%>
<tr>
<td><%=rs.getString("class_date") %></td>
<td><%=rs.getString("class_time") %></td>
<td><a href="<%=rs.getString("class_link") %>"> JOIN CLASS </a></td>

</tr>
<%
}while(rs.next());
}


else
{
%>
<p> no data found in table </p>
<%
}


%>
</tbody>

</table>

</body>

</html>
