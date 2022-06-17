<%@include file="db.jsp" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%

int batch_id = Integer.parseInt( request.getParameter("batch_id") );

//String qr = "select * from tests where batch_id = any(select distinct (" + batch_id +") from tests) ";

String qr = " select distinct(test_id), test_title from tests where batch_id = any(select distinct ("+batch_id+") from tests);";

Statement s = con.createStatement();

ResultSet rs = s.executeQuery(qr);

%>

<table border="1px solid black">

<tr>
<td>Topic</td>



</tr>

<%

while(rs.next())
{

	%>
	
	<tr>
<td><%=rs.getString("test_title") %></td>

<td> <a href="student_take_test.jsp?test_id=<%=rs.getString("test_id")%>&&batch_id=<%=batch_id%>">Take Test</a> </td>
</tr>
	
	
	<% 

}

%>




</table>