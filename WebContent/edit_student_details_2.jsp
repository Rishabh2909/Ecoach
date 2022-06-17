<%@include file="db.jsp" %>
<%

int student_id = (int)session.getAttribute("student_id");
String student_password = request.getParameter("student_password");
String student_first_name = request.getParameter("student_first_name");
String student_last_name = request.getParameter("student_last_name");
String student_district = request.getParameter("student_district");
String student_state = request.getParameter("student_state");
String student_phone = request.getParameter("student_phone");

Statement st= con.createStatement();
String qr= "update students set student_password=?,student_first_name=?,student_last_name=?,student_district=?,student_state=?,student_phone=? where student_id=?";
PreparedStatement ps = con.prepareStatement(qr);

ps.setString(1, student_password);
ps.setString(2, student_first_name);
ps.setString(3, student_last_name);
ps.setString(4, student_district);
ps.setString(5, student_state);
ps.setString(6, student_phone);
ps.setInt(7,student_id);

int i=ps.executeUpdate();
if(i>0){
%>
<jsp:forward page="student_updated.html"></jsp:forward>
<%
}
else{
	%>
	<jsp:forward page="student_not_updated.html"></jsp:forward>
	<% 
}
%>