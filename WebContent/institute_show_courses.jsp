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
<center><h1>Show Courses</h1></center>
<table border="1 px solid black">
<thead>
<th>Course ID</th>
<th>Course Name</th>
<th>Course duration</th>
</thead>

<tbody>
<%
int institute_id = (int) session.getAttribute("institute_id");


String qr= "select * from courses where institute_id="+institute_id+";";


Statement st = con.createStatement();
ResultSet rs = st.executeQuery(qr);
if(rs.next()){
do{
%>
<tr>
<td><%=rs.getString("course_id") %></td>
<td><%=rs.getString("course_name") %></td>
<td><%=rs.getString("duration") %></td>


<td><a href="institute_create_batch.jsp?course_id=<%=rs.getString("course_id") %>">Create Batch</a></td>

<td><a href="institute_show_batches.jsp?course_id=<%=rs.getString("course_id") %>">Show Batches</a></td>

<td><a href="institute_add_content.jsp?course_id=<%=rs.getString("course_id") %>">Add Content</a></td>

<td><a href="institute_upload_session.jsp?course_id=<%=rs.getString("course_id") %>">session upload</a></td>
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