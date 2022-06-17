<%@include file="db.jsp" %>



<%
String trainer_email=request.getParameter("trainer_email");
String trainer_password = request.getParameter("trainer_password");
int trainer_id = 0;

String trainer_first_name = "";

String qr = "select * from trainers";
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(qr);



int i=0;
if(rs.next()){
do{
if(trainer_email.equals(rs.getString("trainer_email")) && trainer_password.equals(rs.getString("trainer_password"))){
i=999;
trainer_id =   rs.getInt("trainer_id");

trainer_first_name = rs.getString("trainer_first_name");


break;
}
}while(rs.next());
}
if(i==999){
session.setAttribute("trainer_email",trainer_email);
session.setAttribute("trainer_id",trainer_id);
session.setAttribute("trainer_first_name", trainer_first_name);		
%>

<jsp:forward page="trainer_home.jsp" />

<%

}
else{
out.println("<script>window.alert('login failed')</script>");
}
%>