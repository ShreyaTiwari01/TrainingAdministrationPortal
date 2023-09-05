<%@page import="java.util.Base64"%>
<%@page import="project.demo.entities.*"%>

<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Training Dashborad</title>

<style>
body {
	background-color: #657f9a;
	overflow: hidden;
}


h1 {
	text-align: center;
	margin-top: 10px;
}
.c {
	background-color: #fa3d60;
	padding: 8px 15px;
	color: #efefef;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}
.b {
	padding: 8px 15px;
	background-color: #007bff;
	color: #efefef;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}
.c:hover {
	background-color: #98041f;
}
.b:hover {
	background-color: #0056b3;
}

table {
	width: 100%;
	border-collapse: collapse;
	background-color: #649fb7;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 1);
	margin-top: 20px;
	border: 1px solid #dddddd;
}
.d{
margin-top:20px;
}



th, td {
	padding: 10px;
	text-align: left;
	border-top: 2px solid #dddddd;
	border-bottom: 2px solid #dddddd;
	border-left: 2px solid #dddddd;
	border-right: 2px solid #dddddd;
}

th {
	background-color: #649fb7;
	font-weight: bold;
}

tr:nth-child(even) {
	background-color: #649fb7;
}

a {
	text-decoration: none;
	color: #efefef;
	margin-right: 10px;
}
.course {
	text-align: center;
}

a:hover {
	text-decoration: underline;
}
</style>
</head>
<body>
<%
	List<Training> training = (List) request.getAttribute("listOfTraining");
	List<Trainer> trainer = (List) request.getAttribute("listOfTrainer");
	List<Course> course = (List) request.getAttribute("listOfCourse");
	int size = training.size();
	%>
	<div class="course">
		<h1>Trainer Details</h1>
	</div>

	<table>
		<tr>
			<th>ID</th>
			<th>Course ID</th>
			<th>Course Name</th>
			<th>Trainer ID</th>
			<th>Trainer Name</th>
			<th>Start Date</th>
			<th>End Date</th>
			<th>Fees</th>
			<th>Discount</th>
			<th>Batch Size</th>
			<th>Offer Price</th>
			<th>Edit Training</th>
			<th>Delete Training</th>

		</tr>

		<!-- Dynamic No of rows depending upon records in the database -->

		<%
		int serialNo = 0;
		for (int i=0;i<size;i++) {
		%>
		<tr>
			<td><%=training.get(i).getTrainingId()%></td>
			<td><%=training.get(i).getCourseId()%></td>
			<td><%=course.get(i).getCourseName()%></td>
			<td><%=training.get(i).getTrainerId()%></td>
			<td><%=trainer.get(i).getTrainerName()%></td>
			<td><%=training.get(i).getStart_date()%></td>
			<td><%=training.get(i).getEnd_date() %></td>
			<td><%=training.get(i).getFees()%></td>
			<td><%=training.get(i).getDiscount()%></td>
			<td><%=training.get(i).getBatchSize()%></td>
			<td><%=training.get(i).getDiscountedPrice() %></td>
			
			<td><button class = "b"><a
				href="<%=request.getContextPath()%>/Update_Training/<%=training.get(i).getTrainingId()%>">Update</a>
			</button></td>
			<td><button class = "c" onclick="confirmDelete(<%=training.get(i).getTrainingId()%>)">Delete</button></td>


		</tr>
		<%
		}
		%>
		
		

	</table>
<div class ="d">
	<button class = "b">
		<a href="<%=request.getContextPath()%>/openDashboardTraining" style="text-decoration: none;">Dashboard</a>
	</button>
	</div>


	<p>
		<%
		String message = (String) request.getAttribute("message");
		if (message != null) {
			out.print(message);
		}
		%>

	</p>
</body>
<script>
function confirmDelete(trainingId) {
  var result = confirm("Are you sure you want to delete this training?");
  if (result) {
    // If the user clicks "OK" in the confirmation dialog, proceed with the deletion.
    window.location.href = '<%=request.getContextPath()%>/delete_training/' + trainingId;
  } else {
    // If the user clicks "Cancel," do nothing or handle it as needed.
    // For example, you can close the dialog or keep the user on the same page.
  }
}
</script>

</html>
