<%@include file="db.jsp" %>



<%
String institute_email=request.getParameter("institute_email");
String institute_password = request.getParameter("institute_password");
int institute_id = 0;


String qr = "select * from institutes";
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(qr);
String institute_name="";


int i=0;
if(rs.next()){
do{
if(institute_email.equals(rs.getString("institute_email")) && institute_password.equals(rs.getString("institute_password"))){
i=999;
institute_id = rs.getInt("institute_id");
institute_name = rs.getString("institute_name");
break;
}
}while(rs.next());
}
if(i==999){
session.setAttribute("institute_email",institute_email);
session.setAttribute("institute_id",institute_id);
session.setAttribute("institute_name", institute_name);
%>

<jsp:forward page="institute_home.jsp" />

<%

}
else{
out.println("<script>window.alert('login failed')</script>");
}
%>