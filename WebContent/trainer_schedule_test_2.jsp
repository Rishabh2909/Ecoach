<%@include file="db.jsp" %>
<%
int batch_id = Integer.parseInt(request.getParameter("batch_id"));
String title = request.getParameter("title");
int trainer_id = (int) session.getAttribute("trainer_id");
String[] question = request.getParameterValues("question");


String qr2 = "select max(test_id) from tests where batch_id=" + batch_id+";";
Statement st= con.createStatement();
ResultSet rs = st.executeQuery(qr2);
int test_id;
if(rs.next()){
test_id=rs.getInt("max(test_id)")+1;
System.out.println(test_id);
}
else{
	test_id=1;
	System.out.println(test_id);
}




String[] opt1 = request.getParameterValues("opt1");
String[] opt2 = request.getParameterValues("opt2");
String[] opt3 = request.getParameterValues("opt3");
String[] opt4 = request.getParameterValues("opt4");

for(int i=0; i<question.length; i++)
{
	String temp = question[i];
	
	
	
	%>
	
	<%= question[i]%>
	
	<%
		
	if(i<opt1.length)
	{
		
		
		
	
	%>
	<%= opt1[i]%>
	<%= opt2[i]%>
	<%= opt3[i]%>
	<%= opt4[i]%>
	
	<br>
	
	<%
	
	 temp += "@@@"+opt1[i]+"@@@"+opt2[i]+"@@@"+opt3[i]+"@@@"+opt4[i];
	
	}
	
	
	
	String qr = "insert into tests values(?,?,?,?,?,?)";
	PreparedStatement ps = con.prepareStatement(qr);
	ps.setInt(1, test_id);
	ps.setInt(2, batch_id);
	ps.setInt(3, trainer_id);
	ps.setInt(4, i+1);
	ps.setString(5, temp);
	ps.setString(6, title);

	int j=ps.executeUpdate();

	if(j>0){
		%>
		scheduled
		<%
		}
		else{
		%>
		not scheduled
		<%
		}
		
	
}


%>