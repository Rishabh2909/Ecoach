<%@include file="db.jsp" %>
<%












int trainer_id = Integer.parseInt(request.getParameter("trainer_id"));
int institute_id = (int) session.getAttribute("institute_id");


String qr2 = "select max(trainer_id) from trainers";
Statement st= con.createStatement();
ResultSet rs = st.executeQuery(qr2);




String qr= "update trainers  set institute_id = ? where trainer_id=?";
PreparedStatement ps = con.prepareStatement(qr);
ps.setInt(1, institute_id);
ps.setInt(2, trainer_id);



int i=ps.executeUpdate();



if(i>0){
%>
Trainer added to institute
<%
}
else{
%>
Couldn't add trainer to institute
<%
}
%>

<jsp:forward page="institute_home.jsp"></jsp:forward>