<%@include file="db.jsp" %>
<%

		String search_institute = request.getParameter("search_institute");

		//String qr="select * from  institutes where institute_name like '"+search_institute+"%' ";
		
		
		String qr = "select * from institutes where institute_name like '"+search_institute+"%' or institute_id = any(select institute_id from courses where course_name like '"+search_institute+"%' );"; 
		
		//String qr = "select * from institutes where institute_name like 'h%' or institute_id = any(select institute_id from courses where course_name like 'h%' );";
		
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery(qr);
		
		while(rs.next())
		{
		
			
			%>
			<tr>
			<td><%= rs.getString("institute_id") %></td>
			<td><%= rs.getString("institute_name") %></td>
			<td><%= rs.getString("institute_district") %></td>
			<td><%= rs.getString("institute_state") %></td>
			<td><%= rs.getString("institute_phone") %></td>
			
			<td><a href="show_institute_details.jsp?institute_id=<%= rs.getString("institute_id") %>">View Institute</a></td>
			</tr>
			<%
			
			
		}
		
		
		 %>