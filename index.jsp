<%-- 
    Document   : index
    Created on : Apr 21, 2018, 10:00:32 AM
    Author     : gigisan
--%>
<%@page import="java.sql.*"%>

<%Class.forName("com.mysql.jdbc.Driver");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css" type="text/css">
        <title>Create New Account</title>
    </head>
    <body>
        <div id="wrapper">
            <div id="header">
                <div id="site_title">
                    <h1><a href="index.jsp">Espers</a></h1>
                </div>
            </div>
            
            <div id="main">
                <div class="cleaner h30"></div>
                <h1 class="center">Create an account</h1>
                <div class="cleaner h20"></div>
                  
                <div id="contact_form"> 
                   <form name="OurForm" action="Registrationcontroller" method="POST">
                       <input type="text" name="first" size="50" class="input_field" placeholder="First Name" required />
                       <div class="cleaner h10"></div>
                       
                       <input type="text" name="last" size="50" class="input_field" placeholder="Last Name" required />
                       <div class="cleaner h10"></div>
                       
                       <input type="email" name="mail" size="50" class="input_field" placeholder="Email" required />
                       <div class="cleaner h10"></div>
                      
                       <div class="styled-select" required>
                            <select name="gender">
                                <option class="placeholder" value="M">Male</option>
                                <option value="F">Female</option>
                            <select>
                       </div>
                       <div class="cleaner h10"></div>
                       
                       <input type="text" name="dob" value="yyyy-mm-dd" size="10" class="required input_field" placeholder="" />
                       <div class="cleaner h10"></div>
                       
                       <input type="text" name="iban" size="50" class="required input_field" placeholder="IBAN" />
                       <div class="cleaner h10"></div>
                       
                       <input type="password" name="pass" size="50" class="input_field" placeholder="Password" required />
                       <div class="cleaner h10"></div>
                       
                       <input type="password" name="repass" size="50" class="input_field" placeholder="Repeat Password" required />
                       <div class="cleaner h10"></div>
                       
                       <input type="reset" value="Clear" name="clear" class="submit_btn float_l" />
                       <input type="submit" value="Submit" name="Submit" class="submit_btn float_r" />
                   </form>
                </div>
                
                <div class="cleaner"></div>
                <div class="cleaner h50"></div>
                <form action="LogIn.jsp">
                       <input type="submit" value="Already have an account?" class="button" />
                </form>
                <div class="cleaner h50"></div>
            </div>
            
            <div id="footer">
	       <a href="LogIn.jsp">Home</a> |  
               <a href="#">FAQs</a> | 
               <a href="#">Contact Us</a>
               <br /> Copyright © 2024 
               <a href="#"><strong>Espers</strong></a> 
            </div> 
        </div>
    </body>
</html>
