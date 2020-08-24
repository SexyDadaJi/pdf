<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<head>
	<title>signin_pdf</title>
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
}

.right {
  right: 0;
  background-color: #111;
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
}

hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

.registerbtn {
  background-color: #800000;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

a {
  color: dodgerblue;
}

.signin {
  background-color: #f1f1f1;
  text-align: center;
}

.container {
  padding: 16px;
  background-color: white;
}

.serif {
  font-family: "Times New Roman", Times, serif;
}
input[type=text], input[type=password], input[type=email] {
  width: 70%;
  padding: 10px;
  margin: 5px 0 12px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus,input[type=email]:focus {
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
	<a href="login.jsp"><button style="float: right;padding-right: 30px;margin-right: 10px;   background-color: #800000;
color: white; text-align: center;height: 30px;padding-left: 20px; ">Login</button></a>
 <h1 style="text-align: center;font-size: 40px;color: black;font-weight: 900;margin-left: 90px;" class="serif">I<i class="fa fa-heart" style="font-size:38px;color:#cc0000"></i>PDF</h1>
<br>
<br>
<br>

  <div class="centered">
    <br><br><br>
    <h2>Create new account</h2>
    <form action="sign_in" method="post" >
     	<div class="container">
    		<i class="fa fa-user icon"></i>
    <input type="text" placeholder="Name" name="name_sign" ><br>
	<i class="fa fa-envelope icon"></i>
    <input type="email" placeholder="Email" name="email_sign"><br>
	<i class="fa fa-key icon"></i>
    <input type="password" placeholder=" Password" name="password_sign" >
  <br>
  <hr>
    </div>
  
  <div class="container signin">
    <input type="checkbox" id="terms_cond" name="terma and condition">
    <label for="terms_cond">I accept Terms & Conditions and Legal & Privacy</label>
    <br>
    <br>
    <input type="checkbox" id="updates" name="terms and condition">
    <label for="updates">I want to receive important updates from ilovepdf.com </label><br>
    <button type="submit" class="registerbtn">Register</button>
	   <p>Already have an account? <a href="login.jsp">Log in</a>.</p>
  
    </div></form>
  </div>
</div>

<div class="split right">
  <div class="centered">
    <h2>Need more powerful tools?</h2>
    <h4 style="color: #cc0000">Tools included</h4>
    <br>
    <hr>
    <h4 style="color: #cc0000">Unlimited tasks</h4>
    <br>
    <hr>
    <h4 style="color: #cc0000">More files per task</h4>
    <br>
    <hr>
    <h4 style="color: #cc0000">Registered access to: ilovepdf.com, iloveimg.com and iLovePDF Mobile APP</h4>
    <br>
    <hr>
    <h4 style="color: #cc0000">iLovePDF Desktop Reader</h4>
  </div>
</div>

</body>
</html>