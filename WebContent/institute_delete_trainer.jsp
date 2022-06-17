<%@include file="db.jsp" %>
<%







int trainer_id = Integer.parseInt(request.getParameter("trainer_id"));
int institute_id = (int) session.getAttribute("institute_id");




String qr= "update trainers  set institute_id = ? where trainer_id=?";
PreparedStatement ps = con.prepareStatement(qr);
ps.setInt(1, 0);
ps.setInt(2, trainer_id);



int i=ps.executeUpdate();



if(i>0){
%>
Trainer deleted from institute
<jsp:forward page="institute_home.jsp" />
<%
}
else{
%>
Couldn't deleted from intitute

<%
}
%>