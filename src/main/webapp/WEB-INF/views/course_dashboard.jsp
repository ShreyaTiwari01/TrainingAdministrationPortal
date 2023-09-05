<%@page import="java.util.Base64"%>
<%@page import="java.util.List"%>
<%@page import="project.demo.entities.Course"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Course Dashboard</title>

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
	margin-top: 40px;
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
.course {
	text-align: center;
}
a {
	text-decoration: none;
	color: #efefef;
	margin-right: 10px;
}
.d{
margin-top:20px;
}


a:hover {
	text-decoration: underline;
}
</style>
</head>
<body>
	<%
	List<Course> listOfCourse = (List) request.getAttribute("listOfCourse");
	%>
<div class="course">
		<h1>Course Details</h1>
	</div>
	<table>
		
		<tr>
			<th>ID</th>
			<th>Course Name</th>
			<th>Course Description</th>
			<th>Category</th>
			<th>Audience</th>
			<th>Benefits</th>
			<th>Edit Course</th>
			<th>Delete Course</th>
		</tr>
		<%
		int serialNo = 0;
		for (Course course : listOfCourse) {
		%>

		<tr>
			<td><%=course.getCourseId()%></td>
			<td><%=course.getCourseName()%></td>
			<td><%=course.getDescription()%></td>
			<td><%=course.getCategory()%></td>
			<td><%=course.getIntendedAudience()%></td>
			<td><%=course.getBenefits()%></td>
			<td><button class="b">
					<a
						href="<%=request.getContextPath()%>/update_course/<%=course.getCourseId()%>">Update</a>
				</button></td>
				 
			<td><button class= "c" onclick="confirmDelete(<%=course.getCourseId()%>)">Delete</button></td>
				
		</tr>
		<%
		}
		%>
	</table>
	<div class="d">
	<button class="b">
		<a href="<%=request.getContextPath()%>/openIndex">DashBoard</a>
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
function confirmDelete(courseId) {
  var result = confirm("Are you sure you want to delete this course?");
  if (result) {
    // If the user clicks "OK" in the confirmation dialog, proceed with the deletion.
    window.location.href = '<%=request.getContextPath()%>/delete/' + courseId;
  } else {
    // If the user clicks "Cancel," do nothing or handle it as needed.
    // For example, you can close the dialog or keep the user on the same page.
  }
}
</script>
</html>