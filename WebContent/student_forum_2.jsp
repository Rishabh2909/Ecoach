<%@include file="db.jsp" %>
<% 
int batch_id = Integer.parseInt(request.getParameter("batch_id"));
int student_id = (int) session.getAttribute("student_id");
String message = request.getParameter("message");
%>

<%


String qr2	= "select max(message_id) from forum";
Statement st= con.createStatement();
ResultSet rs = st.executeQuery(qr2);
int message_id;
if(rs.next()){
	message_id=rs.getInt("max(message_id)")+1;
	System.out.println(message_id);
}
else{
	message_id=1;
	System.out.println(message_id);
}


String qr= "insert into forum values(?,?,?,?,?,?)";
PreparedStatement ps = con.prepareStatement(qr);
ps.setInt(1, message_id);
ps.setString(2, message);
ps.setInt(3, batch_id);
ps.setInt(4, student_id);
ps.setInt(5, 0);
ps.setString(6, " ");



int i=ps.executeUpdate();

if(i>0){
%>
<jsp:forward page="student_forum.jsp" />
<%
}
else{
	%>
	<jsp:forward page="student_forum.jsp" />
	<% 
}
%>
