<%@include file="db.jsp" %>
<%












String trainer_first_name=request.getParameter("trainer_first_name");
String trainer_last_name=request.getParameter("trainer_last_name");
String trainer_email=request.getParameter("trainer_email");
String trainer_password=request.getParameter("trainer_password");
String trainer_phone=request.getParameter("trainer_phone");
String trainer_district=request.getParameter("trainer_district");
String trainer_state=request.getParameter("trainer_state");

int institute_id= Integer.parseInt(request.getParameter("institute_id"));

String qr2 = "select max(trainer_id) from trainers";
Statement st= con.createStatement();
ResultSet rs = st.executeQuery(qr2);
int trainer_id;
if(rs.next()){
trainer_id=rs.getInt("max(trainer_id)")+1;
System.out.println(trainer_id);
}
else{
	trainer_id=1;
	System.out.println(trainer_id);
}


Integer ins_id = new Integer(0);

String qr= "insert into trainers values(?,?,?,?,?,?,?,?,?)";
PreparedStatement ps = con.prepareStatement(qr);
ps.setInt(1, trainer_id);
ps.setString(2, trainer_first_name);
ps.setString(3, trainer_last_name );
ps.setString(4, trainer_email);
ps.setString(5, trainer_password);
ps.setString(6, trainer_phone);
ps.setString(7, trainer_district);
ps.setString(8, trainer_state);

ps.setInt(9, institute_id);
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