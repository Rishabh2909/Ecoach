<%@include file="db.jsp" %>
<%

int batch_id = Integer.parseInt(request.getParameter("batch_id"));
int trainer_id = (int) session.getAttribute("trainer_id");
int test_id = Integer.parseInt(request.getParameter("test_id"));
int student_id = Integer.parseInt(request.getParameter("student_id"));
int marks_obtained = Integer.parseInt(request.getParameter("marks_obtained"));
int total_marks = Integer.parseInt(request.getParameter("total_marks"));


String qr2	= "select max(result_id) from test_results;";
Statement st= con.createStatement();
ResultSet rs = st.executeQuery(qr2);
int result_id;
if(rs.next()){
	result_id=rs.getInt("max(result_id)")+1;
	System.out.println(result_id);
}
else{
	result_id=1;
	System.out.println(result_id);
}






String qr= "insert into test_results values(?,?,?,?,?,?)";
PreparedStatement ps = con.prepareStatement(qr);
ps.setInt(1, test_id);
ps.setInt(2, student_id);
ps.setInt(3, batch_id);
ps.setInt(4, marks_obtained);
ps.setInt(5, total_marks);
ps.setInt(6, result_id);

int i=ps.executeUpdate();

if(i>0){
%>
<jsp:forward page="trainer_evaluation_done.html"></jsp:forward>
<%
}
else{
	%>
	OOPS! Some error occured!
	<% 
}
%>

