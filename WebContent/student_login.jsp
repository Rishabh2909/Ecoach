<%@include file="db.jsp" %>



<%
String student_email=request.getParameter("student_email");
String student_password = request.getParameter("student_password");
int student_id = 0;

String student_first_name = "";

String qr = "select * from students";
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(qr);



int i=0;
if(rs.next()){
do{
if(student_email.equals(rs.getString("student_email")) && student_password.equals(rs.getString("student_password"))){
i=999;
student_id =   rs.getInt("student_id");

student_first_name = rs.getString("student_first_name");


break;
}
}while(rs.next());
}
if(i==999){
session.setAttribute("student_email",student_email);
session.setAttribute("student_id",student_id);
session.setAttribute("student_first_name", student_first_name);
%>

<jsp:forward page="student_home.jsp" />

<%

}
else{
out.println("<script>window.alert('login failed')</script>");
}
%>