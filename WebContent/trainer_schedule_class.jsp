<html>
<% 

int batch_id = Integer.parseInt(request.getParameter("batch_id"));

%>

<body>


<form action="trainer_schedule_class_2.jsp">
Date: <input type="date" name="class_date" placeholder="date">
<br>
Time: <input type="time" name="class_time" placeholder="time">
<br>
Link: <input type="text" name="class_link" placeholder="link">
<br>
<input type="hidden" value=<%= batch_id %>  name="batch_id">
<br>
<input type="submit" value="Schedule">
</form>


</body>
</html>