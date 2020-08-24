<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action=protect1 >

<input type="password" name="pass">
<input type="hidden" name="userfile" value="<%= request.getParameter("userfile1") %>" >
${userfile }	
<input type="submit">
</form>
</body>
</html>