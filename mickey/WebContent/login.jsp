<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<head>
	<title>login_pdf</title>
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
.serif {
  font-family: "Times New Roman", Times, serif;
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
  width: 150px;
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
  width: 120%;
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
  padding: 16px;
  background-color: white;
  width: 120%;
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


</style>

</head>
<body>
<div class="split left">
<a href="signin.jsp">	<button style="float: right;padding-right: 30px;margin-right: 10px;   background-color: #800000;
color: white; text-align: center;height: 30px;padding-left: 20px; ">Create an Account</button></a>
    <br>
<br>
  <h1 style="text-align: center;font-size: 50px;color: black;font-weight: 900;margin-left: 70px;" class="serif">I<i class="fa fa-heart" style="font-size:48px;color:#cc0000"></i>PDF</h1>
<br>
<br>
<br>

  <div class="centered">
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <h2 style="margin-left: 50px" >Login to your Account</h2>
     <form action="login_in" method="post">
   	<div class="container">
  	<i class="fa fa-envelope icon"></i>
    <input type="email" placeholder="Email" name="emailId"><br>
	<i class="fa fa-key icon"></i>
    <input type="password" placeholder=" Password" name="password" >
    <a href="mail.jsp"><p>Forgot your password?</p></a>
  <br>
  <input type="checkbox" name="remember_me">
  <label>Remember me</label>
  <hr>
    </div>
    <br>
    <button type="submit" class="loginbtn">Login</button>
	   <p>Don't have an account yet?</p>
     <p>Create an account</p>
  
    </div></form>
  </div>
</div>

<div class="split right">
  <div class="centered">
    <h1>Welcome back!</h1>
    <p>Please log in using your email and password. If you haven't registered yet, you can register for free.</p>
    <h4 style="color: #cc0000">iLovePDF Desktop Reader</h4>
  </div>
</div>

</body>
</html>