<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<head>
  <title>user_mail</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <style>
body {
  font-family: Arial;
  color: white;
}

.split {
  height: 100%;
  width: 50%;
  position: fixed;
  z-index: 1;
  top: 0;
  overflow-x: hidden;
  padding-top: 20px;
}

.left {
  left: 0;
  background-color: #e6e6e6;
  font-family: Arial, Helvetica, sans-serif;

}

.right {
  right: 0;
  background-color: #111;
   font-family: Arial, Helvetica, sans-serif;

}

.centered {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  text-align: center;
  color: #a6a6a6;
}

.centered img {
  width: 200px;
  border-radius: 50%;
   font-family: Arial, Helvetica, sans-serif;

}

hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

.loginbtn {
  background-color: #800000;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 50%;
  opacity: 0.9;
}

.loginbtn:hover {
  opacity: 1;
}

a {
  color: dodgerblue;
}

.login {
  background-color: #f1f1f1;
  text-align: center;
  padding-left: 20px;
}

.container {
  padding: 15px;
  background-color: white;
  width: 110%;
  border-left-width: 20px;
}

input[type=text], input[type=password], input[type=email] {
  width: 80%;
  padding: 10px;
  margin: 5px 0 12px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

 input[type=password]:focus,input[type=email]:focus {
  background-color: #ddd;
  outline: none;
}

* {
  box-sizing: border-box;
}

.serif {
  font-family: "Times New Roman", Times, serif;
}

</style>

</head>
<body>
<div class="split left"><a href="login.jsp">    <button style="float: right;padding-right: 30px;margin-right: 10px;   background-color: #800000;
color: white; text-align: center;height: 30px;padding-left: 20px; ">Login</button></a>
<br>
<br>
  <h1 style="text-align: center;font-size: 50px;color: black;font-weight: bold;" class="serif">I<i class="fa fa-heart" style="font-size:48px;color:#cc0000"></i>PDF</h1>
<br>
<br>
<br>
  <div class="centered">
    <br>
    <br>
    <h2 style="color: red">Reset Your Password</h2>
    <p style="margin-left: 10px">Enter Your Email and check your inbox for some instructions. Please also check your spam folder.</p>
    <form action="x" method="post">
      <div class="container">
        <i class="fa fa-envelope" style="font-size:25px;color:#cc0000"></i>

    <input type="email" placeholder="Email" name="emailId" style="margin-left: 5px" ><br>
  <br>
  <hr>
    </div>
    <br>
    <button type="submit" class="loginbtn">Send</button>
    </div></form>
  </div>
</div>

<div class="split right">
  <div class="centered">
    <h1>Lost password?</h1>
    <p>No worries. Let's get you a new one quickly! </p>
    <h4 style="color: #cc0000">iLovePDF Desktop Reader</h4>
  </div>
</div>

</body>
</html>