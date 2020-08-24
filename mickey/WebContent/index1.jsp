<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <!DOCTYPE html>
    <html lang="en">
    <head>
      <meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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

body{
  background-image: url(https://images.pexels.com/photos/1242348/pexels-photo-1242348.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260),url(https://images.pexels.com/photos/4226873/pexels-photo-4226873.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940);
  background-size: 1500px 300px,1500px 1500px;
  background-repeat: no-repeat,repeat;
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
  background-color: #800000; 
  border: none;
  color: white;
  padding: 15px 32px;
  text-ali0gn: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
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

.dropdown:hover .dropdown-content {
  display: block;
}

@media screen and (max-width: 500px) {
  .navbar a {
    float: none;
    display: block;
  }
}</style>
      <title>Advance Java</title>
      <link rel="stylesheet" href="feature.css">
    </head>
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

    <center>
      <header>
      	<h1 style="padding-top: 10px;">Every tool you need to work with PDFs in one place!</h1>
        <br>
        <p style="font-size:20px ;padding-top: 10px;padding-bottom: 10px">Every tool you need to use PDFs, at your fingertips. All are 100% FREE and easy to use! Merge,
        </p>
        <p style="font-size:30px"> split, compress, convert, rotate, unlock and watermark PDFs with just a few clicks.</p>
      </header>
      </center>
       
           <article>
            <section>
            
      <div class="grid-container" >
       <div class="grid-item">
      <img src="https://icons.iconarchive.com/icons/graphicloads/filetype/256/pdf-icon.png" class="img-circle" alt="Merge" width="120px" height="74px" style="float: left;"> 
      <a href="back.jsp"><button class="button" type="button">Merge</button></a>
      <br>
      <br>
      <br>
      <br>
      <br>
      
      <h2>Merge PDF</h2>
      <br>
      <p>Combine PDFs in the order you want with the easiest PDF merger available.</p>
                </div></div>
      
      <div class="grid-container">
      <div class="grid-item">
      <img src="https://icons.iconarchive.com/icons/graphicloads/filetype/256/pdf-icon.png" class="img-circle" alt="Merge" width="120px" height="74px" style="float: left;"> 
      <a href="split.jsp"><button class="button">Split</button></a>

      <br>
      <br>
      <br>
      <br>
      <br>
      
      <h2>Split PDF</h2>
      <br>
          <p>Separate one page or a whole set for easy conversion into independent PDF files.</p>
               </div>
               </div>


      <div class="grid-container" >
      <div class="grid-item">
      <img src="https://icons.iconarchive.com/icons/graphicloads/filetype/256/pdf-icon.png" class="img-circle" alt="Merge" width="120px" height="74px" style="float: left;"> 
         <a href="compress_pdf.jsp"><button class="button">Compress</button></a>

      <br>
      <br>
      <br>
      <br>
      <br>
      
      <h2>Compress PDF</h2>
      <br>
        <p>Reduce file size while optimizing for maximal PDF quality.</p>
                        </div>
                        </div>          

      
      <div class="grid-container">
      <div class="grid-item">
      <img src="https://icons.iconarchive.com/icons/graphicloads/filetype/256/pdf-icon.png" class="img-circle" alt="Merge" width="120px" height="74px" style="float: left;"> 
     <a href="invalid.jsp"> <button class="button">Word to PDF</button></a>

      <br>
      <br>
      <br>
      <br>
      <br>
      
      <h2>Word to PDF</h2>
      <br>
      <p>Make DOC and DOCX files easy to read by converting them to PDF.</p>
      </div>        
      </div>
      

<div class="grid-container">
      <div class="grid-item">
      <img src="https://icons.iconarchive.com/icons/graphicloads/filetype/256/pdf-icon.png" class="img-circle" alt="Merge" width="120px" height="74px" style="float: left;"> 
      <a href="second.jsp"><button class="button">PDF to JPG</button></a>

      <br>
      <br>
      <br>
      <br>
      <br>
      
         <h2>PDF to JPG</h2>
      <br>
      <p>Convert each PDF page into a JPG or extract all images contained in a PDF.</p>
              </div>
            </div>
      <div class="grid-container" >
      <div class="grid-item">
      <img src="https://icons.iconarchive.com/icons/graphicloads/filetype/256/pdf-icon.png" class="img-circle" alt="Merge" width="120px" height="74px" style="float: left;"> 
      <a href="one.jsp"><button class="button">JPG to PDF</button></a>
      <br>
      <br>
      <br>
      <br>
      <br>
      
      <h2>JPG to PDF</h2>
      <br>
      <p>Convert JPG images to PDF in seconds. Easily adjust orientation and margins.</p>
             </div>
      		</div>

      <div class="grid-container" >
      <div class="grid-item">
      <img src="https://icons.iconarchive.com/icons/graphicloads/filetype/256/pdf-icon.png" class="img-circle" alt="Merge" width="120px" height="74px" style="float: left;"> 
      <a href="removePage.jsp"><button class="button">Remove Page</button></a>
      <br>
      <br>
      <br>
      <br>
      <br>
      <h2>Remove PDF</h2>
      <br>
      <p>Edit your PDF  by removing page.Enter page no you want to remove.</p>
                </div>
                </div>

      <div class="grid-container" >
      <div class="Compress">
      <img src="https://icons.iconarchive.com/icons/graphicloads/filetype/256/pdf-icon.png" class="img-circle" alt="Merge" width="120px" height="74px" style="float: left;"> 
     <a href="watermark.jsp"> <button class="button">Watermark</button></a>
      <br>
      <br>
      <br>
      <br>
      <br>
      
      <h2>Watermark</h2>
      <br>
      <p>Stamp an image or text over your PDF in seconds. Choose the typography, transparency and position.</p>          
      </div>
      </div>

      <div class="grid-container" >
      <div class="Compress">
      <img src="https://icons.iconarchive.com/icons/graphicloads/filetype/256/pdf-icon.png" class="img-circle" alt="Merge" width="120px" height="74px" style="float: left;"> 
      <a href="invalid.jsp"><button class="button">Page Numbers</button></a>
      <br>
      <br>
      <br>
      <br>
      <br>
      <h2>Page Numbers</h2>
      <br>
      <p>Add page numbers into PDFs with ease. Choose your positions, dimensions, typography.</p>
      </div>
      </div>
      
      <div class="grid-container">
      <div class="Compress">
      <img src="https://icons.iconarchive.com/icons/graphicloads/filetype/256/pdf-icon.png" class="img-circle" alt="Merge" width="120px" height="74px" style="float: left;"> 
       <a href="protect_1.jsp"><button class="button">Protect PDF</button></a>
      <br>
      <br>
      <br>
      <br>
      <br>
      <h2>Protect PDF</h2>
      <br>
       <p>Protect PDF files with a password. Encrypt PDF documents to prevent unauthorized access. </p></div></div>
      <div class="grid-container" >
      <div class="Compress">
      <img src="https://icons.iconarchive.com/icons/graphicloads/filetype/256/pdf-icon.png" class="img-circle" alt="Merge" width="120px" height="74px" style="float: left;"> 
      <a href="pdf_word.jsp"><button class="button">PDF to Word</button></a>
      <br>
      <br>
      <br>
      <br>
      <br>
      <h2>PDF to Word</h2>
      <br>
      <p>Easily convert your PDF files into easy to edit DOC and DOCX documents. The converted WORD document is almost 100% accurate.</p>
                      </div>
                    </div>
      <div class="grid-container" >
      <div class="Compress">
      <img src="https://icons.iconarchive.com/icons/graphicloads/filetype/256/pdf-icon.png" class="img-circle" alt="Merge" width="120px" height="74px" style="float: left;"> 
      <a href="invalid.jsp"><button class="button">Repair PDF</button></a>
      <br>
      <br>
      <br>
      <br>
      <br>
      <h2>Repair PDF</h2>
      <br>
      <p>Repair a damaged PDF and recover data from corrupt PDF. Fix PDF files with our Repair tool.</p>
      </div>
      </div>
      <div class="grid-container">
      <div class="Compress">
      <img src="https://icons.iconarchive.com/icons/graphicloads/filetype/256/pdf-icon.png" class="img-circle" alt="Merge" width="120px" height="74px" style="float: left;"> 
      <a href="invalid.jsp"><button class="button">HTML to PDF</button></a>
      <br>
      <br>
      <br>
      <br>
      <br>
      <h2>HTML to PDF</h2>
      <br>
      <p>Convert webpages in HTML to PDF. Copy and paste the URL of the page you want and convert it to PDF with a click.</p>
                </div>
              </div>

      <div class="grid-container" >
      <div class="Compress">
      <img src="https://icons.iconarchive.com/icons/graphicloads/filetype/256/pdf-icon.png" class="img-circle" alt="Merge" width="120px" height="74px" style="float: left;"> 
      <a href="unlock.jsp">  <button class="button">Unlock PDF</button></a>
      <br>
      <br>
      <br>
      <br>
      <br>
      <h2>Unlock PDF</h2>
      <br>
        <p>Remove PDF password security, giving you the freedom to use your PDFs as you want.</p>
          </div>          </div>
      <div class="grid-container">
      <div class="Compress">
      <img src="https://icons.iconarchive.com/icons/graphicloads/filetype/256/pdf-icon.png" class="img-circle" alt="Merge" width="120px" height="74px" style="float: left;"> 
      <a href="invalid.jsp"><button class="button">Powerpoint to PDF</button></a>
      <br>
      <br>
      <br>
      <br>
      <br>
      <h2>Powerpoint to PDF</h2>
      <br>
      <p>Make PPT and PPTX slideshows easy to view by converting them to PDF.</p>
      </div>         
      </div>

      </section>
         </article>

        <center><footer>Thankyou</footer></center>

    </body>
    </html>