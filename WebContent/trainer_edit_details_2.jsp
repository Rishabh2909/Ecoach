<%@include file="db.jsp" %>
<%

int trainer_id = (int)session.getAttribute("trainer_id");

String trainer_password = request.getParameter("trainer_password");
String trainer_first_name = request.getParameter("trainer_first_name");
String trainer_last_name = request.getParameter("trainer_last_name");
String trainer_district = request.getParameter("trainer_district");
String trainer_state = request.getParameter("trainer_state");
String trainer_phone = request.getParameter("trainer_phone");

Statement st= con.createStatement();
String qr= "update trainers set trainer_first_name=?, trainer_last_name =?, trainer_password=?, trainer_district=?,trainer_state=?,trainer_phone=? where trainer_id=?";
PreparedStatement ps = con.prepareStatement(qr);


ps.setString(1, trainer_first_name);
ps.setString(2, trainer_last_name);
ps.setString(3, trainer_password);
ps.setString(4, trainer_district);
ps.setString(5, trainer_state);
ps.setString(6, trainer_phone);
ps.setInt(7, trainer_id);

int i=ps.executeUpdate();
if(i>0){
%>
<jsp:forward page="trainer_updated.html"></jsp:forward>
<%
}
else{
	%>
	<jsp:forward page="trainer_not_updated.html"></jsp:forward>
	
	<% 
}
%>