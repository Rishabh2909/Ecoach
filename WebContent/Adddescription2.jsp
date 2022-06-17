<%@include file="db.jsp" %>
<%

int institute_id = (int)session.getAttribute("institute_id");

String description = request.getParameter("description");


Statement st= con.createStatement();
String qr= "update institutes set description=? where institute_id=?";
PreparedStatement ps = con.prepareStatement(qr);


ps.setString(1, description);
ps.setInt(2, institute_id);

int i=ps.executeUpdate();
if(i>0){
%>
<jsp:forward page="Addescription.jsp"></jsp:forward>
<%
}
else{
	%>
	<jsp:forward page="Addescription.jsp"></jsp:forward>
	<% 
}
%>