<!DOCTYPE html>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@include file="db.jsp" %>

<html lang="en">

<head>

  <meta charset="UTF-8">

  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>Document</title>

</head>

<body>
<center><h1>Manage Trainers</h1></center>
<table border="1 px solid black">
<thead>
<th>Trainer ID</th>
<th>Trainer First Name</th>
<th>Trainer Last Name</th>
<th>Trainer Email</th>
<th>Trainer Phone</th>
<th>Trainer District</th>
<th>Trainer State</th>
</thead>

<tbody>
<%
int institute_id= (int) session.getAttribute("institute_id");
String qr= "select * from trainers where institute_id="+institute_id+";";
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(qr);
if(rs.next()){
do{
%>
<tr>
<td><%=rs.getString("trainer_id") %></td>
<td><%=rs.getString("trainer_first_name") %></td>
<td><%=rs.getString("trainer_last_name") %></td>
<td><%=rs.getString("trainer_email") %></td>
<td><%=rs.getString("trainer_phone") %></td>
<td><%=rs.getString("trainer_district") %></td>
<td><%=rs.getString("trainer_state") %></td>
<td><a href="institute_delete_trainer.jsp?trainer_id=<%=rs.getString("trainer_id") %>">Delete Trainer</a></td>


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