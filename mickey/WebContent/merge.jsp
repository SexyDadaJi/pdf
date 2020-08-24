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
<form action="mergePdf" method="post" enctype="multipart/form-data>
<input type="hidden" value=${filepath} name="filepath">
<input type="file" name="userfile">
<input type="file" name="userfile">
<input type="submit">
</form>
</body>
</html>