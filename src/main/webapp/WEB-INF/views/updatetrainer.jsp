<%@page import="project.demo.entities.Trainer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Update Trainer</title>
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

.bb button{
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

input[type="text"] {
	width: 100%;
	padding: 8px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
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

	<%
	Trainer trainer = (Trainer) request.getAttribute("trainerToupdate");
	//out.print(trainer);
	%>
	<div class="course">
<h1>Update Trainer</h1>
	</div>
	<div class="reg">

	<form
		action=" <%=request.getContextPath()%>/Update/<%=trainer.getTrainerId()%>"
		method="post">


		<fieldset>
			
			<input type="text" name="trainerName"
				value="<%=trainer.getTrainerName()%>"
				placeholder="Enter Trainer Name" /><br /> 
				<input type="text"
				name="qualification" value="<%=trainer.getQualification()%>"
				placeholder="Enter Qualification" /><br /> 
				<input type="text"
				name="trainerDescription"
				value="<%=trainer.getTrainerDescription()%>"
				placeholder="enter Description" /><br /> 
				<input type="number"
				name="year_of_exp" value="<%=trainer.getYear_of_exp()%>"
				placeholder="experience" /><br /> 
				
				 
				<input type="submit"
				value="Submit">
		</fieldset>
	</form>
	</div>

<div class="bb">
	<button class="b">
		<a href="<%=request.getContextPath()%>/openDashboardTraining" style="text-decoration: none;">Dashboard</a>
	</button>
	</div>
</body>
</html>