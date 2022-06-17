


<%@include file="db.jsp" %>


<%


int trainer_id = Integer.parseInt(request.getParameter("trainer_id")) ;

String tid = String.valueOf(trainer_id);

System.out.println(trainer_id);
	
String institute_email=(String)session.getAttribute("institute_email");
int institute_id= (int) session.getAttribute("institute_id");


//String qr= "select * from trainers where trainer_id=?;";
String qr= "select * from trainers where trainer_id="+ trainer_id +";";
//PreparedStatement st= con.prepareStatement(qr);
//st.setInt(1, tid);

Statement st = con.createStatement();

ResultSet rs = st.executeQuery(qr);



if(rs.next()){
do{
%>
<tr>
<td><%=rs.getString("trainer_id") %></td>
<td><%=rs.getString("trainer_first_name") %></td>
<td><%=rs.getString("trainer_last_name") %></td>
<td><%=rs.getString("trainer_email") %></td>
<td><%=rs.getString("trainer_phone") %></td>

<td> <a href="institute_assign_trainer_3.jsp?trainer_id=<%=rs.getString("trainer_id") %>"> Assign to Institute</a> </td>




</tr>
<%
}while(rs.next());
}

else
{
%>
<p> no data found in table </p>
<%	
}

%>

