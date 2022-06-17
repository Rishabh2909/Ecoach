<%@include file="db.jsp" %>
<%

int institute_id= (int) session.getAttribute("institute_id");
String qr= "select * from trainers where institute_id=?;";
PreparedStatement st= con.prepareStatement(qr);
st.setInt(1, institute_id);
ResultSet rs = st.executeQuery();



if(rs.next()){
do{
%>
<option value=<%=rs.getInt("trainer_id") %> >
<%= rs.getString("trainer_first_name") %> <%= rs.getString("trainer_last_name") %>
</option>
<%
}while(rs.next());
}
%>