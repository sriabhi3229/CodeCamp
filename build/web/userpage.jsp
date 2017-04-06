<%-- 
    Document   : userpage
    Created on : 4 Apr, 2017, 6:00:05 PM
    Author     : Arpita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE HTML>
<html>

<head>
  <title>userpage</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="style/style.css" />
  <style>


#m
{
	font-size:25px;
	margin-top:20px;
}

#main h1{
	font-size:40px;
	margin-left:400px;
}
#fors{margin-left:500px;
	height:600px;
	width:600px;
	//background-color:green;
}
#lin{
    margin-left:1200px;
     font-size:20px;
}
</style>
</head>

<body>
  <div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
          <h1><a href="simple">CODE<span class="logo_colour">CAMP</span><img src="logo.png" width="50" height="50"></a></h1>
          <h2>Teaching the world how to code.</h2>
        </div>
      </div>
      <div id="menubar">
        <ul id="menu">
          <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
          <li class="selected"><a href="index.html">Home</a></li>
          <li><a href="code_editor.html">Practise</a></li>
          <li><a href="login.html">Login</a></li>
          <li><a href="register.html">Register</a></li>
          <li><a href="contact.html">Contact Us</a></li>
        </ul>
      </div>
    </div>
	
	
	



<div id="main">
<h1>USER PAGE</h1>
<a id="lin" href="LogoutSessionServlet">Logout</a></div>
      <div id="fors"> 
          <table>
              <tr><td><a href="profile.jsp"><img src="image/prof.png" height="200" width="200"></a></td>
                  <td><a href="register.html"><img src="image/pract.png" height="200" width="200"></a></td></tr>
              <tr><td><a href="code_editor.html"><img src="image/download.jpg" height="180" width="180"></a></td>
                  <td><a href="files.jsp"><img src="image/file.png" height="200" width="200"></a></td></tr>
        	
          </table>

      </div>
	
	
	
	
	
	
	
    
    <div id="content_footer"></div>
    <div id="footer">
      Copyright &copy;
    </div>
  </div>
</body>
</html>

