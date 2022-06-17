<% 
int course_id = Integer.parseInt(request.getParameter("course_id"));
session.setAttribute("course_id",course_id);

%>
<jsp:forward page="institute_add_content.jsp" />  