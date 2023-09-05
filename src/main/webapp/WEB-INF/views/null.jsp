<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error Page</title>
</head>
<style>
body {
    background-color: #657f9a;
	min-height: 100vh;
	overflow: hidden;
	text-align: center;
	
}

h1 {
    color: black; /*  color for the heading */
}

p {
    font-size: 18px;
    color: #333; /* Dark gray color for paragraphs */
    margin: 20px;
}
</style>
<body>
<h1>
Oops! There is an Error !
<br><br>
		<%
		String message = (String) request.getAttribute("message");
		if (message != null) {
			out.print(message);
		}
		%>

	</h1>

</body>
</html>