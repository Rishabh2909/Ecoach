<%@include file="db.jsp" %>
<%




String student_first_name=request.getParameter("student_first_name");
String student_last_name=request.getParameter("student_last_name");
String student_email=request.getParameter("student_email");
String student_password=request.getParameter("student_password");
String student_phone=request.getParameter("student_phone");
String student_district=request.getParameter("student_district");
String student_state=request.getParameter("student_state");



String qr2 = "select max(student_id) from students";
Statement st= con.createStatement();
ResultSet rs = st.executeQuery(qr2);
int student_id;
if(rs.next()){
student_id=rs.getInt("max(student_id)")+1;
System.out.println(student_id);
}
else{
student_id=1;
System.out.println(student_id);
}



String qr= "insert into students values(?,?,?,?,?,?,?,?)";
PreparedStatement ps = con.prepareStatement(qr);
ps.setInt(1, student_id);
ps.setString(2, student_first_name);
ps.setString(3, student_last_name);
ps.setString(4, student_email);
ps.setString(5, student_password);
ps.setString(6, student_phone);
ps.setString(7, student_district);
ps.setString(8, student_state);
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