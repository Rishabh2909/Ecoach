<%@include file="db.jsp" %>

<%

int batch_id = Integer.parseInt(request.getParameter("batch_id"));
int student_id = (int) session.getAttribute("student_id");

// String qr = "select * from test_results where student_id = "+student_id+" and result_id = (select max(result_id) from test_results);";

//String qr = "select * from test_results where student_id = "+student_id+" and result_id = (select max(result_id) from test_results);";

String qr = "select * from test_results where student_id = "+student_id+" group by result_id having max(result_id);";

Statement st = con.createStatement();
ResultSet rs= st.executeQuery(qr);

while(rs.next())
{
	
	int test_id = rs.getInt("test_id");
	String qr2 = "select test_title from tests where test_id="+test_id;
	

Statement st2 = con.createStatement();
ResultSet rs2= st2.executeQuery(qr2);
	rs2.next();
	
	%>
	
	<h3>Topic Name: <%=rs2.getString("test_title")%></h3>
	<h3>Marks Obtained: <%=rs.getInt("marks_obtained")%></h3>
	<h3>Total Marks: <%=rs.getString("total_marks")%></h3>
	
	
	
	<%


}




%>