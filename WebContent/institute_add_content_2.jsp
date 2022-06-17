<%@include file="db.jsp" %>
<%


//int course_id = Integer.parseInt(request.getParameter("course_id"));
//String topic = (String) request.getParameter("topic");
String iname=request.getParameter("iname");

int course_id = (int) session.getAttribute("course_id");

String qr2	= "select max(content_id) from files where course_id="+course_id;
Statement st= con.createStatement();
ResultSet rs = st.executeQuery(qr2);
int content_id;
if(rs.next()){
	content_id=rs.getInt("max(content_id)")+1;
	System.out.println(content_id);
}
else{
	content_id=1;
	System.out.println(content_id);
}




String qr="insert into files values(?,?,?,?)";
PreparedStatement ps=con.prepareStatement(qr);
ps.setInt(1, course_id);
ps.setString(2, "topic");
ps.setString(3, iname);
ps.setInt(4, content_id);

int i=ps.executeUpdate();
RequestDispatcher rd=request.getRequestDispatcher("institute_add_content.jsp");
if(i>0)
{
	rd.include(request,response);
	out.println("<script>window.alert('upload image successfully');</script>");
}
else
{
	rd.include(request,response);
	out.println("<script>window.alert('unable to upload');</script>");	
}
%>