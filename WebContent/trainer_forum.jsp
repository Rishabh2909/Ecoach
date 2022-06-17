<%@include file="db.jsp" %>
<%@page import="java.sql.Statement"%>
<% 

int batch_id = Integer.parseInt(request.getParameter("batch_id"));
int trainer_id = (int) session.getAttribute("trainer_id");
%>

<html>

<head>

</head>
<body>
<%


String qr = "select * from forum where batch_id = "+batch_id+" and trainer_id = 0" ;

Statement s = con.createStatement();

ResultSet rs = s.executeQuery(qr);


%>


<table border="1px solid black">

<tr>
<td>Message</td>
<td>Answer the Query</td>
</tr>

<%

while(rs.next())
{

	int message_id = rs.getInt("message_id");
	String message = rs.getString("message");
	int student_id = rs.getInt("student_id");
	
	%>
	
	<tr>
<td><%=rs.getString("message") %></td>

<form action="trainer_forum_2.jsp">
<td> 

<input type="text" name="answer" >

<input type="hidden" name="message_id" value=<%= message_id %> >

<input type="hidden" name="batch_id" value=<%= batch_id %> >

</td>

<td>
<input type="submit" >
</td>
</form>


</tr>
	
	
	<% 

}

%>




</table>




</body>
</html>

