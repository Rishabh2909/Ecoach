<%@include file="db.jsp" %>
<%
String institute_email=(String)session.getAttribute("institute_email");
String institute_id=(String)session.getAttribute("institute_id");
String qr= "select * from trainers where institute_id=?;";
PreparedStatement st= con.prepareStatement(qr);
st.setString(1, institute_id);
ResultSet rs = st.executeQuery();



if(rs.next()){
do{
%>
<tr>
<td><%=rs.getString("trainer_id") %></td>
<td><%=rs.getString("trainer_first_name") %></td>
<td><%=rs.getString("trainer_last_name") %></td>
<td><%=rs.getString("trainer_email") %></td>
<td><%=rs.getString("trainer_password") %></td>
<td><%=rs.getString("trainer_phone") %></td>
<td><%=rs.getString("trainer_district") %></td>
<td><%=rs.getString("trainer_state") %></td>
</tr>
<%
}while(rs.next());
}
%>