<%@include file="db.jsp" %>

<%

int batch_id = Integer.parseInt( request.getParameter("batch_id") );

int student_id = (int) session.getAttribute("student_id");

String qr = "insert into studentbatches values(?, ?)";

PreparedStatement ps = con.prepareStatement(qr);
ps.setInt(1, batch_id);
ps.setInt(2, student_id);


int i = ps.executeUpdate();

if(i>0)
{

	%>
	You are enrolled successfully
	<%
}

else{
	%>
	Cannot enroll you
	<% 
}









%>