<%@include file="db.jsp" %>
<% 
int batch_id = Integer.parseInt(request.getParameter("batch_id"));
int message_id = Integer.parseInt(request.getParameter("message_id"));
int trainer_id = (int) session.getAttribute("trainer_id");
String answer = request.getParameter("answer");
%>

<%

Statement st= con.createStatement();


String qr= "update forum set trainer_id = ?, answer = ? where message_id = ?";
PreparedStatement ps = con.prepareStatement(qr);
ps.setInt(1, trainer_id);
ps.setString(2, answer);
ps.setInt(3, message_id);




int i=ps.executeUpdate();

if(i>0){
%>
<jsp:forward page="trainer_forum.jsp" />
<%
}
else{
	%>
	<jsp:forward page="student_forum.jsp" />
	<% 
}
%>
