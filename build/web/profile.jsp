<%-- 
    Document   : profile
    Created on : 4 Apr, 2017, 6:11:30 PM
    Author     : Arpita
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<!DOCTYPE HTML>
<html>

<head>
  <title>profile</title>
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
<h1>USER PROFILE</h1></div>
<div id="fors">
    
     <table>
        
         <% ;  
        if(session.getAttribute("uname")!=null){  
        String value=(String)session.getAttribute("uname");
        System.out.print(value);
          Connection con;
     Statement stmt;
     ResultSet rst;
     PreparedStatement pstmt;
    
        
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/codecamp","root","root");
        stmt=con.createStatement();
                
                try{
                    String sql ="SELECT name,email,college,gender,linked,github,contact,image FROM register where username='"+value+"'";

rst = stmt.executeQuery(sql);
while(rst.next()){
                %>
                
                <tr><td id="m">Profile Picture:</td><td><img src="<%=rst.getString("image")%>" height="100" width="100"></td></tr>
                    <tr><td id="m">Name:</td><td id="m"><%=rst.getString("name")%></td>
                    </tr>
                    <tr><td id="m">Email:</td><td id="m"><%=rst.getString("email")%></td></tr>
                    <tr><td id="m">College:</td><td id="m"><%=rst.getString("college")%></td></tr>
                    <tr><td id="m">Gender:</td><td id="m"><%=rst.getString("gender")%></td></tr>
                    <tr><td id="m">LinkedIn Id:</td><td id="m"><%=rst.getString("linked")%></td></tr>
                    <tr><td id="m">GitHub Id</td><td id="m"><%=rst.getString("github")%></td></tr>
                    <tr><td id="m">Contact:</td><td id="m"><%=rst.getString("contact")%></td></tr>
                   
                    <% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
 </table>
                    
                   
<!--<tr><td id="m"></td><td><input type="hidden" name="hide" id="m"/></td></tr>-->

</div>
       <% }
        else{  
            out.print("Please login first!");  
            response.sendRedirect("login.jsp");
            request.getRequestDispatcher("login.jsp").include(request, response);  
        }  
           %>         
                    
                
               
	
	
	
	
	
	
	
    
    <div id="content_footer"></div>
    <div id="footer">
      Copyright &copy; 2017 
    </div>
  </div>
</body>
</html>
