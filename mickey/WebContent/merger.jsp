<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html>
    <html lang="en">
    <head>
      <meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 
<style type="text/css">*{
  margin: 0 auto;
  
}
.vl {
  border-right:  1px solid #800000;
  width: 300%;
  height: 500px
}

.grid-container{
  display: grid;
  grid-template-columns: auto auto auto auto;
  grid-template-rows: 120px 120px;
  grid-gap: 5px;
  padding: 20px;
  width: 29%;
  float: left;
  border: ridge;
  background-color: white;

}


.grid-item {
  text-align: center;
}


header{
  
    font-family: Arial, Helvetica, sans-serif;
    color: white;
}

.topnav {
  overflow: hidden;
  background-color: #333;
  

}

.topnav a {
  float: left;
  color: #f2f2f2;

  text-align: center;
  padding: 24px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover, .dropdown:hover .dropbtn, .dropbtn:focus {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #800000;
  color: white;
}

li{
  display: inline-block;
  padding: 20px;
  
}

.nav1{
  border:1px solid black;
  margin-left: 325px;
}

section{
  position: relative;
  height:500px;
  margin-top: 20px;
  margin-left: 35px;
  margin-right: 35px;
  display: table;
  clear: both;
  background-color: #f1f1f1;
  float: right;
  padding-right: 37px;
  padding-left: 37px;

  
}

footer{
  font-size: 33px;
}

.Compress{
  color: #800000;
  text-align: center;


}

.button {
  background-color: #800000; 
  border: none;
  color: white;
  padding: 25px 42px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 20px;
  margin: 10px 6px;
  cursor: pointer;
  float: right;
}

.dropdown {
  float: left;
  overflow: hidden;
  margin-top: 12px;
}

.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 12px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: #ddd;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}
body{
    background-image: url("https://images.pexels.com/photos/743986/pexels-photo-743986.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940");  
    background-position: center;
     background-size: cover;
}

.dropdown:hover .dropdown-content {
  display: block;
}

.column {
  padding: 30px;
 
padding-left: 50px;
padding-right: 50px;
border-right:  1px solid #800000;
  width: 30%;
}

.column1{
padding: 30px; 
padding-left: 50px;
padding-right: 50px;
width: 30%;
float: left;
text-align: center;
}

@media screen and (max-width: 500px) {
  .navbar a {
    float: none;
    display: block;
  }
}</style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

      <title>Merge Pdf</title>
    <body>
    	<div class="topnav">
		  <a  href="back.jsp">MERGE PDF</a>
	  	  <a href="split.jsp">SPLIT PDF</a>
	  	  <a href="compress_pdf.jsp">COMPRESS PDF</a>
	  	   <div class="dropdown">
            <button class="dropbtn"> CONVERT FROM PDF<i class="fa fa-caret-down"></i>
            </button>
            <div class="dropdown-content" >
                              <a  href="second.jsp"> PDF to JPG</a>
                            <a  href="pdf_word"> PDF to WORD</a>
                            <a  href="invalid.jsp"> PDF to POWERPOINT</a>
                            <a  href="invalid.jsp"> PDF to EXCEL</a>
                            <a  href="invalid.jsp"> PDF to PDF/A</a>
                    </div>
            </div>

      <div class="dropdown">
	  		<button class="dropbtn" > CONVERT TO PDF<i class="fa fa-caret-down"></i>
	  		</button>
	  		<div class="dropdown-content" >
	  		
                   <a  href="one.jsp">JPG to PDF</a>
                            <a  href="invalid.jsp">WORD to PDF</a>
                            <a  href="invalid.jsp">POWERPOINT to PDF</a>
                            <a  href="invalid.jsp">EXCEL to PDF</a>
                            <a  href="invalid.jsp"> HTML to PDF</a>
           </div>
        </div>
                    	  	
		<a href="#about">ALL PDF TOOLS</a>
	  <a style="float: right" href="login.jsp" >LOG IN</a>
		<a class="active" style="float: right" href="signin.jsp" >SIGN IN</a>
	  <i class="fa fa-cloud-download" style="float: right;padding-right: 10px;padding-top: 10px;  font-size:48px;color:#800000" ></i>
  	 </div>
    <head style="text-align: center;">
      <br>
      <br>
      <br>
      <table width = "100%" border = "0" style="margin-left: 10px;">
         <tr valign = "top">
            <td  width = "20" style="background-color: #f1f1f1;text-align: center;">
      <h1 style="float: center;text-align: center;color: #800000">Merge PDF Files</h1>
    </head>
        <br >
      <h2 style="font-family: Arial, Helvetica, sans-serif ;color: #808080">Please, select more PDF files by clicking again on Select PDF files€™.
€™</h2></td>
      </center></div></div>
           <article>
              <aside>  

   <td   width = "250" >
   
    <c:forEach items="${filePath}"var="file">
  
    <iframe src=${file } height="200" width="100"></iframe>
    </c:forEach>  
    
   </td>         
 
               <td  width = "150" height = "20">        
               <section> <button type="submit" class="button" style="float: right;border-radius: 50%;">  <span class="glyphicon glyphicon-plus"></span></button>
            <br>
                   <a href="https://accounts.google.com/ServiceLogin/signinchooser?service=wise&passive=true&continue=http%3A%2F%2Fdrive.google.com%2F%3Futm_source%3Den&utm_medium=button&utm_campaign=web&utm_content=gotodrive&usp=gtd&ltmpl=drive&flowName=GlifWebSignIn&flowEntry=ServiceLogin"><button type="submit" class="button" style="border-radius: 50%; background-image: url("https://www.shareicon.net/data/512x512/2016/07/09/118690_drive_512x512.png") title="Select Pdf from google drive">
          <span class="glyphicon glyphicon-folder-close"></span>
          </button></a>
          <br>

           <a href="https://www.dropbox.com/dropins/login?app_key=xntw8za866940lz&cont=https%3A%2F%2Fwww.dropbox.com%2Fchooser%3Fapp_key%3Dxntw8za866940lz%26extensions%3D.pdf%26folderselect%3Dfalse%26from_login%3DTrue%26iframe%3Dfalse%26link_type%3Ddirect%26multiselect%3Dtrue%26origin%3Dhttps%253A%252F%252Fwww.ilovepdf.com%26trigger%3Djs%26version%3D2&default_view=sign-in&origin=https%3A%2F%2Fwww.ilovepdf.com"><button type="submit" class="button" style="border-radius: 50%; background-image: url("https://www.shareicon.net/data/512x512/2016/07/09/118690_drive_512x512.png") title="Select Pdf from drop box"><span class="glyphicon glyphicon-folder-open"></span></button></a></td>
           
          
          </aside></article></tr></table>
         </article>

    </body>
    </html>