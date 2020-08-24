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


.fa {
}

.fa:hover {
    opacity: 0.7;
}

.fa-facebook {
  background: #3B5998;
  color: white;
}

.fa-twitter {
  background: #55ACEE;
  color: white;
}

.fa-google {
  background: #dd4b39;
  color: white;
}

.fa-linkedin {
  background: #007bb5;
  color: white;
}

.fa-youtube {
  background: #bb0000;
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
  margin-left: 25px;
  margin-right: 25px;
  
}

footer{
  font-size: 33px;
}

.Compress{
  color: #800000;
  text-align: center;


}
.button {
  padding-top: 15px;
  padding-bottom: 15px;
  background-color: #800000; 
  border: none;
  color: white;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 20px;
  margin: 6px 8px;

 
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
    background-image:  url("https://images.pexels.com/photos/743986/pexels-photo-743986.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500");  
   
    background-position: center;
     background-size: cover;
}

.dropdown:hover .dropdown-content {
  display: block;
}

.inputfile {
  width: 0.1px;
  height: 0.1px;
  opacity: 0;
  overflow: hidden;
  position: absolute;
  z-index: -1;
  background-color: red;
}

.inputfile:focus + label,
.inputfile + label:hover {
    background-color: red;
}

.inputfile:focus + label {
  outline: 1px dotted #000;
  outline: -webkit-focus-ring-color auto 5px;
}
.inputfile + label {
  cursor: pointer; /* "hand" cursor */
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
 

      <title>Remove Page from Pdf</title>
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
    <head>
      <br>
      <br>
      <br>
      <h1 style="text-align: center;">Remove Pages from Your PDF Files</h1>
    </head>
    <center>
      <br>
      <h2 style="font-family: Arial, Helvetica, sans-serif" >You can remove Page by entering page no of a PDF Files. </h2>
      </center>
       
           <article>
            <section>
            <form action="removePage" method="post" enctype="multipart/form-data">
            
             <center>
             <label for="file" class="button" style="float: center;width: 22%;" name="b1" >Select Your PDF Files</label> 
             <input type="file" name="userfile" id="file" class="inputfile" multiple />
              <br>
               <input type="text" placeholder="Enter Page No" class="button" style="float: center;width: 22%;" name="page"><br>
   
               <button type="submit" class="button" style="float: center;width: 22%;">  Submit </button>
              <p>or drop PDFs here</p>
               <a href="https://accounts.google.com/ServiceLogin/signinchooser?service=wise&passive=true&continue=http%3A%2F%2Fdrive.google.com%2F%3Futm_source%3Den&utm_medium=button&utm_campaign=web&utm_content=gotodrive&usp=gtd&ltmpl=drive&flowName=GlifWebSignIn&flowEntry=ServiceLogin"><button type="submit" class="button" style="cursor: pointer;padding: 25px 42px;
  ; border-radius: 50%; background-image: url("https://www.shareicon.net/data/512x512/2016/07/09/118690_drive_512x512.png") title="Select Pdf from google drive">
          <span class="glyphicon glyphicon-folder-close"></span>

          </button></a>
             <a href="https://www.dropbox.com/dropins/login?app_key=xntw8za866940lz&cont=https%3A%2F%2Fwww.dropbox.com%2Fchooser%3Fapp_key%3Dxntw8za866940lz%26extensions%3D.pdf%26folderselect%3Dfalse%26from_login%3DTrue%26iframe%3Dfalse%26link_type%3Ddirect%26multiselect%3Dtrue%26origin%3Dhttps%253A%252F%252Fwww.ilovepdf.com%26trigger%3Djs%26version%3D2&default_view=sign-in&origin=https%3A%2F%2Fwww.ilovepdf.com"><button type="submit" class="button" style="border-radius: 50%; cursor: pointer;padding: 25px 42px;
  ;background-image: url("https://www.shareicon.net/data/512x512/2016/07/09/118690_drive_512x512.png") title="Select Pdf from drop box"><span class="glyphicon glyphicon-folder-open"></span></button></a>
             </center></form> </section>

         </article>
       
<a href="#" style=" padding: 20px;
  font-size: 40px;
  width: 150px;
  text-align: center;
  text-decoration: none;
  margin: 7px 4px;" class="fa fa-facebook"></a>
<a href="#" style=" padding: 20px;
  font-size: 40px;
  width: 150px;
  text-align: center;
  text-decoration: none;
  margin: 7px 4px;" class="fa fa-twitter"></a>
<a href="#" style=" padding: 20px;
  font-size: 40px;
  width: 150px;
  text-align: center;
  text-decoration: none;
  margin: 7px 4px;" class="fa fa-google"></a>
<a href="#" style=" padding: 20px;
  font-size: 40px;
  width: 150px;
  text-align: center;
  text-decoration: none;
  margin: 7px 4px;" class="fa fa-linkedin"></a>
<a href="#" style=" padding: 20px;
  font-size: 40px;
  width: 150px;
  text-align: center;
  text-decoration: none;
  margin: 7px 4px;" class="fa fa-youtube"></a>

    </body>
    </html>