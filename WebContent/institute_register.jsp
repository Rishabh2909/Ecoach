<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@include file="db.jsp" %>
<%


String qr2	= "select max(institute_id) from institutes";
Statement st= con.createStatement();
ResultSet rs = st.executeQuery(qr2);
int institute_id;
if(rs.next()){
	institute_id=rs.getInt("max(institute_id)")+1;
	System.out.println(institute_id);
}
else{
	institute_id=1;
	System.out.println(institute_id);
}



String institute_email = request.getParameter("institute_email");
String institute_password = request.getParameter("institute_password");
String institute_name = request.getParameter("institute_name");
String institute_area = request.getParameter("institute_area");
String institute_district = request.getParameter("institute_district");
String institute_state = request.getParameter("institute_state");
String institute_phone = request.getParameter("institute_phone");
String description = request.getParameter("description");

String qr= "insert into institutes values(?,?,?,?,?,?,?,?,?)";
PreparedStatement ps = con.prepareStatement(qr);
ps.setInt(1, institute_id);
ps.setString(2, institute_email);
ps.setString(3, institute_password);
ps.setString(4, institute_name);
ps.setString(5, institute_area);
ps.setString(6, institute_district);
ps.setString(7, institute_state);
ps.setString(8, institute_phone);
ps.setString(9, "");




int i=ps.executeUpdate();

if(i>0){
%>
Registered
<%
}
else{
	%>
	not registered
	<% 
}
%>