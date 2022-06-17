<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@include file="db.jsp" %>


<% 

int institute_id = (int) session.getAttribute("institute_id");
String batch_start_date = request.getParameter("batch_start_date");
String batch_start_timing = request.getParameter("batch_start_timing");
String batch_end_timing = request.getParameter("batch_end_timing");

String batch_timing = batch_start_timing + " " + batch_end_timing; 


int trainer_id = Integer.parseInt(request.getParameter("trainer_id"));
int course_id = Integer.parseInt(request.getParameter("course_id"));



String qr2	= "select max(batch_id) from batches";
Statement st= con.createStatement();
ResultSet rs = st.executeQuery(qr2);
int batch_id;


if(rs.next()){
	batch_id=rs.getInt("max(batch_id)")+1;
}
else{
	batch_id=1;
}



String course_name = request.getParameter("course_name");
String duration= request.getParameter("duration");



String qr= "insert into batches values(?,?,?,?,?,?)";
PreparedStatement ps = con.prepareStatement(qr);
ps.setInt(1, batch_id);
ps.setInt(2, course_id);
ps.setInt(3, institute_id);
ps.setInt(4, trainer_id);
ps.setString(5, batch_timing);
ps.setString(6, batch_start_date);



int i=ps.executeUpdate();

if(i>0){
%>
Batch added
<%
}
else{
	%>
	Couldn't add batch
	<% 
}
%>


<jsp:forward page="institute_home.jsp"></jsp:forward>


