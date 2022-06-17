<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@include file="db.jsp" %>

<%

int institute_id= (int) session.getAttribute("institute_id");



String qr2	= "select max(course_id) from courses";
Statement st= con.createStatement();
ResultSet rs = st.executeQuery(qr2);
int course_id;
if(rs.next()){
	course_id=rs.getInt("max(course_id)")+1;
	System.out.println(course_id);
}
else{
	course_id=1;
	System.out.println(course_id);
}



String course_name = request.getParameter("course_name");
String duration= request.getParameter("duration");
int num_class = Integer.parseInt(request.getParameter("num_class"));



String qr= "insert into courses values(?,?,?,?, ?)";
PreparedStatement ps = con.prepareStatement(qr);
ps.setInt(1, course_id);
ps.setString(2, course_name);
ps.setString(3, duration);
ps.setInt(4, institute_id);
ps.setInt(5, num_class);






int i=ps.executeUpdate();

if(i>0){
%>
Course Added
<%
}
else{
	%>
	Couldn't add course
	<% 
}
%>

<jsp:forward page="institute_home.jsp"></jsp:forward>