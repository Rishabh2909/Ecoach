<%@include file="db.jsp" %>
<%

int batch_id = Integer.parseInt(request.getParameter("batch_id"));
int trainer_id = (int) session.getAttribute("trainer_id");

String qr = "select distinct(test_id), test_title from tests where batch_id="+batch_id+";";


Statement s = con.createStatement();

ResultSet rs = s.executeQuery(qr);
%>

<table border="1px solid black">

<tr>
<td>Test Title</td>
<td>Test ID</td>


</tr>

<%

while(rs.next())
{

	%>
	
	<tr>
<td><%=rs.getString("test_title") %></td>
<td><%=rs.getString("test_id")%></td>
<td> <a href="trainer_evaluate_answers.jsp?batch_id=<%= batch_id %>&&test_id=<%=rs.getString("test_id") %>">View Answers</a> </td>
</tr>
	
	
	<% 

}

%>




</table>

