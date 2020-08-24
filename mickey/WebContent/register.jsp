<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<title>Registration Portal...</title>
	
</head>
<style type="text/css">
	*{box-sizing: border-box;}
	@media screen and (max-width: 600px) 
	{
  	.col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
     }
	}
	.col-70{
		width: 70;
		margin-top:6px;
		padding-left: 20px;
		}
	.col-30{
		width: 30;
		margin-top:6px;
		
	}
	.container{
		padding: 16 px;
		color: white;
		
	}
	label{
			display: inline-block;
			padding-left: 20px;
			padding-top: 10px;
			padding-bottom: 10px; 
			font-size: 20px;
			text-align: left;
			color: white;
		}
	input[type=email],input[type=password]
	{
		width: 50%;
		padding: 10px;
		display: inline-block;
		background-color: #f1f1f1;
		border: none;

		}
	.signin{
		background-color: #000066;
		width: 50%;
		color: dodger-blue;
		margin-top: 10px;
		margin-bottom: 10px;
		padding: 16px 20px;
		
	}

	
	.registerbutton{
		color: white;
		background-color: #000066;
		padding: 10px 20px 20px 10px;
		opacity: 0.9;
		cursor: pointer;
		margin: 18px 0px;
		border: none;
		width: 50%;
		}
	
	a{
		color: dodgerblue;
	}
	.registerbutton:hover{
		opacity: 1;	
	}
	form{
		
		margin-bottom: 50px;
		background-image: url(bill.jpg);
	}
	
	
</style>
<body>

<div class="bg-image"></div> 
<form action="/test/search" ><center>
	<div class="container">
	<h1>Pay Jaldi</h1>
	<h2>Welcome to our Registration Portal !</h2>	
	<p>Please fill in this form to create your account</p>
	</div>
	<div class="col-30">
		<label for="email">Email</label>
	</div>
	<div class="col-70">
		<input type="email" name="email" placeholder="your email please!">
	</div>
	<div class="col-30">	
		<label for="psswd">Password</label>
		</div>
	<div class="col-70">
	
		<input type="Password" name="Password" placeholder="Enter your Password">
	</div>
	<p style="color: white">By creating account you agree to our <a href="#">Terms and Conditions</a>.</p>
	
	<button type="submit" class="registerbutton">Register</button>
	<div class="container signin">
		<p style="color: black"><center>Already have an account ?<a href="signin.html";>Log in</a></center></p>
	</div>
</center></form>
</body>
</html>







	