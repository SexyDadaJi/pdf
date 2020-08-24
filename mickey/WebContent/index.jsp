<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mickeyy here:)!</title>
</head>
<body>
<h1>Hello I am Mickey ! </h1>
<hr>
<h1>Welcome!</h1>
<%-- <!-- <form action="/mickey/ui">
<input type="text" name="userName">
<input type="password" name="passwd">
<input type="email" name="emailId">
<input type="submit">
</form>
 --> ${abc }
 --%>
 
 <form action="mergePdf" method="post" enctype="multipart/form-data">
 <input type="file" name=f>
 <input type="file" name=f>
 <input type="text" name="name">
 <input type="submit">

 </form>
 </body>
</html>