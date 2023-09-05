<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="project.demo.entities.*"%>
	<%@page import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ADD Training</title>
<style>
body {
	background-color: #657f9a;
	min-height: 100vh;
	overflow: hidden;
}

.course {
	text-align: center;
}

.reg {
	margin-top: 100px;
	align-self: center;
}

form {
	max-width: 600px;
	margin: 0 auto;
	padding: 20px;
	background-color: #649fb7;
	border-radius: 5px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 1);
}

.b {
	padding: 8px 15px;
	background-color: #007bff;
	color: #efefef;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	margin-left: 980px;
	margin-top: 10px;
}

.b:hover {
	background-color: #7556f7;
}

.bb button {
	background-color: #b6a6fb;
}

table {
	width: 100%;
	border-collapse: collapse;
}

td {
	padding: 10px;
	vertical-align: top;
}

input[type="text"], input[type="number"], input[type="date"] {
	width: 100%;
	padding: 8px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

select {
	width: 100%;
	padding: 8px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

}
input[type="reset"], input[type="submit"] {
	padding: 8px 15px;
	background-color: #007bff;
	color: #fff;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type="reset"]:hover, input[type="submit"]:hover {
	background-color: #0056b3;
}
</style>
</head>
<body>
<% List<Trainer> trainer = (List) request.getAttribute("listOfTrainer");
	List<Course> course = (List) request.getAttribute("listOfCourse");
	int courseSize = course.size();
	int trainerSize = trainer.size();%>
<div class="course">
		<h1>Add Training</h1>
	</div>
	<div class="reg">
	<form action="addTraining" method="post">

		<table>
			<tr>
				<td>Course ID</td>
				<td>
					<select name="courseId">
					<% for(int i =0;i<courseSize;i++){%>
					<option value="<%= course.get(i).getCourseId() %>" type="number"><%= course.get(i).getCourseName()%></option>
					<%} %>
					</select>
					</td>
			</tr>
			<tr>
				<td>Trainer ID</td>
				<td>
				<select name="trainerId">
					<% for(int i =0;i<trainerSize;i++){%>
					<option value="<%= trainer.get(i).getTrainerId() %>" type="number"><%= trainer.get(i).getTrainerName()%> </option>
					<%} %>
					</select>
					</td>
			</tr>
			<tr>
				<td>Start Date</td>
				<td><input type="date" name="start_date"
					placeholder="start date" required/></td>
			</tr>
			<tr>
				<td>End Date</td>
				<td><input type="date" name="end_date"
					placeholder="end date" required/></td>
			</tr>
			<tr>
				<td>Fees</td>
				<td><input type="number" name="fees"
					placeholder="FEES" required/></td>
			</tr>
			<tr>
				<td>Discount</td>
				<td><input type="number" name="discount"
					placeholder="Discount" required/></td>
			</tr>
			<tr>
				<td>Batch Size</td>
				<td><input type="number" name="batchSize"
					placeholder="Batch Size" required/></td>
			</tr>
			
			
			<tr>
				<td><input type="reset" value="Reset" /> <input id="submit"
					type="submit" value="Submit" />
					
			</tr>
		</table>
	</form>
	</div>	
	<div class="bb">
<button class = "b">
		<a href="<%=request.getContextPath()%>/openDashboardTraining" style="text-decoration: none;">Dashboard</a>
	</button>
	</div>
</body>
</html>