<%@page import="java.util.Base64"%>
<%@page import="project.demo.entities.Trainer"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Trainer Dashboard</title>

<style>
body {
	background-color: #657f9a;
	overflow: hidden;
}
.course {
	text-align: center;
}
.d{
margin-top:20px;
}

h1 {
	text-align: center;
	margin-top: 10px;
}

.b {
	padding: 8px 15px;
	background-color: #007bff;
	color: #efefef;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

.c {
	background-color: #fa3d60;
	padding: 8px 15px;
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

a:hover {
	text-decoration: underline;
}
</style>
</head>
<body>

	<%
	List<Trainer> listOfTrainer = (List) request.getAttribute("listOfTrainer");
	%>
	<div class="course">
		<h1>Trainer Details</h1>
	</div>

	<table>
		
		<tr>
			<th>S. No</th>
			<th>Trainer Name</th>
			<th>qualification</th>
			<th>Description</th>
			<th>Experience</th>
			<th>Contact</th>
			<th>Edit Trainer</th>
			<th>Delete Trainer</th>

		</tr>

		<!-- Dynamic No of rows depending upon records in the database -->

		<%
		int serialNo = 0;
		for (Trainer trainer : listOfTrainer) {
		%>
		<tr>
			<td><%=trainer.getTrainerId()%></td>
			<td><%=trainer.getTrainerName()%></td>
			<td><%=trainer.getQualification()%></td>
			<td><%=trainer.getTrainerDescription()%></td>
			<td><%=trainer.getYear_of_exp()%></td>
			<td><%=trainer.getPhone()%></td>

			<td><button class="b">
					<a
						href="<%=request.getContextPath()%>/UpdateTrainer/<%=trainer.getTrainerId()%>">Update</a>
				</button></td>
			<td><button class = "c" onclick="confirmDelete(<%=trainer.getTrainerId()%>)">Delete</button></td>


		</tr>
		<%
		}
		%>


	</table>
<div class="d">
	<button class="b">
		<a href="<%=request.getContextPath()%>/openDashboard">Dashboard</a>
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
function confirmDelete(trainerId) {
  var result = confirm("Are you sure you want to delete this trainer?");
  if (result) {
    // If the user clicks "OK" in the confirmation dialog, proceed with the deletion.
    window.location.href = '<%=request.getContextPath()%>/delete_trainer/' + trainerId;
  } else {
    // If the user clicks "Cancel," do nothing or handle it as needed.
    // For example, you can close the dialog or keep the user on the same page.
  }
}
</script>
</html>