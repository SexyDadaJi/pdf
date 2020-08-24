<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>request handle</title>
</head>
<body>
<h1>hello enter your password</h1>
<form action="extractData">
<input type="hidden" value=${filepath} name="filepath">
<input type="password" name="password">
<input type="submit">
</form>
</body>
</html>