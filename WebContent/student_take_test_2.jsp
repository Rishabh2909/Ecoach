<%@include file="db.jsp" %>
<%
int batch_id = Integer.parseInt(request.getParameter("batch_id"));
int test_id = Integer.parseInt(request.getParameter("test_id"));
int student_id = (int) session.getAttribute("student_id");


String qr3	= "select max(submission_id) from student_answers where student_id="+student_id+" and test_id="+test_id+";";
Statement st= con.createStatement();
ResultSet rs1 = st.executeQuery(qr3);
int submission_id;
if(rs1.next()){
	submission_id=rs1.getInt("max(submission_id)")+1;
	System.out.println(submission_id);
}
else{
	submission_id=1;
	System.out.println(submission_id);
}





String qr = "select max(question_id) as mqi from tests where batch_id = " + batch_id + " and test_id="+test_id+";";

Statement s = con.createStatement();

ResultSet rs = s.executeQuery(qr);
int mqi=999;
if(rs.next())
{

	 mqi = rs.getInt("mqi");
	 
	

}

String arr[] = new String[mqi+1];

for(int i=1; i<=mqi; i++)
{
	String temp = i+"";
	 arr[i] = request.getParameter(temp);
	
}
int r=0;
for(int i=1; i<=mqi; i++)
{
	
	String qr1 = "insert into student_answers values(?,?,?,?,?,?)";
	PreparedStatement ps = con.prepareStatement(qr1);
	ps.setInt(1, test_id);
	ps.setInt(2, batch_id);
	ps.setInt(3, student_id);
	ps.setInt(4, i);
	ps.setString(5, arr[i]);
	ps.setInt(6, submission_id);
	
	r=ps.executeUpdate();
	
}

if(r>0){
	%>
	<jsp:forward page="test_submitted.html"></jsp:forward>
	<%
	}
	else{
	%>
	<jsp:forward page="test_not_submitted.html"></jsp:forward>
	<%
	}


%>
