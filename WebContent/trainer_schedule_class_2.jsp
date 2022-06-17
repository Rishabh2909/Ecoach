<%@include file="db.jsp" %>
<%


String class_date=request.getParameter("class_date");
String class_time=request.getParameter("class_time");
String class_link=request.getParameter("class_link");


int batch_id= Integer.parseInt(request.getParameter("batch_id"));

String qr3	= "select max(num_class) from scheduled_classes where batch_id="+batch_id+";";
Statement st3= con.createStatement();
ResultSet rs3 = st3.executeQuery(qr3);

int num_class;
if(rs3.next()){
	num_class=rs3.getInt("max(num_class)")+1;
	System.out.println(num_class);
}
else{
	num_class=1;
	System.out.println(num_class);
}


String qr= "insert into scheduled_classes values(?,?,?,?,?)";
PreparedStatement ps = con.prepareStatement(qr);
ps.setInt(1, batch_id);
ps.setString(2, class_date);
ps.setString(3, class_time);
ps.setString(4, class_link);
ps.setInt(5, num_class);



int i=ps.executeUpdate();



if(i>0){
%>
Class Scheduled
<%
}
else{
%>
Cannot schedule class
<%
}
%>