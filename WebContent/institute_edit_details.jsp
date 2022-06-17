<%@include file="db.jsp" %>
<%

int institute_id = (int)session.getAttribute("institute_id");

String institute_password = request.getParameter("institute_password");
String institute_name = request.getParameter("institute_name");
String institute_area = request.getParameter("institute_area");
String institute_district = request.getParameter("institute_district");
String institute_state = request.getParameter("institute_state");
String institute_phone = request.getParameter("institute_phone");

Statement st= con.createStatement();
String qr= "update institutes set institute_password=?,institute_name=?,institute_area=?,institute_district=?,institute_state=?,institute_phone=? where institute_id=?";
PreparedStatement ps = con.prepareStatement(qr);


ps.setString(1, institute_password);
ps.setString(2, institute_name);
ps.setString(3, institute_area);
ps.setString(4, institute_district);
ps.setString(5, institute_state);
ps.setString(6, institute_phone);
ps.setInt(7, institute_id);

int i=ps.executeUpdate();
if(i>0){
%>
<jsp:forward page="institute_updated.html"></jsp:forward>
<%
}
else{
	%>
	<jsp:forward page="institute_not_updated.html"></jsp:forward>
	<% 
}
%>