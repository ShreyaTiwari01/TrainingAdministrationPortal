<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ADD Trainer</title>
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

input[type="text"], input[type="number"] {
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
	<div class="course">
		<h1>Add Trainer</h1>
	</div>
	<div class="reg">
		<form action="addTrainer" method="post">

			<table>
				<tr>
					<td>Trainer Name</td>
					<td><input type="text" name="trainerName"
						placeholder="Trainer Name" /></td>
				</tr>
				<tr>
					<td>Qualification</td>
					<td><input type="text" name="qualification"
						placeholder="Qualification" /></td>
				</tr>
				<tr>
					<td>Description</td>
					<td><input type="text" name="trainerDescription"
						placeholder="Description" /></td>
				</tr>
				<tr>
					<td>Experience</td>
					<td><input type="number" name="year_of_exp"
						placeholder="(In Years)" /></td>
				</tr>
				<tr>
					<td>Contact</td>
					<td><input type="number" name="phone" placeholder="Mobile No." /></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="reset" value="Reset" /> <input id="submit"
						type="submit" value="Submit" /></td>
				</tr>
			</table>
		</form>
	</div>
	<div class="bb">
		<button class="b">
			<a href="<%=request.getContextPath()%>/openDashboardTraining" style="text-decoration: none;">Dashboard</a>
		</button>
	</div>
</body>
</html>