<%-- 
    Document   : files
    Created on : 5 Apr, 2017, 8:30:02 PM
    Author     : Arpita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<!DOCTYPE HTML>
<html>

<head>
  <title>files</title>
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
	width:500px;
	//background-color:green;
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
<h1>FILES</h1></div>
<div id="fors">
    
     <table>
        
		<% String value=(String)session.getAttribute("uname");
 
                Connection con;
     Statement stmt;
     ResultSet rst;
     PreparedStatement pstmt;
    
        
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/codecamp","root","root");
        stmt=con.createStatement();
                %>
                <% try{
                    
                    String sql ="SELECT distinct filename FROM files where uname='"+value+"'";

rst = stmt.executeQuery(sql);

while(rst.next()){
  
    %>
                
    <ol>
        <li id="m"> <%=rst.getString("filename")%></li>
    </ol>
    
                    <% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
                  </table>
                    
                   
<!--<tr><td id="m"></td><td><input type="hidden" name="hide" id="m"/></td></tr>-->

</div>
	
	
	
	
	
	
	
    
    <div id="content_footer"></div>
    <div id="footer">
      Copyright &copy; 2017 
    </div>
  </div>
</body>
</html>
